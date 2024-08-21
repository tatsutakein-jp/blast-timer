import 'package:core_data/user_settings.dart';
import 'package:core_model/theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fetch_theme_use_case.g.dart';

/// テーマを取得する ユースケース
@riverpod
Theme fetchThemeUseCase(FetchThemeUseCaseRef ref) =>
    ref.watch(userSettingsRepositoryProvider).theme;
