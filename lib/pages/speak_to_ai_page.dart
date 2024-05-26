import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpeakToAIPage extends StatelessWidget {
  const SpeakToAIPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Speaking to AI Bot"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Image.asset(
              'assets/robot.png',
              height: 400,
            ),
          ),
          Text.rich(
            TextSpan(
              text: "Describe and show me the perfect vacation spot",
              style: const TextStyle(fontWeight: FontWeight.bold),
              children: [
                TextSpan(text: " on an online in the ocean", style: TextStyle(color: Colors.grey[600])),
              ],
            ),
            style: theme.textTheme.headlineSmall,
            textAlign: TextAlign.center,
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 55,
              height: 55,
              child: IconButton.filledTonal(
                onPressed: () {},
                icon: const Icon(Icons.chat_outlined),
                style: IconButton.styleFrom(
                  backgroundColor: const Color(0xff313638),
                ),
                color: Colors.white,
              ),
            ),
            Container(
              width: 90,
              height: 90,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff232729),
                    spreadRadius: 20,
                  ),
                ],
              ),
              child: IconButton.filledTonal(
                onPressed: () {},
                iconSize: 40,
                icon: const Icon(CupertinoIcons.mic),
                style: IconButton.styleFrom(
                  backgroundColor: const Color(0xff313638),
                ),
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 55,
              height: 55,
              child: IconButton.filledTonal(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz),
                style: IconButton.styleFrom(
                  backgroundColor: const Color(0xff313638),
                ),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
