import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rockpaper/rules.dart';
import 'input.dart';
import 'dart:math';
import 'game.dart';

int user_scorce = 0;
int ai_scorce = 0;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> choices = ["paper", "rock", "scissors"];
  late String user;
  late String ai;
  late String correct;

  String robotchoice() {
    int index = Random().nextInt(3);
    ai = choices[index];
    return ai;
  }

  String windetermination() {
    String result = "";
    String robot = ai;
    if (user == robot) {
      result = "Match is drawn";
    } else if (user == "rock" && robot == "scissors" ||
        user == "paper" && robot == "rock" ||
        user == "scissors" && robot == "paper") {
      result = "User wins the match";
      user_scorce += 1;
    } else {
      result = "Ai wins the match";
      ai_scorce += 1;
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Choose your option")),

      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    user = "paper";
                    ai = robotchoice();
                    user_scorce = user_scorce;
                    ai_scorce = ai_scorce;
                    correct = windetermination();
                  });

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => determine(
                            c1: Choices(
                              userChoice: user,
                              robotChoice: ai,
                              Wins: correct,
                              userscorce: user_scorce,
                              computerscorce: ai_scorce,
                            ),
                          ),
                    ),
                  );
                },
                child: Image(
                  image: AssetImage("assets/paper.png"),
                  height: 180,
                  width: 180,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        user = "rock";
                        user_scorce = user_scorce;
                        ai_scorce = ai_scorce;
                        ai = robotchoice();
                        correct = windetermination();
                      });

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => determine(
                                c1: Choices(
                                  userChoice: user,
                                  robotChoice: ai,
                                  Wins: correct,
                                  userscorce: user_scorce,
                                  computerscorce: ai_scorce,
                                ),
                              ),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/rock.png",
                      height: 180,
                      width: 180,
                    ),
                  ),
                  SizedBox(width: 50),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        user = "scissors";
                        user_scorce = user_scorce;
                        ai_scorce = ai_scorce;
                        ai = robotchoice();
                        correct = windetermination();
                      });

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => determine(
                                c1: Choices(
                                  userChoice: user,
                                  robotChoice: ai,
                                  Wins: correct,
                                  userscorce: user_scorce,
                                  computerscorce: ai_scorce,
                                ),
                              ),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/scissors.png",
                      height: 180,
                      width: 180,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RulesPage()),
                  );
                },
                child: Text(
                  "How To Play",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
