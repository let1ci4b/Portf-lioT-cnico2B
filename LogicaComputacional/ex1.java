public static void programa(){
        double m = 0;
        double j = 0;
        String juros = JOptionPane.showInputDialog("Digite s para juros simples\nDigite c para juros compostos");
        double c = Double.parseDouble(JOptionPane.showInputDialog("Digite o capital inicial"));
        double i = Double.parseDouble(JOptionPane.showInputDialog("Digite a taxa"))/100;
        int t = Integer.parseInt(JOptionPane.showInputDialog("Digite o tempo"));
        
        if(juros.equals("c") || juros.equals("C")){
            m = c*Math.pow((1+i),t); // m = c * (1+i)^t 
            j = m - c;
            JOptionPane.showMessageDialog(null,"Juros: "+j);
            JOptionPane.showMessageDialog(null,"Montante: "+m);
        }
        else if (juros.equals("s") || juros.equals("S")){
            j = c*i*t;
            m = c+j;
            JOptionPane.showMessageDialog(null,"Juros: "+j);
            JOptionPane.showMessageDialog(null,"Montante: "+m);
        }
        else{
            JOptionPane.showMessageDialog(null,"Digitou algo inválido!");
            programa();
        }
    }
