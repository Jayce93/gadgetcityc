class Gvalidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is requred";
    }
    // Expression for email validtion
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+ [\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid Email Address';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is requred";
    }
    // Expression for email validtion

    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }

    if (!value.contains(RegExp(r'[!@#$%^&*(<>?"{|)]'))) {
      return 'Password must contain at least one special characters';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return "Phone number is required ";
    }
    // Expression for email validtion
    final phoneRegExp = RegExp(r'^|d{10}$');
    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid Phone Number format (10 digits required)';
    }
    return null;
  }
}
