package exerciciosLivro.capitulo3;

public class Ex13 {
    public static void main(String[] args) {
        Ex13_Employee emp1 = new Ex13_Employee("João", "Silva", 2500.0);
        Ex13_Employee emp2 = new Ex13_Employee("Maria", "Oliveira", 3200.0);

        // Exibe salário anual inicial
        System.out.println(emp1.getNome() + " " + emp1.getSobrenome() + " - Salário anual: " + (emp1.getSalario() * 12));
        System.out.println(emp2.getNome() + " " + emp2.getSobrenome() + " - Salário anual: " + (emp2.getSalario() * 12));

        // Aplica aumento de 10%
        emp1.aumentoSalario(10);
        emp2.aumentoSalario(10);

        // Exibe salário anual após aumento
        System.out.println("\nApós aumento de 10%:");
        System.out.println(emp1.getNome() + " " + emp1.getSobrenome() + " - Salário anual: " + (emp1.getSalario() * 12));
        System.out.println(emp2.getNome() + " " + emp2.getSobrenome() + " - Salário anual: " + (emp2.getSalario() * 12));
    }
}
