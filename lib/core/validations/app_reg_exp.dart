class AppRegExp {
  static RegExp name = RegExp(r'[a-zA-Z]\s[a-zA-Z]');
  static RegExp numbers = RegExp(r'[0-9]');
  static RegExp space = RegExp(r'\s');
  static RegExp englishCharacters = RegExp(r'[a-zA-Z]');
  static RegExp arabicCharacters = RegExp(r'[ا-ي]');
  static RegExp englishCharactersAndSpaces = RegExp(r'[a-zA-Z\s]');
  static RegExp arabicCharactersAndSpaces = RegExp(r'[ا-ي\s]');
  static RegExp englishCharactersAndSpacesAndNumbers = RegExp(r'[a-zA-Z0-9\s]');
  static RegExp arabicCharactersAndSpacesAndNumbers = RegExp(r'[ا-ي٠-٩\s]');
  static RegExp englishCharactersAndSpacesAndNumbersAndSpicial =
      RegExp(r'[a-zA-Z0-9\s__\-=@,\.;]');
  static RegExp arabicCharactersAndSpacesAndNumbersAndSpicial =
      RegExp(r'[ا-ي٠-٩\s_\-=@,\.;]');
  static RegExp capitalLetter = RegExp(r'[A-Z]+');
  static RegExp smallLetter = RegExp(r'[a-z]+');
  static RegExp oneNumberOrMore = RegExp(r'[0-9]+');
  static RegExp email = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
}
