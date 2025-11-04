package exerciciosLivro.capitulo2;
import java.util.Scanner;

// (Separando os dígitos em um inteiro) Escreva um aplicativo que insira um número consistindo em cinco dígitos a partir do usuário, separe o número em seus dígitos individuais e imprima os dígitos separados uns dos outros por três espaços. Por exemplo, se o usuário digitar o número 42339, o programa deve imprimir. Suponha que o usuário insira o número correto de dígitos. O que acontece quando você insere um número com mais de cinco dígitos? O que acontece quando você insere um número com menos de cinco dígitos?

public class Ex30 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Digite o número: ");
        String numero = input.nextLine();

        for (int i = 0; i < numero.length(); i++){
            System.out.printf("%c ", numero.charAt(i));
        }

        input.close();
    }
}
