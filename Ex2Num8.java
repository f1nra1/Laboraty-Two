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

        System.out.print("Введите количество цветов: ");
        int n = scanner.nextInt();

        int[] water = new int[n];
        System.out.println("Введите потребность каждого цветка через пробел:");
        for (int i = 0; i < n; ++i) {
            water[i] = scanner.nextInt();
        }

        System.out.print("Введите объем лейки: ");
        int capacity = scanner.nextInt();

        int steps = 0;
        int currentWater = capacity;
        int position = -1; // начинаем с реки

        for (int i = 0; i < n; ++i) {
            if (currentWater >= water[i]) {
                steps += Math.abs(position - i);
                currentWater -= water[i];
                position = i;
            } else {
                // идем к реке и обратно
                steps += Math.abs(position - (-1)); // до реки
                position = -1;
                currentWater = capacity;

                steps += Math.abs(position - i); // обратно к цветку
                currentWater -= water[i];
                position = i;
            }
        }

        System.out.println("Общее количество шагов: " + steps);
        scanner.close();
    }
}

