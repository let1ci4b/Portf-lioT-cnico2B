import javax.swing.JOptionPane;

class Main{
  String nome = "nome";

  public static void main(String[]args) {
   Main n = new Main();
    n.qqrcoisa();
  n.manipulaString();
  
  }
public void qqrcoisa(){

}
public void manipulaString(){
  nome =  JOptionPane.showInputDialog("Qual seu nome, gatinho(a)");
  int suasCartas = Integer.parseInt(JOptionPane.showInputDialog(nome+" quantas cartas você tem?"));
  int cartasadversárias = Integer.parseInt
  (JOptionPane.showInputDialog(nome+" quantas cartas o adversário tem?"));

  if (suasCartas == 0 && cartasadversárias !=0){
    nome = "Voce ganhou o jogo!";

  }
  else if(suasCartas != 0 && cartasadversárias == 0){
    nome = "O adversario ganhou o jogo!";
  }
  else {
    manipulaString ();
  }
  if (suasCartas == 0 || cartasadversárias ==0){
  JOptionPane.showMessageDialog(null, nome);

  
}

}
}
