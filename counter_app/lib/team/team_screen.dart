import 'package:counter_app/team/hasil_screen.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({super.key});

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  int scoreTeamA = 0;
  int scoreTeamB = 0;

  Logger logger = Logger(printer: PrettyPrinter());
  SharedPreferences? pref;

  @override
  void initState() {
    super.initState();
    _initSharedPreferences();
  }

  Future<void> _initSharedPreferences() async {
    pref = await SharedPreferences.getInstance();
    setState(() {
      scoreTeamA = pref?.getInt("scoreTeamA") ?? 0;
      scoreTeamB = pref?.getInt("scoreTeamB") ?? 0;
    });
    logger.i("SharedPreferences loaded: A = $scoreTeamA, B = $scoreTeamB");
  }

  Future<void> _saveScores() async {
    await pref?.setInt("scoreTeamA", scoreTeamA);
    await pref?.setInt("scoreTeamB", scoreTeamB);
    logger.i("Scores saved: A = $scoreTeamA, B = $scoreTeamB");
  }

  void _incrementScore(String team) {
    setState(() {
      if (team == 'A') {
        scoreTeamA++;
      } else {
        scoreTeamB++;
      }
    });
    _saveScores();
  }

  void _decrementScore(String team) {
    setState(() {
      if (team == 'A' && scoreTeamA > 0) {
        scoreTeamA--;
      } else if (team == 'B' && scoreTeamB > 0) {
        scoreTeamB--;
      }
    });
    _saveScores();
  }

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
                _buildTeamCard("Manchester United Senior", scoreTeamA, 'A'),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Divider(
                    thickness: 2,
                    color: Colors.grey,
                    indent: 50,
                    endIndent: 50,
                  ),
                ),
                _buildTeamCard("Manchester United Junior", scoreTeamB, 'B'),
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

  Widget _buildTeamCard(String teamName, int score, String teamCode) {
    return Column(
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
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            alignment: Alignment.center,
            width: 275,
            child: Text(
              teamName,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
        Text(score.toString(), style: const TextStyle(fontSize: 30)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () => _decrementScore(teamCode),
              child: const Icon(Icons.remove, color: Colors.white),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () => _incrementScore(teamCode),
              child: const Icon(Icons.add, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
