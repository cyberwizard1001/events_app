import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:events_app/utils/colors.dart' as colors;

class VerifyOTPPage extends StatefulWidget {
  const VerifyOTPPage(
      {Key? key,
      required this.phoneNumber,
      required this.password,
      required this.name})
      : super(key: key);
  final String phoneNumber;
  final String password;
  final String name;

  @override
  _VerifyOTPPageState createState() => _VerifyOTPPageState();
}

class _VerifyOTPPageState extends State<VerifyOTPPage> {
  final TextEditingController _otpController = TextEditingController();
  String verificationId = "";

  _generateOTP() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+91 ${widget.phoneNumber}',
      verificationCompleted: (PhoneAuthCredential credential) {
        print("COMPLETE");
        print("verification completed ${credential.smsCode}");
        User? user = FirebaseAuth.instance.currentUser;

        print(user?.phoneNumber);
        print(user?.getIdToken());
      },
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          print("The phone number entered is invalid!");
        }
      },
      codeSent: (String verificationId, int? resendToken) {
        this.verificationId = verificationId;
        print(resendToken);
        print("code sent");
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 50, top: 15),
            child: TextFormField(
                controller: _otpController,
                style: GoogleFonts.montserrat(color: colors.primaryTextColor),
                decoration: InputDecoration(
                  label: Text(
                    'OTP',
                    style: GoogleFonts.raleway(
                        color: colors.textBoxTextColor, fontSize: 12),
                  ),
                  filled: true,
                  hintText: 'Please enter your OTP',
                  hintStyle: GoogleFonts.poppins(
                      color: colors.primaryTextColor.withOpacity(0.7)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5)),
                  fillColor: colors.textBoxFill,
                  focusColor: colors.textBoxFill,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5)),
                )),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 50, top: 15, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _generateOTP();
                  },
                  child: Text(
                    'GENERATE OTP',
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: colors.primaryTextColor),
                    onPressed: () async {
                      await FirebaseAuth.instance
                          .signInWithCredential(PhoneAuthProvider.credential(
                              verificationId: verificationId,
                              smsCode: _otpController.text))
                          .then((value) async {
                        if (value.user != null) {
                          print(await value.user!.getIdToken());
                          //TODO: use this token to login
                        }
                      });
                    },
                    child: Text(
                      'VERIFY OTP',
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        color: colors.scaffoldColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
