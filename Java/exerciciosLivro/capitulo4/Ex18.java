package exerciciosLivro.capitulo4;

// (Calculador de limite de crédito) Desenvolva um aplicativo Java que determina se um cliente de uma loja de departamentos excedeu o limite de crédito em uma conta-corrente. Para cada cliente, os seguintes dados estão disponíveis: a) Número de conta. b) Saldo no início do mês. c) Total de todos os itens cobrados desse cliente no mês. d) Total de créditos aplicados ao cliente no mês. e) Limite de crédito autorizado. O programa deve inserir todos esses dados como inteiros, calcular o novo saldo (= saldo inicial + despesas – créditos), exibir o novo saldo e determinar se o novo saldo excede ao limite de crédito do cliente. Para aqueles clientes cujo limite de crédito foi excedido, o programa deve exibir a mensagem "Limite de crédito excedido".

public class Ex18 {
    public static void main(String[] args) {
        int saldoInicio = 1230;
        int totalItens = 30;
        int totalCredito = 300;
        int limiteCredito = 900;

        int novoSaldo = saldoInicio + totalItens - totalCredito;
        System.out.printf("Novo saldo: %d%n", novoSaldo);

        if (novoSaldo > limiteCredito) {
            System.out.println("Limite de crédito excedido");
        }

    }
    
}
