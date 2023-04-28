import 'package:chopper/chopper.dart';
import 'package:dart_disguise/dart_disguise.dart';

void main() {
  final chopper = ChopperClient(
    baseUrl: Uri.parse("http://localhost"),
    services: [
      Service.create(),
      Session.create(),
    ],
  );

  final service = chopper.getService<Service>();
  final session = chopper.getService<Session>();

  service.systemDetectsystemsGet().then((value) => print(value.body));
}
