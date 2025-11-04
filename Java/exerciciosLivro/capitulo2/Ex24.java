package exerciciosLivro.capitulo2;
import java.util.Scanner;
import java.util.Arrays;

// (Inteiros maiores e menores) Escreva um aplicativo que leia cinco inteiros, além de determinar e imprimir o maior e o menor inteiro no grupo. 

public class Ex24 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Digite o primeiro número: ");
        int num1 = (int) input.nextInt();
        System.out.print("Digite o segundo número: ");
        int num2 = (int) input.nextInt();
        System.out.print("Digite o terceiro número: ");
        int num3 = (int) input.nextInt();
        System.out.print("Digite o quarto número: ");
        int num4 = (int) input.nextInt();
        System.out.print("Digite o quinto número: ");
        int num5 = (int) input.nextInt();

        int[] numeros = {num1, num2, num3, num4, num5};
        int maior = Arrays.stream(numeros).max().getAsInt();
        int menor = Arrays.stream(numeros).min().getAsInt();

        System.out.printf("Maior: %d%n", maior);
        System.out.printf("Menor: %d%n", menor);

        input.close();
    }
    
}
