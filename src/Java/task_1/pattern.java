import java.util.Scanner;

public class pattern {
    public static void printAlphabetPyramid(int N) {
        // Iterate from n to 1 to print rows from top to bottom
        for (int row = N; row > 0; row--) {
            // Iterate from n to row to print characters in the row from right to left
            for (int letter = N; letter >= row; letter--) {
                // Print the character starting from the corresponding row number
                System.out.print((char)('A' + letter - 1) + " ");
            }
            // Move to the next line
            System.out.println();
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int N = scanner.nextInt();
        printAlphabetPyramid(N);
    }
}