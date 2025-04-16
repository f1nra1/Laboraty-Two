import java.util.Scanner;
import java.io.UnsupportedEncodingException;

public class Main {
    public static void main(String[] args) throws UnsupportedEncodingException {
        // Устанавливаем кодировку
        System.setOut(new java.io.PrintStream(System.out, true, "UTF-8"));
        
        Scanner scanner = new Scanner(System.in);

        System.out.print("Введите n: ");
        int n = scanner.nextInt();

        for (int i = 1; i <= n; i++) {
            for (char ch = (char) ('A' + n - 1); ch >= 'A' + n - i; ch--) {
                System.out.print(ch + " ");
            }
            System.out.println();
        }

        scanner.close();
    }
}

