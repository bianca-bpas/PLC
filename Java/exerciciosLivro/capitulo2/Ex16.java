package exerciciosLivro.capitulo2;
import java.util.Scanner;

// (Comparando inteiros) Escreva um aplicativo que solicite ao usuário inserir dois inteiros, obtenha dele esses números e exiba o número maior seguido pelas palavras “is larger". Se os números forem iguais, imprima a mensagem “These numbers are equal".

public class Ex16 {
    public static void main (String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Digite o primeiro número: ");
        int num1 = (int) input.nextInt();
        System.out.print("Digite o segundo número: ");
        int num2 = (int) input.nextInt();

        if (num1 > num2) {
            System.out.printf("%d is larger", num1);
        } else if (num2 > num1) {
            System.out.printf("%d is larger", num2);
        } else {
            System.out.println("These numbers are equal");
        }

        input.close();
    }
}
