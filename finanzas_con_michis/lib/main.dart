import 'package:flutter/material.dart';
import 'config/app_theme.dart';
import 'config/app_router.dart';
import 'data/database/db_helper.dart';
import 'providers/global_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBHelper.initDb(); // SQLite init
  runApp(const FinanzasConMichisApp());
}

class FinanzasConMichisApp extends StatelessWidget {
  const FinanzasConMichisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: globalProviders,
      child: MaterialApp.router(
        title: 'Finanzas con Michis',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
