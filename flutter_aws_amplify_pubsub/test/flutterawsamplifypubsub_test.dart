import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterawsamplifypubsub/flutter_aws_amplify_pubsub.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutterawsamplifypubsub');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterAwsAmplifyPubSub.platformVersion, '42');
  });
}
