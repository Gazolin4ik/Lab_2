import java.util.Scanner;

public class numbers {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println();
        int count = scanner.nextInt();

        for (int i = 1; i <= count; i++) {
            int num = scanner.nextInt();
            if (isSumLessThanProduct(num)) {
                System.out.print(i + " ");
            }
        }
        scanner.close();
        System.out.println();
    }

    private static boolean isSumLessThanProduct(int num) {
        int sum = 0, product = 1;

        while (num > 0) {
            int digit = num % 10;
            sum += digit;
            product *= digit;
            num /= 10;
        }

        return sum < product;
    }
}