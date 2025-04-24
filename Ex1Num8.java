import java.util.Scanner;

public class Main {
    public static void main(String[] args)
    {
        try (Scanner scanner = new Scanner(System.in)) { // Используем try-with-resources для автоматического закрытия Scanner
            System.out.print("Введите n: ");
            if (!scanner.hasNextInt()) // Проверка на корректный ввод
            {
                System.out.println("Ошибка: необходимо ввести целое число.");
                return;
            }

            int n = scanner.nextInt();

            if (n <= 0 || n > 26) { // Проверка диапазона
                System.out.println("Ошибка: n должно быть в диапазоне 1-26.");
                return;
            }

            printPattern(n); // Выносим логику печати в отдельный метод
        }
    }

    private static void printPattern(int n) {
        for (int i = 1; i <= n; i++) {
            // Оптимизировал вычисление начального символа
            char startChar = (char) ('A' + n - 1);
            for (char ch = startChar; ch >= startChar - i + 1; ch--) {
                System.out.print(ch + " ");
            }
            System.out.println();
        }
    }
}