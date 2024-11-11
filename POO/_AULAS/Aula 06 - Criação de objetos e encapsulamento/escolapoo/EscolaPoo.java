package escolapoo;

import escola.Disciplica;

public class EscolaPoo {

     public static void main(String[] args) {
        
         Disciplica disciplica1 = new Disciplica();
         disciplica1.setNome("Matemática");
         disciplica1.setCargaHoraria(-10);
         
         System.out.println(disciplica1.getNome());
         System.out.println(disciplica1.getCargaHoraria());
         
    }
    
}
