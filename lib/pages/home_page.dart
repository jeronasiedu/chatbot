import 'package:chatbot/pages/speak_to_ai_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/idea_card.dart';
import '../widgets/premium_plan_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const PremiumPlanCard(),
            const SizedBox(height: 20),
            Row(
              children: [
                IdeaCard(
                  title: "Generate ideas and write articles",
                  icon: Icons.edit_location_alt_outlined,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SpeakToAIPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(width: 10),
                IdeaCard(
                  title: "Generate ideas and write articles",
                  icon: Icons.edit_location_alt_outlined,
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "History",
              style: theme.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Wrap(
              runSpacing: 14,
              children: List.generate(
                6,
                (index) {
                  return ListTile(
                    onTap: () {},
                    titleTextStyle: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    title: const Text(
                      "Give me ideas for writing an article",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: const Icon(Icons.arrow_forward_rounded),
                    leading: const Icon(Icons.chat_outlined),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_text_fill),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.folder),
            label: "Folders",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_alt_circle),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
