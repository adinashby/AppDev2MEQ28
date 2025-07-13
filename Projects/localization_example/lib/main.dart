import 'package:flutter/material.dart';
import 'package:localization_example/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization_example/l10n/generated/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('en');

  void _setLocale(Locale newLocale) {
    setState(() {
      _locale = newLocale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'l10n_i18n_arb',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      supportedLocales: L10n.all,
      locale: _locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: HomePage(onLocaleChange: _setLocale),
    );
  }
}

class HomePage extends StatefulWidget {
  final void Function(Locale) onLocaleChange;

  const HomePage({Key? key, required this.onLocaleChange}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.multiLanguage),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.multiLanguage,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              AppLocalizations.of(context)!.hello('James'),
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => widget.onLocaleChange(const Locale('en')),
                  child: const Text('English'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => widget.onLocaleChange(const Locale('es')),
                  child: const Text('Español'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => widget.onLocaleChange(const Locale('fr')),
                  child: const Text('Français'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}







// import 'package:flutter/material.dart';
// import 'package:localization_example/l10n.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:localization_example/l10n/generated/app_localizations.dart';
//
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'l10n_i18n_arb',
//       theme: ThemeData(
//
//         primarySwatch: Colors.blue,
//       ),
//       supportedLocales: L10n.all,
//       locale: const Locale('en'),
//       localizationsDelegates: const [
//         AppLocalizations.delegate,
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//         GlobalCupertinoLocalizations.delegate
//       ],
//
//       home: const HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(AppLocalizations.of(context)!.multiLanguage),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               AppLocalizations.of(context)!.multiLanguage,
//               style: const TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Text(
//               AppLocalizations.of(context)!.hello('James'),
//               style: const TextStyle(
//                 fontSize: 30,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
