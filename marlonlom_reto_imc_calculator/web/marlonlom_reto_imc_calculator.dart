//info@seguridadcamaleon.com

import 'dart:html';

InputElement massInput;
InputElement heigthInput;
ButtonElement calculatorBtn;

void main() {
  massInput = querySelector("#mass_val") as InputElement;
  heigthInput = querySelector("#height_val") as InputElement;
  calculatorBtn = querySelector("#calculateBtn") as ButtonElement;
  calculatorBtn.onClick.listen(listenCalculatorClick);
}


void listenCalculatorClick(MouseEvent event) {
  String massv = massInput.value;
  String heigthv = heigthInput.value;
  // mass / estatura (al cuadrado)
  if (massv.isEmpty || heigthv.isEmpty){
    (querySelector(".class_result") as InputElement).value = '';
  }else{
    double p0 = double.parse(massv);
    double p1 = double.parse(heigthv);
    double result = p0 / (p1*p1);
    (querySelector("#calcResult") as InputElement).value = result.toString();
  }
}
