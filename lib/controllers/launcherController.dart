import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class LauncherController extends GetxController {
  void launch(String url) async {
    if (!await launchUrl(Uri.parse(url))) throw 'Could not launch $url';
  }
}
