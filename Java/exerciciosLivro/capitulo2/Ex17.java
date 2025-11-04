package exerciciosLivro.capitulo2;
import java.util.Scanner;
import java.util.Arrays;

// (Aritmética, menor e maior) Escreva um aplicativo que insira três inteiros digitados pelo usuário e exiba a soma, média, produto e os números menores e maiores. [Observação: o cálculo da média neste exercício deve resultar em uma representação de inteiro. Assim, se a soma dos valores for 7, a média deverá ser 2, não 2,3333...]

public class Ex17 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
    
        System.out.print("Digite o primeiro número: ");
        int num1 = (int) input.nextInt();
        System.out.print("Digite o segundo número: ");
        int num2 = (int) input.nextInt();
        System.out.print("Digite o terceiro número: ");
        int num3 = (int) input.nextInt();

        int soma = num1 + num2 + num3;
        int media = soma / 3;
        int produto = num1 * num2 * num3;
        
        int[] numeros = {num1, num2, num3};
        int maior = Arrays.stream(numeros).max().getAsInt();
        int menor = Arrays.stream(numeros).min().getAsInt();

        System.out.printf("Soma: %d%n", soma);
        System.out.printf("Média: %d%n", media);
        System.out.printf("Produto: %d%n", produto);
        System.out.printf("Maior: %d%n", maior);
        System.out.printf("Menor: %d%n", menor);

        input.close();
    }
}
