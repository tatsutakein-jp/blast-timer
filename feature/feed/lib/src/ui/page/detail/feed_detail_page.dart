import 'package:core_model/feed.dart';
import 'package:feature_feed/src/gen/l10n/l10n.dart';
import 'package:feature_feed/src/ui/page/detail/component/feed_content.dart';
import 'package:flutter/material.dart';

/// お知らせ詳細ページ
final class FeedDetailPage extends StatelessWidget {
  const FeedDetailPage({
    required FeedId feedId,
    super.key,
  }) : _feedId = feedId;

  final FeedId _feedId;

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.feedDetailAppBarTitle),
      ),
      body: FeedContent(
        feedId: _feedId,
      ),
    );
  }
}
