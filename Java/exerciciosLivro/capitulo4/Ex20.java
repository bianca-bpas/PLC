package exerciciosLivro.capitulo4;
import java.util.Scanner;

// (Calculador de salários) Desenvolva um aplicativo Java que determina o salário bruto de cada um de três empregados. A empresa paga as horas normais pelas primeiras 40 horas trabalhadas por cada funcionário e 50% a mais por todas as horas trabalhadas além das 40 horas. Você recebe uma lista de empregados, o número de horas trabalhadas por eles na semana passada e o salário-hora de cada um. Seu programa deve aceitar a entrada dessas informações para cada empregado e, então, determinar e exibir o salário bruto do empregado. Utilize a classe Scanner para inserir os dados.

public class Ex20 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        for (int i = 1; i <= 3; i++) {
            System.out.print("Digite o número de horas trabalhadas: ");
            int numHorasTrabalhadas = input.nextInt();
            System.out.print("Digite o valor do salário por hora: ");
            double salarioHora = input.nextDouble();

            double salarioBruto;

            if (numHorasTrabalhadas <= 40) {
                salarioBruto = salarioHora * numHorasTrabalhadas;
            } else {
                double horasExtras = numHorasTrabalhadas - 40;
                salarioBruto = (40 * salarioHora) + (horasExtras * salarioHora * 1.5);
            }

            System.out.printf("Salário bruto: %.2f%n", salarioBruto);
        }

        input.close();
    }
}
