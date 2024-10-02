package Aula01.vator;

public class programa {
    public static void main(String[] args) {
        int[] vetorzao = new int[10];
        vetorzao[0] = 3;
        vetorzao[1] = 4;
        vetorzao[3] = 13; //não precisa estar em ordem.
        vetorzao[2] = 8;
        vetorzao[5] = 51; //não precisa estar em ordem.
        vetorzao[4] = 22;
        vetorzao[6] = 33;
        System.out.println("Imprimendo");

        //se quiser somente uma posição
        System.out.println(vetorzao[0]);

        //imprimindo todos os elementos
        for (int i = 0; i < vetorzao.length; i++) {
            System.out.println(vetorzao[i]);
        }
    }
}
