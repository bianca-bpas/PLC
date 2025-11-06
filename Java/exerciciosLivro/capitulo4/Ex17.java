package exerciciosLivro.capitulo4;
import java.util.Scanner;

// (Quilometragem de combustível) Os motoristas se preocupam com a quilometragem obtida por seus automóveis. Um motorista monitorou várias viagens registrando a quilometragem dirigida e a quantidade de combustível em litros utilizados para cada tanque cheio. Desenvolva um aplicativo Java que receba como entrada os quilômetros dirigidos e os litros de gasolina consumidos (ambos como inteiros) para cada viagem. O programa deve calcular e exibir o consumo em quilômetros/litro para cada viagem e imprimir a quilometragem total e a soma total de litros de combustível consumidos até esse ponto para todas as viagens. Todos os cálculos de média devem produzir resultados de ponto flutuante. Utilize classe Scanner e repetição controlada por sentinela para obter os dados do usuário

public class Ex17 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Digite o número de km: ");
        int km = input.nextInt();
        System.out.print("Digite o número de litros: ");
        int litros = input.nextInt();

        int totalKm = 0;
        int totalLitros = 0;
        while (km != -1 && litros != -1) {
            float media = (float) km / litros;
            System.out.printf("Km/L: %.2f%n", media);

            totalKm = totalKm + km;
            totalLitros = totalLitros + litros;

            System.out.printf("Km percorridos: %d%n", totalKm);
            System.out.printf("Litros consumidos: %d%n", totalLitros);

            System.out.print("Digite o número de km: ");
            km = input.nextInt();
            System.out.print("Digite o número de litros: ");
            litros = input.nextInt();
        }

        input.close();
    }
    
}
