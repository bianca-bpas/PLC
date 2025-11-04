package exerciciosLivro.capitulo2;
import java.util.Scanner;
import java.lang.Math;

// (Diâmetro, circunferência e área de um círculo) Escreva um aplicativo que leia a entrada a partir do usuário do raio de um círculo como um inteiro e imprima o diâmetro do círculo, circunferência e área utilizando o valor do ponto flutuante 3,14159 para S. [Observação: você também pode empregar a constante Math.PI predefinida para o valor de S. Essa constante é mais precisa que o valor 3,14159. A classe Math é definida no pacote java.lang. As classes nesse pacote são importadas automaticamente, portanto, você não precisa importar a classe Math para utilizá-la.] Adote as seguintes fórmulas (r é o raio): diâmetro = 2r, circunferência = 2Sr, área = Sr2. Não armazene os resultados de cada cálculo em uma variável. Em vez disso, especifique cada cálculo como o valor de saída em uma instrução System.out.printf. Os valores produzidos pelos cálculos de circunferência e área são números de ponto flutuante. A saída desses valores pode ser gerada com o especificador de formato %f em uma instrução System.out.printf.

public class Ex28 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Digite o número: ");
        int raio = (int) input.nextInt();
        int diametro = 2 * raio;
        double circunferencia = 2 * Math.PI * raio;
        double area = Math.PI * Math.pow(raio, 2);

        System.out.printf("Diâmetro: %d%n", diametro);
        System.out.printf("Circunferência: %.2f%n", circunferencia);
        System.out.printf("Área: %.2f%n", area);

        input.close();
    }
}
