import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final double? buttonWidth;
  final VoidCallback onPressed;
  final String text;
  const CustomElevatedButton({
    super.key, this.buttonWidth, required this.onPressed, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      width: buttonWidth ?? MediaQuery.of(context).size.width - 100,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text)),
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
        text: const TextSpan(
    text : 'Read our ',
    style : TextStyle(
      
      color: Color(0xFF8696A0),
      height: 1.5
    ),
    children: [
      TextSpan(
        text: 'Privacy Policy. ',
        style: TextStyle(
          color: Color(0xFF538DE8)
        )
      ),
      TextSpan(
        text: 'Tap "Agree & continue"  to accept the ',
      ),
      TextSpan(
        text: ' Terms of Services.',
        style: TextStyle(
          color:  Color(0xFF538DE8)
        )
      )
    ]
                )
              )
            );
  }
}