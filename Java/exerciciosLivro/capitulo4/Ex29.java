package exerciciosLivro.capitulo4;
import java.util.Scanner;

// (Quadrado de asteriscos) Escreva um aplicativo que solicita ao usuário que insira o tamanho do lado de um quadrado e, então, exibe um quadrado vazio desse tamanho com asteriscos. Seu programa deve trabalhar com quadrados de todos os comprimentos de lado possíveis entre 1 e 20.

public class Ex29 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Digite o tamanho: ");
        int tamanho = input.nextInt();

        for (int i = 1; i <= tamanho; i++){
            for (int j = 1; j < tamanho; j++){
                if (i == 1 || i == tamanho || j ==1){
                    System.out.print("*");
                } else {
                    System.out.print(" ");
                }
            }
            System.out.println("*");
        }
        
        input.close();
    }
}
