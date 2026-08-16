import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/theme/app_colors.dart';
import '../../providers/app_providers.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  int _logInterval = 10;
  bool _autoSync = true;

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      final settings = ref.read(settingsProvider.notifier);
      await settings.loadConfig();
      if (mounted) {
        setState(() {
          _logInterval = settings.logInterval;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // NodeMCU Configuration
          _sectionHeader('NodeMCU Configuration'),
          const SizedBox(height: 12),
          _buildSettingCard(
            icon: Icons.timer_outlined,
            title: 'Data Log Interval',
            subtitle: 'How often the NodeMCU samples data',
            trailing: DropdownButton<int>(
              value: _logInterval,
              dropdownColor: AppColors.surfaceElevated,
              style: const TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.w600,
              ),
              underline: const SizedBox(),
              items: [1, 5, 10, 30, 60].map((s) {
                return DropdownMenuItem(
                  value: s,
                  child: Text(s < 60 ? '${s}s' : '${s ~/ 60}m'),
                );
              }).toList(),
              onChanged: (value) async {
                if (value != null) {
                  setState(() => _logInterval = value);
                  final messenger = ScaffoldMessenger.of(context);
                  final success = await ref
                      .read(settingsProvider.notifier)
                      .updateConfig({'log_interval_seconds': value});
                  if (mounted) {
                    messenger.showSnackBar(
                      SnackBar(
                        content: Text(success
                            ? 'Log interval updated'
                            : 'Failed to update'),
                      ),
                    );
                  }
                }
              },
            ),
          ),
          const SizedBox(height: 24),

          // App Settings
          _sectionHeader('App Settings'),
          const SizedBox(height: 12),
          _buildSettingCard(
            icon: Icons.sync_rounded,
            title: 'Auto Sync on Connect',
            subtitle: 'Automatically fetch data when connected',
            trailing: Switch(
              value: _autoSync,
              onChanged: (v) => setState(() => _autoSync = v),
              activeTrackColor: AppColors.primary,
            ),
          ),
          const SizedBox(height: 24),

          // Data Management
          _sectionHeader('Data Management'),
          const SizedBox(height: 12),
          _buildActionCard(
            icon: Icons.delete_sweep_rounded,
            title: 'Clear Local History',
            subtitle: 'Remove all locally stored data',
            color: AppColors.warning,
            onTap: () => _confirmClearData(context),
          ),
          const SizedBox(height: 24),

          // Connection
          _sectionHeader('Connection'),
          const SizedBox(height: 12),
          _buildActionCard(
            icon: Icons.logout_rounded,
            title: 'Disconnect',
            subtitle: 'Disconnect from NodeMCU',
            color: AppColors.error,
            onTap: () {
              ref.read(connectionProvider.notifier).disconnect();
              ref.read(driveStatusProvider.notifier).stopPolling();
              context.go('/');
            },
          ),
          const SizedBox(height: 32),

          // About
          _sectionHeader('About'),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.surfaceVariant,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: AppColors.border, width: 0.5),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withValues(alpha: 0.1),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.settings_remote_rounded,
                      color: AppColors.primary, size: 28),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Drive Controller',
                  style: TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'v0.1.0',
                  style: TextStyle(
                    color: AppColors.textTertiary,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Goodrive200A VFD IoT Controller',
                  style: TextStyle(
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
  }

  Widget _sectionHeader(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: AppColors.textPrimary,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildSettingCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Widget trailing,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.surfaceVariant,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border, width: 0.5),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: AppColors.primary, size: 20),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    )),
                Text(subtitle,
                    style: const TextStyle(
                      color: AppColors.textTertiary,
                      fontSize: 12,
                    )),
              ],
            ),
          ),
          trailing,
        ],
      ),
    );
  }

  Widget _buildActionCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(14),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            color: AppColors.surfaceVariant,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: AppColors.border, width: 0.5),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(icon, color: color, size: 20),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: TextStyle(
                          color: color,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        )),
                    Text(subtitle,
                        style: const TextStyle(
                          color: AppColors.textTertiary,
                          fontSize: 12,
                        )),
                  ],
                ),
              ),
              Icon(Icons.chevron_right_rounded, color: color, size: 22),
            ],
          ),
        ),
      ),
    );
  }

  void _confirmClearData(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Clear Local Data'),
        content: const Text(
          'This will remove all locally stored logs and fault history. '
          'Data on the NodeMCU will not be affected.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () async {
              final messenger = ScaffoldMessenger.of(context);
              Navigator.pop(context);
              await ref
                  .read(databaseServiceProvider)
                  .clearAll();
              if (mounted) {
                messenger.showSnackBar(
                  const SnackBar(content: Text('Local data cleared')),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.warning,
            ),
            child: const Text('Clear Data'),
          ),
        ],
      ),
    );
  }
}
