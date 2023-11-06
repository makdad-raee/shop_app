import 'package:flutter/material.dart';
import 'package:shope_app/componants/componants.dart';
import 'package:shope_app/modules/register/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('LOGIN', style: Theme.of(context).textTheme.bodyLarge),
                const SizedBox(height: 24,),
                Text('Login now to browse our hot offers',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontSize: 20)),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null) {
                      return 'Email must not be empty';
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: const Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
                const SizedBox(
                  height: 30,
                ),
                defaulatTextFormField(
                  controller: TextEditingController(),
                  type: TextInputType.visiblePassword,
                  hinttext: 'Password',
                  prefixIcon: const Icon(Icons.lock_clock_outlined),
                  sufixIcon: const Icon(Icons.visibility),
                  validator: (value) {
                    if (value == null) {
                      return "Password is too Short";
                    }
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                defaultTextbutton(
                    text: 'Login', onPressed: () {}, color: Colors.green),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an acount ?',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ));
                      },
                      child: const Text('Register'),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
