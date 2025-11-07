package exerciciosLivro.capitulo3;

// // (Classe Invoice) Crie uma classe chamada Invoice para que uma loja de suprimentos de informática a utilize para representar uma fatura de um item vendido nela. Uma Invoice (fatura) deve incluir quatro partes das informações como variáveis de instância — o número (tipo String), a descrição (tipo String), a quantidade comprada de um item (tipo int) e o preço por item (double). Sua classe deve ter um construtor que inicializa as quatro variáveis de instância. Forneça um método set e um get para cada variável de instância. Além disso, forneça um método chamado getInvoiceAmount que calcula o valor de fatura (isto é, multiplica a quantidade pelo preço por item) e depois retorna esse valor como double. Se a quantidade não for positiva, ela deve ser configurada como 0. Se o preço por item não for positivo, ele deve ser configurado como 0.0. Escreva um aplicativo de teste chamado InvoiceTest que demonstra as capacidades da classe Invoice.

public class Ex12_Invoice {
    public String numero;
    public String descricao;
    public int qtdComprada;
    public double preco;

    public Ex12_Invoice(String numero, String descricao, int qtdComprada, double preco) {
        this.numero = numero;
        this.descricao = descricao;
        this.qtdComprada = qtdComprada;
        this.preco = preco;
    }

    public double getInvoiceAmount(){
        return qtdComprada * preco;
    }

    public void setNumero(String numero){
        this.numero = numero;
    }

    public String getNumero(){
        return numero;
    }

    public void setDescricao(String descricao){
        this.descricao = descricao;
    }

    public String getDescricao(){
        return this.descricao;
    }

    public void setQtdComprada(int qtdComprada){
        this.qtdComprada = qtdComprada;
    }

    public int getQtdComprada(){
        return qtdComprada;
    }

    public void setPreco(double preco){
        this.preco = preco;
    }

    public double getPreco(){
        return preco;
    }
    
}
