import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:socialy/firebase_options.dart';

void main() {
  test('firebase options use values from dotenv', () async {
    await dotenv.load(fileName: '.env');

    expect(DefaultFirebaseOptions.web.apiKey, dotenv.env['WEB_API_KEY']);
    expect(
      DefaultFirebaseOptions.android.apiKey,
      dotenv.env['ANDROID_API_KEY'],
    );
    expect(DefaultFirebaseOptions.ios.apiKey, dotenv.env['IOS_API_KEY']);
  });
}
