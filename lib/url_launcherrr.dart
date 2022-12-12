import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLaunnch extends StatelessWidget {
  UrlLaunnch({super.key});
  final Uri _url = Uri.parse('https://facebook.com');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: _launchUrl, child: Icon(Icons.facebook_outlined)),
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'could not launch $_url';
    }
  }
}
