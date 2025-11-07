package exerciciosLivro.capitulo3;

// (Classe Invoice) Crie uma classe chamada Invoice para que uma loja de suprimentos de informática a utilize para representar uma fatura de um item vendido nela. Uma Invoice (fatura) deve incluir quatro partes das informações como variáveis de instância — o número (tipo String), a descrição (tipo String), a quantidade comprada de um item (tipo int) e o preço por item (double). Sua classe deve ter um construtor que inicializa as quatro variáveis de instância. Forneça um método set e um get para cada variável de instância. Além disso, forneça um método chamado getInvoiceAmount que calcula o valor de fatura (isto é, multiplica a quantidade pelo preço por item) e depois retorna esse valor como double. Se a quantidade não for positiva, ela deve ser configurada como 0. Se o preço por item não for positivo, ele deve ser configurado como 0.0. Escreva um aplicativo de teste chamado InvoiceTest que demonstra as capacidades da classe Invoice.

public class Ex12 {
    public static void main(String[] args) {
        Ex12_Invoice invoice = new Ex12_Invoice("123", "fruta", 3, 5.90);

        // Exibe os valores iniciais
        System.out.println("Número: " + invoice.getNumero());
        System.out.println("Descrição: " + invoice.getDescricao());
        System.out.println("Quantidade: " + invoice.getQtdComprada());
        System.out.println("Preço por item: " + invoice.getPreco());
        System.out.println("Valor da fatura: " + invoice.getInvoiceAmount());

        // Altera os valores
        invoice.setNumero("456");
        invoice.setDescricao("legume");
        invoice.setQtdComprada(5);
        invoice.setPreco(3.50);

        // Exibe os valores alterados
        System.out.println("\nApós alteração:");
        System.out.println("Número: " + invoice.getNumero());
        System.out.println("Descrição: " + invoice.getDescricao());
        System.out.println("Quantidade: " + invoice.getQtdComprada());
        System.out.println("Preço por item: " + invoice.getPreco());
        System.out.println("Valor da fatura: " + invoice.getInvoiceAmount());
    }

}
