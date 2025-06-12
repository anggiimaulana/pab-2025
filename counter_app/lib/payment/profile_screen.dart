import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Future<String> _getUsername() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getString('username') ?? 'Tidak diketahui';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text(
          'Profil Pengguna',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: FutureBuilder<String>(
        future: _getUsername(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.person, size: 100, color: Colors.indigo),
                const SizedBox(height: 20),
                Text(
                  'Nama Pengguna:',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  snapshot.data!,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
