package aula;

import javax.swing.JOptionPane;

public class Aula {

    public static void main(String[] args) {
        //relembrandoWhile();
        //aprendendoFor();
    }    
    public static void relembrandoWhile(){
        int n = 0;
        while(n < 7){
            n++;
            System.out.println(n);
        }
    }
    
    public static void aprendendoFor(){
        for(int bidu = 0; bidu < 100; bidu++){
            if(bidu % 2 == 0 ){
                System.out.println(bidu);
            }
        }    
    }
}
