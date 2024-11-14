package escola;

import java.util.ArrayList;

public class Disciplica {
    private String nome;
    private int cargaHoraria;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getCargaHoraria() {
        return cargaHoraria;
    }

    public void setCargaHoraria(int cargaHoraria) {
        if(cargaHoraria >=0 ){
            this.cargaHoraria = cargaHoraria;
        }
    }
    
    
    
    ArrayList<Professor> Professores;
    ArrayList<Turma> turmas;
}
