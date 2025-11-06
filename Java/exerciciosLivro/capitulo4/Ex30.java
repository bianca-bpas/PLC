package exerciciosLivro.capitulo4;
import java.util.Scanner;

// (Palíndromos) Um palíndromo é uma sequência de caracteres que é lida da esquerda para a direita ou da direita para a esquerda. Por exemplo, cada um dos seguintes inteiros de cinco dígitos é um palíndromo: 12321, 55555, 45554 e 11611. Escreva um aplicativo que lê em um inteiro de cinco dígitos e determina se ele é ou não um palíndromo. Se o número não for de cinco dígitos, exiba uma mensagem de erro e permita que o usuário insira um novo valor

public class Ex30 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Digite o número: ");
        String numero = input.nextLine();

        if (numero.length() != 5){
            System.out.println("Erro: o número não contém 5 dígitos");
        } else {
            if (numero.charAt(0) == numero.charAt(4) && numero.charAt(1) == numero.charAt(3)){
                System.out.println("Palindromo!");
            } else {
                System.out.println("Não é Palíndromo!");
            }
        }

        input.close();
    }
}
