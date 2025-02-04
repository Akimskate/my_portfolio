import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherHelper {
  static Future<void> launch(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      debugPrint('Failed to open $url');
    }
  }
  static Future<void> launchTelegram() async {
    final tgUri = Uri.parse('tg://resolve?domain=Akimskate');
    final webUri = Uri.parse('https://t.me/Akimskate');

    if (await canLaunchUrl(tgUri)) {
      await launchUrl(tgUri);
    } else {
      await launchUrl(webUri, mode: LaunchMode.externalApplication);
    }
  }
}
