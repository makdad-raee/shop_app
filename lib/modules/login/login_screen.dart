import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shope_app/componants/componants.dart';
import 'package:shope_app/modules/login/login_cubit.dart';
import 'package:shope_app/modules/login/login_states.dart';
import 'package:shope_app/modules/register/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return BlocProvider(
      create: (context) => ShopLoginCubit(),
      child: BlocConsumer<ShopLoginCubit, ShopLoginState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = ShopLoginCubit.get(context);
          return Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'LOGIN',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
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
                          controller: emailController,
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
                          controller: passwordController,
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
                        state is ShopLoginLoadingState
                            ? const Center(child: CircularProgressIndicator())
                            : defaultTextbutton(
                                text: 'Login',
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    cubit.useLogin(
                                        email:emailController.text,
                                        password:passwordController.text
                                        );
                                  }
                                },
                                color: Colors.green),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Don\'t have an acount ?',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
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
            ),
          );
        },
      ),
    );
  }
}
