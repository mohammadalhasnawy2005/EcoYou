import 'package:http/http.dart' as http;

Future<bool> checkInternet() async {
  try {
    final response = await http
        .get(Uri.parse('https://google.com'))
        .timeout(Duration(seconds: 5));
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  } catch (e) {
    return false;
  }
}
