// ignore: unused_import
import 'package:ctrleat/ctrleat.dart';
import 'package:test/test.dart';

import '../example/ctrleat_example.dart';

void main() {
  group('A group of tests', () {
    final awesome = Awesome();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(awesome.isAwesome, isTrue);
    });
  });
}
