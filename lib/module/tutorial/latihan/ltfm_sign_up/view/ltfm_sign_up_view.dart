import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LtfmSignUpView extends StatefulWidget {
  const LtfmSignUpView({Key? key}) : super(key: key);

  Widget build(context, LtfmSignUpController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmSignUp"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //! 1. Buatlah textfield email
              //! 2. Buatlah textfield password
              //! 3. Buatlah textfield confirm password
              //! 4. Buat sebuah tombol,
              //gunakan icon: Icons.login
              //atur text-nya: Login
              //ketika di klik, panggil:
              // controller.doLogin()
              //Jika dialog muncul ketika tombol di klik, tasks ini selesai
              QTextField(
                  value: "admin@gmail.com",
                  label: "Email",
                  iconField: Icons.email,
                  hint: "Your Email",
                  onChanged: (value) {}),
              QTextField(
                  value: "admin",
                  label: "Password",
                  iconField: Icons.password,
                  hint: "Your Password",
                  obscure: true,
                  onChanged: (value) {}),
              QTextField(
                  value: "admin",
                  label: "Confirm Password",
                  iconField: Icons.password,
                  hint: "Confirm Your Password",
                  obscure: true,
                  onChanged: (value) {}),
              ElevatedButton.icon(
                icon: const Icon(Icons.login),
                label: const Text("LOgin"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  controller.doLogin();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtfmSignUpView> createState() => LtfmSignUpController();
}
