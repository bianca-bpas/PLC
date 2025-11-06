package exerciciosLivro.capitulo4;
import java.util.Scanner;

/*(Calculador de comissão de vendas) Uma grande empresa paga seu pessoal de vendas com base em comissões. O pessoal de vendas recebe R$ 200 por semana mais 9% de suas vendas brutas durante esse período. Por exemplo, um vendedor que realiza um total de venda de mercadorias de R$ 5.000 em uma semana recebe R$ 200 mais 9% de R$ 5.000, um total de R$ 650. Foi-lhe fornecida uma lista dos itens vendidos por cada vendedor. Os valores desses itens são como segue: 
Item Value
1 239.99
2 129.75
3 99.95
4 350.89
Desenvolva um aplicativo Java que recebe entrada de itens vendidos por um vendedor durante a última semana e calcula e exibe os rendimentos do vendedor. Não existe nenhum limite para o número de itens que pode ser vendido.
*/

public class Ex19 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("Digite o número do item: ");
        int opcao = input.nextInt();

        double totalVendas = 0;

        while (opcao != -1) {
            if (opcao == 1){
                totalVendas = totalVendas + 239.99;
            } else if (opcao == 2) {
                totalVendas = totalVendas + 129.75;
            } else if (opcao == 3) {
                totalVendas = totalVendas + 99.95;
            } else if (opcao == 4) {
                totalVendas = totalVendas + 350.89;
            }
            System.out.print("Digite o número do item: ");
            opcao = input.nextInt();
        }
        double comissao = 0.09 * totalVendas;
        double  resultado = 200 + comissao;

        System.out.printf("Rendimento: %.2f%n", resultado);

        input.close();
    }
    
}
