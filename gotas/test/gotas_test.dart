import 'package:gotas/gotas.dart';
import 'package:test/test.dart';

int calcularAguaAtrapada (List<int> alturas){
  throw UnimplementedError("Funcion pendiente de implementacion");
}
void main() {
  test('Array vacío debe retornar 0', () {
      expect(calcularAguaAtrapada([]), equals(0));
    });

    test('Array con un solo elemento debe retornar 0', () {
      expect(calcularAguaAtrapada([5]), equals(0));
    });

    test('Array con dos elementos debe retornar 0', () {
      expect(calcularAguaAtrapada([3, 2]), equals(0));
    });

    test('Array con tres elementos sin agua debe retornar 0', () {
      expect(calcularAguaAtrapada([1, 2, 3]), equals(0));
    });

    test('Array ascendente no atrapa agua', () {
      expect(calcularAguaAtrapada([1, 2, 3, 4, 5]), equals(0));
    });

    test('Array descendente no atrapa agua', () {
      expect(calcularAguaAtrapada([5, 4, 3, 2, 1]), equals(0));
    });

    test('Array plano no atrapa agua', () {
      expect(calcularAguaAtrapada([3, 3, 3, 3]), equals(0));
    });
  
    test('Ejemplo principal: [6, 0, 3, 4, 1, 3] debe retornar 7', () {
      final alturas = [6, 0, 3, 4, 1, 3];
      expect(calcularAguaAtrapada(alturas), equals(7));
    });
  }
  

