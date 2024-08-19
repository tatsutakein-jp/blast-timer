import 'package:core_data/user_settings.dart';
import 'package:core_model/theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_theme_use_case.g.dart';

/// テーマ設定を更新する ユースケース
@riverpod
Raw<Future<void>> updateThemeUseCase(
  UpdateThemeUseCaseRef ref, {
  required Theme theme,
}) =>
    ref.watch(userSettingsRepositoryProvider).setTheme(theme: theme);
