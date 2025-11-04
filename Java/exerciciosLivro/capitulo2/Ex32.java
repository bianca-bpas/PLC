package exerciciosLivro.capitulo2;
import java.util.Scanner;

// (Valores negativos, positivos e zero) Escreva um programa que insira cinco números, além de determinar e imprimir quantos negativos, quantos positivos e quantos zeros foram inseridos.

public class Ex32 {
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
        
        int qtdNegativos = 0;
        int qtdPositivos = 0;
        int qtdZeros = 0;

        for (int numero : numeros) {
            if (numero > 0) {
                qtdPositivos++;
                System.out.printf("%d - Positivo%n", numero);
            } else if (numero < 0) {
                qtdNegativos++;
                System.out.printf("%d - Negativo%n", numero);
            } else {
                qtdZeros++;
                System.out.printf("%d - Zero%n", numero);
            }
        }

        System.out.printf("Nº Negativos: %d%n", qtdNegativos);
        System.out.printf("Nº Positivos: %d%n", qtdPositivos);
        System.out.printf("Nº Zeros: %d%n", qtdZeros);

        input.close();
    }
}
