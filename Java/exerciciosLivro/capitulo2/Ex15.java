package exerciciosLivro.capitulo2;
import java.util.Scanner;

// (Aritmética) Escreva um aplicativo que solicite ao usuário inserir dois inteiros, obtenha dele esses números e imprima sua soma, produto, diferença e quociente (divisão)

public class Ex15 {
    public static void main (String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Digite o primeiro número: ");
        int num1 = (int) input.nextInt();
        System.out.print("Digite o segundo número: ");
        int num2 = (int) input.nextInt();

        int soma = num1 + num2;
        int produto = num1 * num2;
        int diferenca = num1 - num2;
        float quociente = (float) num1 / num2;

        System.out.printf("Soma: %d%n", soma);
        System.out.printf("Produto: %d%n", produto);
        System.out.printf("Diferença: %d%n", diferenca);
        System.out.printf("Quociente: %.2f%n", quociente);

        input.close();
    }
}
