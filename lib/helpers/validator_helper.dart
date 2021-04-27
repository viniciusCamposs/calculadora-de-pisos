class ValidatorHelper {
  static String isNotEmptyAndNegative(String text) {
    if (text.isEmpty) {
      return "Campo Obrigatorio";
    } else {
      var c = double.parse(text);
      if (c <= 0) {
        return "Erro, Numero < or = 0";
      }
    }
    return null;
  }
}
