import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get onboarding => 'オンボーディング';

  @override
  String get welcome => 'ようこそ';

  @override
  String get agreeAndStart => '同意して始める';
}
