
import 'package:budgify_app/common/color_extension.dart';
import 'package:budgify_app/common_widget/primary_button.dart';
import 'package:budgify_app/common_widget/secondary_button.dart';
import 'package:budgify_app/view/login/social_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            "assets/img/welcome_screen.png"
            ,width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/img/app_logo.png",
                      width: media.width * 0.5,fit: BoxFit.contain),

                 const Spacer(),

                  Text("Congue malesuda in ac justo, a tirsque\n leo massa.Arcu leo leo urna risus.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: TColor.white,fontSize: 14),
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  PrimaryButton(title: "Get Started",
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SocialLoginView(),
                          ),
                      );
                  },
                  ),

                  const SizedBox(
                    height: 15,
                  ),
                  
                  SecondaryButton(
                      title: "I have an account",
                    onPressed: (){
                        },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
