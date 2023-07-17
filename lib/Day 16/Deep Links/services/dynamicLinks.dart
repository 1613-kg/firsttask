import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

class FirebaseDynamicLinks {
  // FirebaseDynamicLinks dynamicLinks = FirebaseDynamicLinks().dynamicLinks;
  static Future<String> createDynamicLink(bool short) async {
    String _linkedMessage;

    final DynamicLinkParameters parameters = DynamicLinkParameters(
      link: Uri.parse("https://www.firsttaskdeeplink.com"),
      uriPrefix: "https://firsttaskdeeplink.page.link",
      androidParameters: AndroidParameters(
        packageName: "com.example.firsttask",
        minimumVersion: 30,
        fallbackUrl: Uri.parse("https://www.firsttaskdeeplink.com"),
      ),
    );
    //   Uri url;
    //   if (short) {
    //     final ShortDynamicLink shortLink =
    //        await dynamicLinks.buildShortLink(parameters);
    //   } else {
    //     url = await dynam
    //   }
    //    _linkedMessage = url.toString();
    // }
    _linkedMessage = parameters.link.toString();
    return _linkedMessage;
  }
}
