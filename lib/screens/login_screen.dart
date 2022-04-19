import 'package:antarlaundry/screens/register_screen.dart';
import 'package:antarlaundry/screens/wrapper_screen.dart';
import 'package:antarlaundry/shared/constant.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/header_login.png',
              width: MediaQuery.of(context).size.width,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    width: 273,
                    height: 50,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: black.withOpacity(0.25),
                          offset: const Offset(0, 4.0),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: TextField(
                      cursorColor: green,
                      style: webRegular.copyWith(
                        color: black,
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: webRegular.copyWith(
                          color: const Color(0xFFCFCFCF),
                          fontSize: 20,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: green,
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: green,
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: green,
                            width: 1,
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    width: 273,
                    height: 50,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: black.withOpacity(0.25),
                          offset: const Offset(0, 4.0),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: TextField(
                      obscureText: true,
                      cursorColor: green,
                      style: webRegular.copyWith(
                        color: black,
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Kata Sandi',
                        hintStyle: webRegular.copyWith(
                          color: const Color(0xFFCFCFCF),
                          fontSize: 20,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: green,
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: green,
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: green,
                            width: 1,
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const WrapperScreen(),
                        ),
                        (route) => false),
                    child: Container(
                      width: 200,
                      height: 54,
                      decoration: BoxDecoration(
                        color: green,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Text(
                          'MASUK',
                          style: webRegular.copyWith(
                            color: white,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Belum punya akun?',
                        style: webRegular.copyWith(
                          color: grey,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const RegisterScreen(),
                          ),
                        ),
                        child: Text(
                          'Daftar',
                          style: webRegular.copyWith(
                            color: green,
                            fontSize: 20,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
