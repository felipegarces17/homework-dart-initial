// Autor: Felipe Garces - felipegarces17
// Curso: Optativa 1 - Uniendo backend y frontend
// ITM - 2026
// Descripción: 15 ejercicios iniciales de programación en Dart
import 'dart:io';
import 'dart:math';

// ============================================
// EJERCICIO 1 - Positive Power
// ============================================
class PositivePower {
  void run() {
    print('\n=== Ejercicio 1: Positive Power ===');
    print(
      '📝 Eleva al cuadrado números positivos. Negativos y cero tienen respuesta especial.',
    );
    stdout.write('Ingresa un número: ');
    int numero = int.parse(stdin.readLineSync()!);
    if (numero > 0) {
      print('Resultado: ${numero * numero}');
    } else if (numero < 0) {
      print('Resultado: Número negativo.');
    } else {
      print('Resultado: 0');
    }
  }
}

// ============================================
// EJERCICIO 2 - Double or Triple
// ============================================
class DoubleOrTriple {
  void run() {
    print('\n=== Ejercicio 2: Double or Triple ===');
    print(
      '📝 Compara dos números: si el primero es mayor devuelve su doble, si no el triple del segundo.',
    );
    stdout.write('Ingresa el primer número: ');
    int a = int.parse(stdin.readLineSync()!);
    stdout.write('Ingresa el segundo número: ');
    int b = int.parse(stdin.readLineSync()!);
    if (a > b) {
      print('Resultado: ${a * 2}');
    } else {
      print('Resultado: ${b * 3}');
    }
  }
}

// ============================================
// EJERCICIO 3 - Root or Square
// ============================================
class RootOrSquare {
  void run() {
    print('\n=== Ejercicio 3: Root or Square ===');
    print(
      '📝 Positivos: calcula la raíz cuadrada. Negativos: eleva al cuadrado.',
    );
    stdout.write('Ingresa un número: ');
    int numero = int.parse(stdin.readLineSync()!);
    if (numero > 0) {
      print('Resultado: ${sqrt(numero.toDouble())}');
    } else if (numero < 0) {
      print('Resultado: ${numero * numero}');
    } else {
      print('Resultado: 0');
    }
  }
}

// ============================================
// EJERCICIO 4 - Circle Perimeter
// ============================================
class CirclePerimeter {
  void run() {
    print('\n=== Ejercicio 4: Circle Perimeter ===');
    print(
      '📝 Calcula el perímetro de un círculo usando la fórmula 2 × π × radio.',
    );
    stdout.write('Ingresa el radio del círculo: ');
    double radio = double.parse(stdin.readLineSync()!);
    double perimetro = 2 * pi * radio;
    print('Resultado: ${perimetro.toStringAsFixed(2)}');
  }
}

// ============================================
// EJERCICIO 5 - Midweek Day
// ============================================
class MidweekDay {
  void run() {
    print('\n=== Ejercicio 5: Midweek Day ===');
    print(
      '📝 Convierte un número del 1 al 5 en su día laboral. 6 y 7 están fuera del rango.',
    );
    stdout.write('Ingresa un número del 1 al 7: ');
    int dia = int.parse(stdin.readLineSync()!);
    switch (dia) {
      case 1:
        print('Resultado: Lunes');
        break;
      case 2:
        print('Resultado: Martes');
        break;
      case 3:
        print('Resultado: Miércoles');
        break;
      case 4:
        print('Resultado: Jueves');
        break;
      case 5:
        print('Resultado: Viernes');
        break;
      default:
        print('Resultado: Número fuera del rango laboral.');
    }
  }
}

// ============================================
// EJERCICIO 6 - Tax Calculator
// ============================================
class TaxCalculator {
  void run() {
    print('\n=== Ejercicio 6: Tax Calculator ===');
    print(
      '📝 Calcula el 15% de impuesto sobre lo que exceda de 12.000 en el salario anual.',
    );
    stdout.write('Ingresa tu salario anual: ');
    double salario = double.parse(stdin.readLineSync()!);
    if (salario > 12000) {
      double impuesto = (salario - 12000) * 0.15;
      print('Resultado: $impuesto');
    } else {
      print('Resultado: No debe impuestos.');
    }
  }
}

// ============================================
// EJERCICIO 7 - Remainder Finder
// ============================================
class RemainderFinder {
  void run() {
    print('\n=== Ejercicio 7: Remainder Finder ===');
    print(
      '📝 Calcula el residuo (sobrado) de dividir el primer número entre el segundo.',
    );
    stdout.write('Ingresa el primer número: ');
    int a = int.parse(stdin.readLineSync()!);
    stdout.write('Ingresa el segundo número: ');
    int b = int.parse(stdin.readLineSync()!);
    print('Resultado: ${a % b}');
  }
}

// ============================================
// EJERCICIO 8 - Sum of Evens
// ============================================
class SumOfEvens {
  void run() {
    print('\n=== Ejercicio 8: Sum of Evens ===');
    print(
      '📝 Sin necesidad de entrada, suma automáticamente todos los números pares del 1 al 50.',
    );
    int suma = 0;
    for (int i = 1; i <= 50; i++) {
      if (i % 2 == 0) suma += i;
    }
    print('Resultado: $suma');
  }
}

// ============================================
// EJERCICIO 9 - Fraction Difference
// ============================================
class FractionDifference {
  void run() {
    print('\n=== Ejercicio 9: Fraction Difference ===');
    print('📝 Resta dos fracciones y muestra el resultado simplificado.');
    stdout.write('Numerador de la primera fracción: ');
    int num1 = int.parse(stdin.readLineSync()!);
    stdout.write('Denominador de la primera fracción: ');
    int den1 = int.parse(stdin.readLineSync()!);
    stdout.write('Numerador de la segunda fracción: ');
    int num2 = int.parse(stdin.readLineSync()!);
    stdout.write('Denominador de la segunda fracción: ');
    int den2 = int.parse(stdin.readLineSync()!);
    int numRes = (num1 * den2) - (num2 * den1);
    int denRes = den1 * den2;
    if (numRes == 0) {
      print('Resultado: 0');
    } else {
      int mcd = _calcularMCD(numRes.abs(), denRes);
      print('Resultado: ${numRes ~/ mcd}/${denRes ~/ mcd}');
    }
  }

  int _calcularMCD(int a, int b) {
    while (b != 0) {
      int temp = b;
      b = a % b;
      a = temp;
    }
    return a;
  }
}

// ============================================
// EJERCICIO 10 - String Length
// ============================================
class StringLength {
  void run() {
    print('\n=== Ejercicio 10: String Length ===');
    print(
      '📝 Cuenta cuántos caracteres tiene la palabra ingresada, incluyendo espacios.',
    );
    stdout.write('Ingresa una palabra: ');
    String palabra = stdin.readLineSync()!;
    print('Resultado: ${palabra.length}');
  }
}

// ============================================
// EJERCICIO 11 - Average of Four
// ============================================
class AverageOfFour {
  void run() {
    print('\n=== Ejercicio 11: Average of Four ===');
    print(
      '📝 Suma cuatro números y los divide entre 4 para obtener el promedio.',
    );
    List<double> numeros = [];
    for (int i = 1; i <= 4; i++) {
      stdout.write('Ingresa el número $i: ');
      numeros.add(double.parse(stdin.readLineSync()!));
    }
    double promedio = numeros.reduce((a, b) => a + b) / 4;
    print('Resultado: $promedio');
  }
}

// ============================================
// EJERCICIO 12 - Smallest of Five
// ============================================
class SmallestOfFive {
  void run() {
    print('\n=== Ejercicio 12: Smallest of Five ===');
    print('📝 Compara cinco números y devuelve el más pequeño de todos.');
    List<double> numeros = [];
    for (int i = 1; i <= 5; i++) {
      stdout.write('Ingresa el número $i: ');
      numeros.add(double.parse(stdin.readLineSync()!));
    }
    double menor = numeros.reduce((a, b) => a < b ? a : b);
    print('Resultado: $menor');
  }
}

// ============================================
// EJERCICIO 13 - Vowel Counter
// ============================================
class VowelCounter {
  void run() {
    print('\n=== Ejercicio 13: Vowel Counter ===');
    print(
      '📝 Recorre cada letra de la palabra y cuenta cuántas son vocales (a,e,i,o,u).',
    );
    stdout.write('Ingresa una palabra: ');
    String palabra = stdin.readLineSync()!.toLowerCase();
    int vocales = palabra.split('').where((l) => 'aeiou'.contains(l)).length;
    print('Resultado: $vocales');
  }
}

// ============================================
// EJERCICIO 14 - Factorial Finder
// ============================================
class FactorialFinder {
  void run() {
    print('\n=== Ejercicio 14: Factorial Finder ===');
    print(
      '📝 Multiplica el número por todos los enteros menores hasta 1. Ej: 5! = 5×4×3×2×1 = 120.',
    );
    stdout.write('Ingresa un número: ');
    int numero = int.parse(stdin.readLineSync()!);
    int factorial = 1;
    for (int i = 1; i <= numero; i++) {
      factorial *= i;
    }
    print('Resultado: $factorial');
  }
}

// ============================================
// EJERCICIO 15 - InRange Validator
// ============================================
class InRangeValidator {
  void run() {
    print('\n=== Ejercicio 15: InRange Validator ===');
    print('📝 Verifica si el número está entre 10 y 20 (ambos incluidos).');
    stdout.write('Ingresa un número: ');
    int numero = int.parse(stdin.readLineSync()!);
    if (numero >= 10 && numero <= 20) {
      print('Resultado: Está en el rango.');
    } else {
      print('Resultado: Fuera del rango.');
    }
  }
}
