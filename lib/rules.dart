import 'package:flutter/material.dart';

class RulesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text('How to Play', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Rules of Rock Paper Scissors:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            ruleText('1. Rock crushes Scissors.'),
            ruleText('2. Scissors cuts Paper.'),
            ruleText('3. Paper covers Rock.'),
            ruleText("4. If both players choose the same, it's a tie."),
            ruleText('5. The game is usually played as Best of 3 or 5 rounds.'),
          ],
        ),
      ),
    );
  }

  Widget ruleText(String rule) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(rule, style: TextStyle(fontSize: 18, color: Colors.white)),
    );
  }
}
