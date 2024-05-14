import 'package:flutter/material.dart';

class PremiumPlanCard extends StatelessWidget {
  const PremiumPlanCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card.filled(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Premium Plan",
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: theme.colorScheme.onPrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.45,
                  ),
                  child: Text(
                    "Harness the full power of AI with a Premium Plan.",
                    style: theme.textTheme.titleSmall?.copyWith(
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.bolt),
                  label: const Text("Upgrade now"),
                )
              ],
            ),
            const Spacer(),
            Image.asset(
              'assets/robot.png',
              width: 140,
            )
          ],
        ),
      ),
    );
  }
}
