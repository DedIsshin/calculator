class CalculationHelper {
  double num1 = 0;
  double num2 = 0;

  String result = '';
  String finalResult = '';
  String operation = '';
  String preOperation = '';

  String calculation(String btnText) {
    if (btnText == 'AC') {
      num1 = 0;
      num2 = 0;
      result = '';
      finalResult = '0';
      operation = '';
      preOperation = '';
    } else if (operation == '=' && btnText == '=') {
      if (preOperation == '+') {
        finalResult = add();
      } else if (preOperation == '-') {
        finalResult = sub();
      } else if (preOperation == 'x') {
        finalResult = mul();
      } else if (preOperation == '/') {
        finalResult = div();
      }
    } else if (btnText == '+' ||
        btnText == '-' ||
        btnText == 'x' ||
        btnText == '/' ||
        btnText == '=') {
      if (num1 == 0) {
        num1 = double.parse(result);
      } else {
        if (result != '') {
          num2 = double.parse(result);
        }
      }
      if (operation == '+') {
        finalResult = add();
      } else if (operation == '-') {
        finalResult = sub();
      } else if (operation == 'x' && num2 != 0) {
        finalResult = mul();
      } else if (operation == '/' && num2 != 0) {
        finalResult = div();
      }
      preOperation = operation;
      operation = btnText;
      result = '';
    } else if (btnText == '%') {
      result = (double.parse(result) / 100).toString();
      finalResult = doesContainDecimal(result);
    } else if (btnText == '.') {
      if (!result.contains('.')) {
        result = '$result.';
      }
      finalResult = result;
    } else if (btnText == '⌫') {
      if (result.length == 1) {
        result = '0';
        finalResult = '0';
      } else {
        result = result.substring(0, result.length - 1);
        finalResult = result;
      }
    } else {
      if (result == '0') {
        result = btnText;
      } else {
        result = result + btnText;
      }
      finalResult = result;
    }

    if (finalResult.length > 7) {
      return finalResult.substring(0, 7);
    }
    return finalResult;
  }

  String add() {
    result = (num1 + num2).toString();
    num1 = double.parse(result);
    return doesContainDecimal(result);
  }

  String sub() {
    result = (num1 - num2).toString();
    num1 = double.parse(result);
    return doesContainDecimal(result);
  }

  String mul() {
    result = (num1 * num2).toString();
    num1 = double.parse(result);
    return doesContainDecimal(result);
  }

  String div() {
    result = (num1 / num2).toString();
    num1 = double.parse(result);
    return doesContainDecimal(result);
  }

  String doesContainDecimal(String result) {
    if (result.contains('.')) {
      List<String> splitDecimal = result.split('.');
      if (int.parse(splitDecimal[1]) == 0) {
        return result = splitDecimal[0];
      }
    }
    return result;
  }
}
