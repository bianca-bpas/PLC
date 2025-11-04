package exerciciosLivro.capitulo2;
import java.util.Scanner;

// (Múltiplos) Escreva um aplicativo que leia dois inteiros, além de determinar se o primeiro é um múltiplo do segundo e imprimir o resultado. [Dica: utilize o operador de resto.]

public class Ex26 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Digite o primeiro número: ");
        int num1 = (int) input.nextInt();

        System.out.print("Digite o segundo número: ");
        int num2 = (int) input.nextInt();

        boolean multiplo = num1 % num2 == 0;

        if (multiplo) {
            System.out.println("Sim");
        } else {
            System.out.println("Não");
        }

        input.close();

    }
    
}
