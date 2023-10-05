bool isValidPhoneNumber(String phoneNumber) {
  final phoneRegex = RegExp(r'^[0-9]{10}$');
  return phoneRegex.hasMatch(phoneNumber);
}
