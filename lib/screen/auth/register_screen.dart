import 'package:final_project/core/navigation/edspert_navigation.dart';
import 'package:final_project/screen/menu/home_screen.dart';
import 'package:final_project/utils/widgets/edspert_button.dart';
import 'package:final_project/utils/widgets/edspert_text_nonton_id.dart';
import 'package:final_project/utils/widgets/edspert_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  static const routeName = '/register_screen';

  const RegisterScreen({
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
                    "Daftar",
                    style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  EdspertTextField.textField(
                      "alamat email", Icons.email_outlined),
                  const SizedBox(
                    height: 8,
                  ),
                  EdspertTextField.textField(
                      "username", Icons.account_circle_outlined),
                  const SizedBox(
                    height: 8,
                  ),
                  EdspertTextField.textField("password", Icons.lock_outline),
                  const SizedBox(
                    height: 8,
                  ),
                  EdspertTextField.textField(
                      "ulangi password", Icons.lock_outline),
                  const SizedBox(
                    height: 32,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 44,
                        ),
                        Text(
                          "Sudah punya akun? ",
                          style: GoogleFonts.openSans(
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "Masuk",
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
                text: "Daftar",
                onTap: () {
                  _onTabButtonRegister();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onTabButtonRegister() {
    EdspertNavigation().pushReplacementNamed(HomeScreen.routeName);
  }
}
