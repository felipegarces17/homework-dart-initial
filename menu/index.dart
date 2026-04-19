// ============================================
// CLASE MENU - Muestra las opciones al usuario
// ============================================

import 'dart:io';

class Menu {
  void mostrar() {
    print('\n╔════════════════════════════════════╗');
    print('║     MENÚ DE EJERCICIOS EN DART     ║');
    print('╠════════════════════════════════════╣');
    print('║  1.  Positive Power                ║');
    print('║  2.  Double or Triple              ║');
    print('║  3.  Root or Square                ║');
    print('║  4.  Circle Perimeter              ║');
    print('║  5.  Midweek Day                   ║');
    print('║  6.  Tax Calculator                ║');
    print('║  7.  Remainder Finder              ║');
    print('║  8.  Sum of Evens                  ║');
    print('║  9.  Fraction Difference           ║');
    print('║  10. String Length                 ║');
    print('║  11. Average of Four               ║');
    print('║  12. Smallest of Five              ║');
    print('║  13. Vowel Counter                 ║');
    print('║  14. Factorial Finder              ║');
    print('║  15. InRange Validator             ║');
    print('╠════════════════════════════════════╣');
    print('║  q.  Salir                         ║');
    print('╚════════════════════════════════════╝');
    stdout.write('Elige una opción: ');
  }
}
