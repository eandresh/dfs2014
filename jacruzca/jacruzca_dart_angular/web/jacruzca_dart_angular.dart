import 'dart:html';

InputElement masa;
InputElement estatura;
InputElement resultado;
ButtonElement calculateButton;

void main() {
  
  masa = querySelector("#masa");
  estatura = querySelector("#estatura");
  resultado = querySelector("#resultado");
  calculateButton = querySelector("#calculate");
  
  calculateButton.onClick.listen(calculate);
  
}

void calculate(Event e){
  double masaVal = double.parse(masa.value);
  double estaturaVal = double.parse(estatura.value);
  double res = (masaVal/(estaturaVal*estaturaVal));
  resultado.value = res.toString();
}