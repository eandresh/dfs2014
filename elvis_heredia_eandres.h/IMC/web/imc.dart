import 'dart:html';
import 'dart:math';
Element peso;
Element estatura;
Element imc_e;
void main() {
  peso = querySelector("#peso");
  estatura = querySelector("#estatura");
  imc_e = querySelector("#IMC");
  querySelector("#calcular")
      ..onClick.listen(calcularIMC);
}

void calcularIMC(MouseEvent event) {
  double p =0.0;
  double e = 0.0;
  double imc = 0.0;
  if(peso.value!="" && estatura.value !=""){
    p = double.parse(peso.value,error_string);
    e = double.parse(estatura.value,error_string);
    peso.value = p.toString();
    estatura.value = e.toString();
    double ec = pow(e,2);
    imc = p / ec;
    imc_e.value = imc.toString();
  }else{
    if(peso.value!=""){
      window.alert("Escriba el peso");
      peso.focus();
    }
    
    if(estatura.value!=""){
      window.alert("Escriba la Estatura");
      estatura.focus();
    }
  }
}

double error_string(String e){
  return 0.0;
}
