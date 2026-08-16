import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/connection/connection_screen.dart';
import '../../features/dashboard/dashboard_screen.dart';
import '../../features/live_monitor/live_monitor_screen.dart';
import '../../features/history/history_screen.dart';
import '../../features/controls/controls_screen.dart';
import '../../features/faults/faults_screen.dart';
import '../../features/settings/settings_screen.dart';
import '../theme/app_colors.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    // Connection screen (no bottom nav)
    GoRoute(
      path: '/',
      builder: (context, state) => const ConnectionScreen(),
    ),

    // Shell route with bottom navigation
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) => AppShell(child: child),
      routes: [
        GoRoute(
          path: '/dashboard',
          pageBuilder: (context, state) => NoTransitionPage(
            child: const DashboardScreen(),
          ),
        ),
        GoRoute(
          path: '/live-monitor',
          pageBuilder: (context, state) => NoTransitionPage(
            child: const LiveMonitorScreen(),
          ),
        ),
        GoRoute(
          path: '/history',
          pageBuilder: (context, state) => NoTransitionPage(
            child: const HistoryScreen(),
          ),
        ),
        GoRoute(
          path: '/controls',
          pageBuilder: (context, state) => NoTransitionPage(
            child: const ControlsScreen(),
          ),
        ),
        GoRoute(
          path: '/faults',
          pageBuilder: (context, state) => NoTransitionPage(
            child: const FaultsScreen(),
          ),
        ),
        GoRoute(
          path: '/settings',
          pageBuilder: (context, state) => NoTransitionPage(
            child: const SettingsScreen(),
          ),
        ),
      ],
    ),
  ],
);

/// App shell with bottom navigation bar.
class AppShell extends StatelessWidget {
  final Widget child;

  const AppShell({super.key, required this.child});

  int _calculateSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;
    if (location.startsWith('/dashboard')) return 0;
    if (location.startsWith('/live-monitor')) return 1;
    if (location.startsWith('/history')) return 2;
    if (location.startsWith('/controls')) return 3;
    if (location.startsWith('/settings')) return 4;
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = _calculateSelectedIndex(context);

    return Scaffold(
      body: child,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: AppColors.divider, width: 0.5),
          ),
        ),
        child: NavigationBar(
          selectedIndex: selectedIndex,
          onDestinationSelected: (index) {
            switch (index) {
              case 0:
                context.go('/dashboard');
                break;
              case 1:
                context.go('/live-monitor');
                break;
              case 2:
                context.go('/history');
                break;
              case 3:
                context.go('/controls');
                break;
              case 4:
                context.go('/settings');
                break;
            }
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.dashboard_outlined),
              selectedIcon: Icon(Icons.dashboard_rounded),
              label: 'Dashboard',
            ),
            NavigationDestination(
              icon: Icon(Icons.speed_outlined),
              selectedIcon: Icon(Icons.speed_rounded),
              label: 'Monitor',
            ),
            NavigationDestination(
              icon: Icon(Icons.show_chart_outlined),
              selectedIcon: Icon(Icons.show_chart_rounded),
              label: 'History',
            ),
            NavigationDestination(
              icon: Icon(Icons.tune_outlined),
              selectedIcon: Icon(Icons.tune_rounded),
              label: 'Controls',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings_outlined),
              selectedIcon: Icon(Icons.settings_rounded),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
