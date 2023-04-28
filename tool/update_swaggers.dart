import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> main() async {
  const pages = [
    'service',
    'session',
  ];

  for (var page in pages) {
    final urlPage = page.replaceAll('_', '');
    final uri =
        Uri.parse('https://developer.disguise.one/specs/$urlPage.swagger.json');
    print('Downloading $uri');
    final response = await http.get(uri);
    final contents = response.body.replaceAll('"/api/v1/', '"/');
    final file = File('swagger/$page.swagger');
    print('Writing to ${file.path}');
    file.writeAsStringSync(contents);
  }
}
