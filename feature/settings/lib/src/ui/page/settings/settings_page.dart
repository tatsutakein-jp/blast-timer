import 'package:core_domain/auth.dart';
import 'package:feature_settings/src/gen/l10n/l10n.dart';
import 'package:feature_settings/src/ui/page/settings/component/index.dart';
import 'package:feature_settings/src/ui/page/settings/component/theme_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 設定ページ
final class SettingsPage extends ConsumerWidget {
  const SettingsPage({
    required VoidCallback onTapThemeSetting,
    required VoidCallback onTapOpenSourceLicense,
    required VoidCallback onSignOutSuccess,
    super.key,
  })  : _onTapThemeSetting = onTapThemeSetting,
        _onTapOpenSourceLicense = onTapOpenSourceLicense,
        _onSignOutSuccess = onSignOutSuccess;

  final VoidCallback _onTapThemeSetting;
  final VoidCallback _onTapOpenSourceLicense;
  final VoidCallback _onSignOutSuccess;

  static const appConfigKey = Key('appConfig');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = L10n.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settingsAppBarTitle),
      ),
      body: ListView(
        primary: true,
        children: [
          ThemeListTile(
            onTap: _onTapThemeSetting,
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            title: Text(l10n.settingsOpenSourceLicenses),
            onTap: _onTapOpenSourceLicense,
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            title: Text(l10n.settingsSignOut),
            onTap: () async {
              await ref.read(signOutUseCaseProvider);
              _onSignOutSuccess();
            },
          ),
          const ListTile(
            contentPadding: EdgeInsets.symmetric(
              vertical: 24,
              horizontal: 16,
            ),
            title: AppConfigTileContent(
              key: appConfigKey,
            ),
          ),
        ],
      ),
    );
  }
}
