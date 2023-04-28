import 'package:chopper/chopper.dart';
import 'package:dart_disguise/dart_disguise.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final chopper = ChopperClient(
      baseUrl: Uri.parse("http://localhost"),
      services: [
        Service.create(),
        Session.create(),
      ],
    );

    final service = chopper.getService<Service>();
    final session = chopper.getService<Session>();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {});
  });
}
