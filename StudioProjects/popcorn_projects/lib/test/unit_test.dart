import 'package:flutter_test/flutter_test.dart';
import 'package:popcorn_projects/screens/login_page.dart';
import '../screens/login_page.dart';

void main() {
  late LoginPage loginPage;

  setUp(() {
    loginPage = LoginPage();
  });

  group('Email Validation', () {
    test('Valid email should return true', () {
      expect(loginPage.validateEmail('test@example.com'), true);
    });

    test('Invalid email should return false', () {
      expect(loginPage.validateEmail('invalid-email'), false);
    });
  });

  group('Password Validation', () {
    test('Valid password (length >= 6) should return true', () {
      expect(loginPage.validatePassword('123456'), true);
    });

    test('Invalid password (length < 6) should return false', () {
      expect(loginPage.validatePassword('12345'), false);
    });
  });
}
