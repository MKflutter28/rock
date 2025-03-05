import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rockpaper/home.dart';
import 'package:rockpaper/main.dart';

import 'input.dart';

class determine extends StatefulWidget {
  final Choices c1;
  const determine({super.key, required this.c1});

  @override
  State<determine> createState() => _determineState();
}

class _determineState extends State<determine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Results",
          style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white)),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Card(
                    child: Column(
                      children: [
                        Text(
                          "User Choice",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Image(
                          image: AssetImage(
                            "assets/${widget.c1.userChoice}.png",
                          ),
                          height: 200,
                          width: 200,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Card(
                    child: Column(
                      children: [
                        Text(
                          "Ai Choice",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Image(
                          image: AssetImage(
                            "assets/${widget.c1.robotChoice}.png",
                          ),
                          height: 200,
                          width: 200,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                widget.c1.Wins,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text(
                            "User score",
                            style: GoogleFonts.onest(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                              ),
                            ),
                          ),
                          Text(
                            "${widget.c1.userscorce}",
                            style: GoogleFonts.onest(
                              color: Colors.black,
                              fontSize: 50,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.red,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text(
                            " Bot score",
                            style: GoogleFonts.onest(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
                          ),
                          Text(
                            "${widget.c1.computerscorce}",
                            style: GoogleFonts.onest(
                              color: Colors.white,
                              fontSize: 50,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text(
                  "Play Again",
                  style: GoogleFonts.poppins(color: Colors.black, fontSize: 25),
                ),
              ),
              SizedBox(height: 30),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    user_scorce = 0;
                    ai_scorce = 0;
                  });
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => Start_page()),
                    (route) => false,
                  );
                },
                child: Text(
                  "Exit Game",
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 25),
                ),
              ),
            ],
          ),
        ),

        // Row(
        //   children: [
        //     Text(widget.c1.userChoice),
        //     Text(widget.c1.robotChoice),
        //     Text(widget.c1.Wins),
        //     Text("${widget.c1.userscorce}"),
        //     Text("${widget.c1.computerscorce}"),
        //     TextButton(
        //       onPressed: () {
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(builder: (context) => HomePage()),
        //         );
        //       },
        //       child: Text("Play again"),
        //     ),
        //     TextButton(
        //       onPressed: () {
        //         setState(() {
        //           user_scorce = 0;
        //           ai_scorce = 0;
        //         });
        //         Navigator.of(context).pushAndRemoveUntil(
        //           MaterialPageRoute(builder: (context) => Start_page()),
        //           (route) => false,
        //         );
        //       },
        //       child: Text("Exit Game"),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
