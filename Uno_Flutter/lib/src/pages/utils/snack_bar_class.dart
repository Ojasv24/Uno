class SnackBarClas {
  String message;
  SnackBarType type;
  SnackBarClas({required this.message, required this.type});
}

enum SnackBarType { error, data }
