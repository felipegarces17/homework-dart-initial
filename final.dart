import 'dart:io';
import 'menu/index.dart';
import 'challenges/index.dart';

void main() {
  Menu menu = Menu();

  stdout.write('¡Bienvenido! ¿Cuál es tu nombre? ');
  String nombre = stdin.readLineSync()!;
  print('\n¡Hola, $nombre! Bienvenido a los ejercicios de Dart.');

  while (true) {
    menu.mostrar();
    String opcion = stdin.readLineSync()!.trim();

    if (opcion == 'q' || opcion == 'exit') {
      print('\n¡Hasta luego, $nombre! 👋');
      break;
    }

    switch (opcion) {
      case '1':
        PositivePower().run();
        break;
      case '2':
        DoubleOrTriple().run();
        break;
      case '3':
        RootOrSquare().run();
        break;
      case '4':
        CirclePerimeter().run();
        break;
      case '5':
        MidweekDay().run();
        break;
      case '6':
        TaxCalculator().run();
        break;
      case '7':
        RemainderFinder().run();
        break;
      case '8':
        SumOfEvens().run();
        break;
      case '9':
        FractionDifference().run();
        break;
      case '10':
        StringLength().run();
        break;
      case '11':
        AverageOfFour().run();
        break;
      case '12':
        SmallestOfFive().run();
        break;
      case '13':
        VowelCounter().run();
        break;
      case '14':
        FactorialFinder().run();
        break;
      case '15':
        InRangeValidator().run();
        break;
      default:
        print(
          '\n⚠️ Opción no válida. Elige un número del 1 al 15 o "q" para salir.',
        );
    }
  }
}
