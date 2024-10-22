package Aula01_Vetor.vator;

public class programa {
    public static void main(String[] args) {

        /*
            Aula 1  - Vetor -
            https://youtu.be/8zVdz6TyV_c?si=CVQsQTCVvXfpk_hG
        */
        int[] vetorzao = new int[10];
        vetorzao[0] = 3;
        vetorzao[1] = 4;
        vetorzao[3] = 13; //não precisa estar em ordem.
        vetorzao[2] = 8;

        System.out.println("Imprimindo");

        //se quiser somente uma posição
        System.out.println(vetorzao[0]);

        //imprimindo todos os elementos
        for (int i = 0; i < vetorzao.length; i++) {
            System.out.println(vetorzao[i]);
        }
    }
}