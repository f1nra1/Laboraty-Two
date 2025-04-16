import java.util.Scanner;
import java.io.UnsupportedEncodingException;
import java.io.OutputStreamWriter;
import java.io.Writer;

public class Main {
    public static void main(String[] args) throws UnsupportedEncodingException {
        // Устанавливаем кодировку UTF-8 для вывода в консоль
        Writer writer = new OutputStreamWriter(System.out, "UTF-8");
        System.setOut(new java.io.PrintStream(System.out, true, "UTF-8"));

        Scanner scanner = new Scanner(System.in);

        System.out.print("Введите количество чисел: ");
        int n = scanner.nextInt();
        scanner.nextLine(); // Ожидаем символ новой строки после ввода числа

        int sum = 0;

        for (int i = 0; i < n; i++) { // Считываем каждое число
            System.out.print("Введите число " + (i + 1) + ": ");
            String input = scanner.nextLine(); // Вводим одно число как строку

            for (char c : input.toCharArray()) {  // Разбираем каждое число
                if (Character.isDigit(c)) { // Проверяем, является ли символ цифрой
                    int digit = c - '0'; // Преобразуем символ в цифру
                    if (digit % 3 == 0) {
                        sum += digit;
                    }
                }
            }
        }

        System.out.println("Сумма цифр, делящихся на 3: " + sum);
        scanner.close();
    }
}

