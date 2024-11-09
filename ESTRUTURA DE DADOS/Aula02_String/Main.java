package Aula02_String;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        /*
	        Aula 2  - Vetor de String e Busca linear -
	        https://youtu.be/XtiZbDtqc84?si=BVBkJnAis3duHBXW
        */
        String[] estados = new String[10];

        estados[0] = "AC";
        estados[1] = "BA";
        estados[2] = "CE";
        estados[3] = "DF";
        estados[4] = "AM";
        estados[5] = "AP";
        estados[6] = "PB";
        estados[7] = "RN";
        estados[8] = "MS";
        estados[9] = "SP";

        for (int i = 0; i < estados.length ; i++) {
            System.out.println("Estados na posição " + i + " contém " + estados[i]);
        }

        Scanner leitor = new Scanner(System.in);
        System.out.print("Qual Sigla você quer buscar? ");
        String siglaBusca = leitor.nextLine();

        //busca liner
        boolean encontrou = false;
        for (int i = 0; i < estados.length; i++) {

            String elemento = estados[i];
            if (elemento.equalsIgnoreCase(siglaBusca)) {
                encontrou = true;
                break;
            }
        }
        if (encontrou == true) {
            System.out.println("Sigal encontrada");
        }else {
            System.out.println("Sigal não encontrada");
        }
    }
}
