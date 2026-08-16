import 'package:flutter/material.dart' hide ConnectionState;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/theme/app_colors.dart';
import '../../providers/app_providers.dart'
    show connectionProvider, ConnectionState;
import '../../widgets/status_indicator.dart';

class ConnectionScreen extends ConsumerStatefulWidget {
  const ConnectionScreen({super.key});

  @override
  ConsumerState<ConnectionScreen> createState() => _ConnectionScreenState();
}

class _ConnectionScreenState extends ConsumerState<ConnectionScreen>
    with SingleTickerProviderStateMixin {
  final _hostController = TextEditingController(text: '192.168.4.1');
  final _pinController = TextEditingController();
  bool _obscurePin = true;
  bool _mockMode = true; // Default to mock mode during development

  late AnimationController _fadeController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeOut,
    );
    _fadeController.forward();
  }

  @override
  void dispose() {
    _hostController.dispose();
    _pinController.dispose();
    _fadeController.dispose();
    super.dispose();
  }

  Future<void> _connect() async {
    if (_pinController.text.isEmpty) {
      _showSnackBar('Please enter PIN');
      return;
    }

    final notifier = ref.read(connectionProvider.notifier);
    final success = await notifier.connect(
      _hostController.text.trim(),
      _pinController.text.trim(),
      mockMode: _mockMode,
    );

    if (success && mounted) {
      context.go('/dashboard');
    } else if (mounted) {
      final errorMsg = notifier.errorMessage ?? 'Connection failed';
      _showSnackBar(errorMsg);
    }
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final connectionState = ref.watch(connectionProvider);
    final isConnecting = connectionState == ConnectionState.connecting;

    return Scaffold(
      body: SafeArea(
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo / App Icon
                  Container(
                    width: 88,
                    height: 88,
                    decoration: BoxDecoration(
                      color: AppColors.primary.withValues(alpha: 0.1),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.primary.withValues(alpha: 0.3),
                        width: 2,
                      ),
                    ),
                    child: const Icon(
                      Icons.settings_remote_rounded,
                      size: 40,
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Title
                  const Text(
                    'Drive Controller',
                    style: TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.5,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Goodrive200A VFD Monitor & Control',
                    style: TextStyle(
                      color: AppColors.textTertiary,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 48),

                  // Connection Card
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: AppColors.surfaceVariant,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: AppColors.border,
                        width: 0.5,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Section header
                        Row(
                          children: [
                            const Icon(
                              Icons.wifi_rounded,
                              color: AppColors.textSecondary,
                              size: 20,
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              'Connect to NodeMCU',
                              style: TextStyle(
                                color: AppColors.textPrimary,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),

                        // Host/IP field
                        TextField(
                          controller: _hostController,
                          enabled: !isConnecting,
                          keyboardType: TextInputType.url,
                          decoration: const InputDecoration(
                            labelText: 'NodeMCU IP Address',
                            hintText: '192.168.4.1',
                            prefixIcon: Icon(Icons.router_rounded),
                          ),
                        ),
                        const SizedBox(height: 16),

                        // PIN field
                        TextField(
                          controller: _pinController,
                          enabled: !isConnecting,
                          obscureText: _obscurePin,
                          keyboardType: TextInputType.number,
                          maxLength: 6,
                          decoration: InputDecoration(
                            labelText: 'PIN',
                            hintText: 'Enter PIN',
                            counterText: '',
                            prefixIcon: const Icon(Icons.lock_rounded),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscurePin
                                    ? Icons.visibility_rounded
                                    : Icons.visibility_off_rounded,
                              ),
                              onPressed: () =>
                                  setState(() => _obscurePin = !_obscurePin),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),

                        // Mock mode toggle (dev only)
                        Row(
                          children: [
                            Switch(
                              value: _mockMode,
                              onChanged: isConnecting
                                  ? null
                                  : (v) => setState(() => _mockMode = v),
                              activeTrackColor: AppColors.primary,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Demo Mode',
                                    style: TextStyle(
                                      color: AppColors.textSecondary,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Use simulated data (PIN: 1234)',
                                    style: TextStyle(
                                      color: AppColors.textTertiary,
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),

                        // Connect button
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: isConnecting ? null : _connect,
                            child: isConnecting
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 20,
                                        height: 20,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                          color: AppColors.onPrimary,
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      const Text('Connecting...'),
                                    ],
                                  )
                                : const Text('Connect'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Connection state indicator
                  _buildConnectionStatus(connectionState),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildConnectionStatus(ConnectionState state) {
    switch (state) {
      case ConnectionState.disconnected:
        return StatusIndicator.disconnected();
      case ConnectionState.connecting:
        return StatusIndicator.connecting();
      case ConnectionState.connected:
        return StatusIndicator.connected();
      case ConnectionState.error:
        return StatusIndicator(
          color: AppColors.error,
          label: ref.read(connectionProvider.notifier).errorMessage ?? 'Error',
        );
    }
  }
}
