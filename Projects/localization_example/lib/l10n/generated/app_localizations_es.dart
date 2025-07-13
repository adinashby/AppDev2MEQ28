// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get language => 'Español';

  @override
  String get helloWorld => 'Hola Mundo!';

  @override
  String get multiLanguage => 'Multi lenguaje';

  @override
  String hello(String username) {
    return 'Hola $username';
  }
}
