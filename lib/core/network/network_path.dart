// ignore_for_file: dead_code

enum NetworkPath { HOME, VERIFY_OTP, LOGIN }

extension StringPathValue on NetworkPath {
  String get rawValue {
    switch (this) {
      case NetworkPath.HOME:
        return 'api/home';
        break;
      case NetworkPath.VERIFY_OTP:
        return '';
        break;
      case NetworkPath.LOGIN:
        return '';
        break;
    }
  }
}
