import 'package:flutter/material.dart';
import 'package:portfolio_site/core/extensions/app_extensions.dart';
import 'package:portfolio_site/core/theme/app_text_style.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.height * .12),
      child: const Text(
        """Experienced and dedicated mobile app developer skilled in Flutter and Dart. Proactive learner,
always staying updated with industry trends. Successfully built "My Notes" app using Firebase, 
Firestore, BLoC, SQLite, and localization. Proficient in Python and adaptable to different frameworks. 
Committed to delivering high-quality results within deadlines. Open to new challenges and collaborative work. 
Let's discuss your project's success.""",
        style: TextStyleManger.s24,
      ),
    );
  }
}
