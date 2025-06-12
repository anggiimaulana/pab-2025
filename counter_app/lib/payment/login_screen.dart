import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'split_bill_screen.dart';
import 'package:logger/logger.dart';

final Logger logger = Logger();

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController nameController = TextEditingController();

  Future<void> _login() async {
    final name = nameController.text;
    if (name.isEmpty) {
      logger.w("Login gagal: nama kosong");
      return;
    }

    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setBool('isLoggedIn', true);
    await pref.setString('username', name);

    logger.i("User '$name' berhasil login dan disimpan ke SharedPreferences");

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const SplitBillScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login Aplikasi Split Bill',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Nama Pengguna',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
              onChanged: (value) => logger.d("Input nama: $value"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.indigo),
              ),
              onPressed: _login,
              child: const Text('Login', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
