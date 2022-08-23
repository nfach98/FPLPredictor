class VerificationMethodConstants {
  VerificationMethodConstants._();

  static final method = _Method();
  static final type = _Type();
}

class _Method {
  final sms = 1;
  final whatsapp = 2;
}

class _Type {
  final register = 1;
  final forgotPassword = 2;
  final changeNumber = 3;
}
