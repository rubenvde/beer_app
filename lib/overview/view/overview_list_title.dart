import 'package:beer_app/data/models/view/beer.dart';
import 'package:beer_app/l10n/l10n.dart';
import 'package:flutter/material.dart';

class OverviewListTitle extends StatelessWidget {
  const OverviewListTitle({required this.beer, this.onTap, super.key});

  final Beer beer;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Image.network(
              beer.thumbImageUrl,
              width: 50,
              height: 50,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(beer.name),
                  Text(beer.brewery.name),
                ],
              ),
            ),
            Column(
              children: [
                Text(l10n.overviewListTitleRatingTitle),
                Text(beer.rating.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
