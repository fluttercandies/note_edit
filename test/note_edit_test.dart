import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:note_edit/note_edit.dart';

void main() {
  const MethodChannel channel = MethodChannel('note_edit');

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
    expect(await NoteEdit.platformVersion, '42');
  });
}
