import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../core/theme/app_colors.dart';
import '../../data/models/fault.dart';
import '../../providers/app_providers.dart';

class FaultsScreen extends ConsumerStatefulWidget {
  const FaultsScreen({super.key});

  @override
  ConsumerState<FaultsScreen> createState() => _FaultsScreenState();
}

class _FaultsScreenState extends ConsumerState<FaultsScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(faultsProvider.notifier).syncFaults();
    });
  }

  @override
  Widget build(BuildContext context) {
    final faultsAsync = ref.watch(faultsProvider);
    final statusAsync = ref.watch(driveStatusProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Fault Log'),
        actions: [
          IconButton(
            icon: const Icon(Icons.sync_rounded),
            tooltip: 'Sync from NodeMCU',
            onPressed: () =>
                ref.read(faultsProvider.notifier).syncFaults(),
          ),
        ],
      ),
      body: Column(
        children: [
          // Active fault banner
          statusAsync.whenOrNull(
                data: (status) {
                  if (!status.hasFault) return const SizedBox.shrink();
                  return Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(16),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.error.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: AppColors.error.withValues(alpha: 0.3),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: AppColors.error.withValues(alpha: 0.2),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.warning_rounded,
                              color: AppColors.error, size: 22),
                        ),
                        const SizedBox(width: 14),
                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'ACTIVE FAULT',
                                style: TextStyle(
                                  color: AppColors.error,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.5,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Code ${status.faultCode}: ${Fault.descriptionForCode(status.faultCode)}',
                                style: const TextStyle(
                                  color: AppColors.textSecondary,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ) ??
              const SizedBox.shrink(),

          // Fault history list
          Expanded(
            child: faultsAsync.when(
              loading: () => const Center(
                child: CircularProgressIndicator(
                    color: AppColors.primary),
              ),
              error: (e, _) => Center(
                child: Text('Error: $e',
                    style: const TextStyle(
                        color: AppColors.textSecondary)),
              ),
              data: (faults) {
                if (faults.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.verified_rounded,
                            color: AppColors.success.withValues(alpha: 0.5),
                            size: 56),
                        const SizedBox(height: 16),
                        const Text(
                          'No faults recorded',
                          style: TextStyle(
                            color: AppColors.textSecondary,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          'The drive has been running without issues',
                          style: TextStyle(
                            color: AppColors.textTertiary,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  );
                }

                return ListView.separated(
                  padding: const EdgeInsets.all(16),
                  itemCount: faults.length,
                  separatorBuilder: (_, _) =>
                      const SizedBox(height: 8),
                  itemBuilder: (context, index) {
                    final fault = faults[index];
                    return _buildFaultTile(fault);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFaultTile(Fault fault) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surfaceVariant,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border, width: 0.5),
      ),
      child: Row(
        children: [
          // Fault code badge
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: AppColors.error.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                '${fault.faultCode}',
                style: const TextStyle(
                  color: AppColors.error,
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          const SizedBox(width: 14),
          // Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fault.description,
                  style: const TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  DateFormat('yyyy-MM-dd HH:mm:ss')
                      .format(fault.timestamp),
                  style: const TextStyle(
                    color: AppColors.textTertiary,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
