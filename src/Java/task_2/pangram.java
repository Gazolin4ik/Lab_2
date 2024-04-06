import java.util.Scanner;
import java.util.Set;
import java.util.HashSet;

public class pangram {

    public static boolean isPangram(String sentence) {

        Set<Character> letters = new HashSet<>();

        for (char ch : sentence.toLowerCase().toCharArray()) {

            if (Character.isLetter(ch)) {
                letters.add(ch);
            }
        }

        return letters.size() == 26;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        String sentence = scanner.nextLine();
        System.out.println(isPangram(sentence));
        scanner.close();
    }
}