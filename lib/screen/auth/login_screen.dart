import 'package:final_project/core/navigation/edspert_navigation.dart';
import 'package:final_project/screen/auth/register_screen.dart';
import 'package:final_project/screen/menu/home_screen.dart';
import 'package:final_project/utils/widgets/edspert_button.dart';
import 'package:final_project/utils/widgets/edspert_text_nonton_id.dart';
import 'package:final_project/utils/widgets/edspert_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login_screen';

  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 148,
                  ),
                  EdspertNontonId.apply(),
                  const SizedBox(
                    height: 104,
                  ),
                  Text(
                    "Masuk",
                    style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  EdspertTextField.textField(
                      "username", Icons.account_circle_outlined),
                  const SizedBox(
                    height: 8,
                  ),
                  EdspertTextField.textField("password", Icons.lock_outline),
                  const SizedBox(
                    height: 32,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(RegisterScreen.routeName);
                    },
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 44,
                        ),
                        Text(
                          "Belum punya akun? ",
                          style: GoogleFonts.openSans(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "Daftar",
                          style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: EdspertButton().primary(
                text: "Masuk",
                onTap: () {
                  _onTabButtonLogin();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onTabButtonLogin() {
    EdspertNavigation().pushReplacementNamed(HomeScreen.routeName);
  }
}
