class PhoneFormatter {
  const PhoneFormatter._();

  static String formatToIDN(String phoneNumber) {
    if (phoneNumber[0] == '0') return '62${phoneNumber.substring(1)}';
    if (phoneNumber.substring(0, 2) == '62') return phoneNumber;
    return '62$phoneNumber';
  }
}
