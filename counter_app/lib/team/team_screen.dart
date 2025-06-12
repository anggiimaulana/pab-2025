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
  String teamAName = "";
  String teamBName = "";
  bool isTeamSet = false;

  final TextEditingController _teamAController = TextEditingController();
  final TextEditingController _teamBController = TextEditingController();

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
      teamAName = pref?.getString("teamAName") ?? "";
      teamBName = pref?.getString("teamBName") ?? "";
      isTeamSet = teamAName.isNotEmpty && teamBName.isNotEmpty;
    });
  }

  Future<void> _saveScores() async {
    await pref?.setInt("scoreTeamA", scoreTeamA);
    await pref?.setInt("scoreTeamB", scoreTeamB);
    await pref?.setString("teamAName", teamAName);
    await pref?.setString("teamBName", teamBName);

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

  void _submitTeams() {
    setState(() {
      teamAName =
          _teamAController.text.trim().isEmpty
              ? "Team A"
              : _teamAController.text.trim();
      teamBName =
          _teamBController.text.trim().isEmpty
              ? "Team B"
              : _teamBController.text.trim();
      isTeamSet = true;

      logger.i("Nama tim disimpan: Team A = $teamAName, Team B = $teamBName");
      _saveScores(); // Simpan ke SharedPreferences juga
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Score Team", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
      ),
      body: isTeamSet ? _buildScoreBoard() : _buildTeamInput(),
    );
  }

  Widget _buildTeamInput() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _teamAController,
              decoration: const InputDecoration(labelText: "Nama Tim A"),
            ),
            TextField(
              controller: _teamBController,
              decoration: const InputDecoration(labelText: "Nama Tim B"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: _submitTeams,
              child: const Text(
                "Simpan Tim",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScoreBoard() {
    return Stack(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTeamCard(teamAName, scoreTeamA, 'A'),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Divider(
                  thickness: 2,
                  color: Colors.grey,
                  indent: 50,
                  endIndent: 50,
                ),
              ),
              _buildTeamCard(teamBName, scoreTeamB, 'B'),
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
                winner = teamAName;
              } else if (scoreTeamB > scoreTeamA) {
                winner = teamBName;
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
