package exerciciosLivro.capitulo3;

public class Ex14 {
    public static void main(String[] args) {
        Ex14_Date data = new Ex14_Date(5, 20, 2024);

        // Exibe data inicial
        System.out.print("Data inicial: ");
        data.displayDate();

        // Altera valores
        data.setMes(12);
        data.setDia(31);
        data.setAno(2025);

        // Exibe data alterada
        System.out.print("Data alterada: ");
        data.displayDate();
    }
}
