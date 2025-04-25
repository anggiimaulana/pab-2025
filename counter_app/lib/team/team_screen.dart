import 'package:counter_app/team/hasil_screen.dart';
import 'package:flutter/material.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({super.key});

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  int scoreTeamA = 0;
  int scoreTeamB = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Score Team", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.network(
                      "https://3.bp.blogspot.com/-BDb_ZAelGXY/VxS-AvDGAdI/AAAAAAAABC8/0qzYnlVy2c8AG3AWN-jyWK79-cRESmeDgCLcB/s1600/Logo%2BManchester%2BUnited%2BF.C.png",
                      height: 75,
                      width: 75,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 15,
                        ),
                        alignment: Alignment.center,
                        width: 275,
                        child: const Text(
                          "Manchester United Senior",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    Text(scoreTeamA.toString(), style: TextStyle(fontSize: 30)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          onPressed: () {
                            setState(() {
                              if (scoreTeamA > 0) {
                                scoreTeamA--;
                              }
                            });
                          },
                          child: Icon(Icons.remove, color: Colors.white),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          onPressed: () {
                            setState(() {
                              scoreTeamA++;
                            });
                          },
                          child: Icon(Icons.add, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Divider(
                    thickness: 2,
                    color: Colors.grey,
                    indent: 50,
                    endIndent: 50,
                  ),
                ),
                Column(
                  children: [
                    Image.network(
                      "https://3.bp.blogspot.com/-BDb_ZAelGXY/VxS-AvDGAdI/AAAAAAAABC8/0qzYnlVy2c8AG3AWN-jyWK79-cRESmeDgCLcB/s1600/Logo%2BManchester%2BUnited%2BF.C.png",
                      height: 75,
                      width: 75,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 15,
                        ),
                        alignment: Alignment.center,
                        width: 275,
                        child: const Text(
                          "Manchester United Junior",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                    Text(scoreTeamB.toString(), style: TextStyle(fontSize: 30)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          onPressed: () {
                            setState(() {
                              if (scoreTeamB > 0) {
                                scoreTeamB--;
                              }
                            });
                          },
                          child: Icon(Icons.remove, color: Colors.white),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          onPressed: () {
                            setState(() {
                              scoreTeamB++;
                            });
                          },
                          child: Icon(Icons.add, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                String winner = '';
                if (scoreTeamA > scoreTeamB) {
                  winner = "Manchester United Senior";
                } else if (scoreTeamB > scoreTeamA) {
                  winner = "Manchester United Junior";
                } else {
                  winner = "Draw";
                }

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HasilScreen(winner: winner),
                  ),
                );
              },
              child: const Icon(Icons.chevron_right, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
