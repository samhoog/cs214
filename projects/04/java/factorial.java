/* factorial.java calculates factorials
 *
 * Input: n, an int
 * PRE: n > 0.
 * Output: The factorial of n
 * 
 * Completed by: Sam Hoogewind
 * Date: February 4, 2022
 ********************************************************/
import java.util.Scanner; 		// Get input

class factorial {

    public static double factorial(int n) { // calculate the factorial
        double answer = 1.0;

        for (int i = 2; i <= n; i++) {
            answer *= i;
        }
        return answer;
    }

    public static void main(String[] args){
      Scanner keyboard = new Scanner(System.in);
      System.out.println("\nTo compute n!, enter n: "); // prompt user
      int n;
      n = keyboard.nextInt();

      System.out.println(n + "! = " + factorial(n)); // output result
    }
  }


