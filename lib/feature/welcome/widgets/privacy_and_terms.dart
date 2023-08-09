import 'package:flutter/material.dart';
import 'package:whatsapp_messenger/common/extension/custom_theme_extension.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111B21),
      body: Column(
        children: [
          Expanded(child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(padding: const EdgeInsets.symmetric(horizontal:50, vertical: 10), 
            child: Image.asset('assets/images/circle.png', color: const Color(0xFF00A884),)),
          )),
          const SizedBox(height: 40),
          Expanded(
            child: Column(
              children: [
                const Text('Welcome to WhatsApp', 
                  style: TextStyle(
                    fontSize: 22, fontWeight: FontWeight.bold, color: Color.fromRGBO(255, 255, 255, 1), height: 1.5
                    )
                  ),
            const PrivacyAndTerms(),
            SizedBox(
              height: 42,
              width: MediaQuery.of(context).size.width - 100,
              child: ElevatedButton(onPressed: (){},
               style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00A884),
                foregroundColor: const Color(0xFF111B21),
                splashFactory: NoSplash.splashFactory,
                elevation: 0,
                shadowColor: Colors.transparent,
               ),
               child: const Text('AGREE AND CONTINUE')),
            ),
            const SizedBox(height: 50,),
            Material(
              color: const Color(0xFF182229),
              borderRadius: BorderRadius.circular(20),
              child: InkWell(
                onTap: (){},
                borderRadius: BorderRadius.circular(20),
                splashFactory: NoSplash.splashFactory,
                highlightColor: const Color(0xFF09141A),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.language, color: Color(0xFF00A884),),
                      SizedBox(width: 10,),
                      Text('English', style: TextStyle(color: Color(0xFF00A884)),),
                      SizedBox(width: 10,),
                      Icon(Icons.keyboard_arrow_down, color: Color(0xFF00A884),),                    
                    ],),
                )
              ),
            )
          ],
        )
        ),
        ],
      ),
    );
  }
}

class PrivacyAndTerms extends StatelessWidget {
  const PrivacyAndTerms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30, 
        vertical: 20,
      ),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
    text : 'Read our ',
    style : TextStyle(
      
      color: context.theme.greyColor,
      height: 1.5
    ),
    children: [
      TextSpan(
        text: 'Privacy Policy. ',
        style: TextStyle(
          color: context.theme.blueColor,
        )
      ),
      const TextSpan(
        text: 'Tap "Agree & continue"  to accept the ',
      ),
      TextSpan(
        text: ' Terms of Services.',
        style: TextStyle(
          color:  context.theme.blueColor,
        )
      )
    ]
                )
              )
            );
  }
}  