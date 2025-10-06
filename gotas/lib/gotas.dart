class noNegativos extends Error {}

int calcularAguaAtrapada(List<int> alturas) {
  if (alturas.isEmpty || alturas.length < 3) {
    return 0;
  }

  for (int altura in alturas) {
    if (altura < 0) {
      throw noNegativos();
    }
  }

  final n = alturas.length;
  final maxIzquierda = List<int>.filled(n, 0);
  maxIzquierda[0] = alturas[0];
  
  for (int i = 1; i < n; i++) {
    maxIzquierda[i] = maxIzquierda[i - 1] > alturas[i] ? maxIzquierda[i - 1] : alturas[i];
  }
  
  final maxDerecha = List<int>.filled(n, 0);
  maxDerecha[n - 1] = alturas[n - 1];
  
  for (int i = n - 2; i >= 0; i--) {
    maxDerecha[i] = maxDerecha[i + 1] > alturas[i] ? maxDerecha[i + 1] : alturas[i];
  }
  
  int aguaTotal = 0;
  
  for (int i = 0; i < n; i++) {
    final nivelAgua = maxIzquierda[i] < maxDerecha[i] ? maxIzquierda[i] : maxDerecha[i];
    final aguaEnPosicion = nivelAgua - alturas[i];
    if (aguaEnPosicion > 0) {
      aguaTotal += aguaEnPosicion;
    }
  }
  
  return aguaTotal;
}


