# Autora: Letícia Beatriz souza
# Descrição: Código para calcular idade

import javax.swing.JOptionPane;


public class Main{

  String nome = "nome";

  int ano;

  int idadeatual;


  public static void main(String[]args) {

   Main n = new Main();

  n.manipulaString();

  }

public void qqrcoisa(){


}

public void manipulaString(){

  nome =  JOptionPane.showInputDialog("Digite seu nome");

ano =Integer.parseInt(JOptionPane.showInputDialog("Digite o ano que você nasceu"));

idadeatual = 2021-ano;

nome = nome+ " sua idade é " +idadeatual;

    JOptionPane.showMessageDialog(null, nome);

}

}
