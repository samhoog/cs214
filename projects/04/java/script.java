Script started on 2022-02-04 14:19:20-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;sth6@gold07: ~/cs/214/projects/04/java[01;32msth6@gold07[00m:[01;34m~/cs/214/projects/04/java[00m$ cat factorial.java 
/* factorial.java calculates factorials
 *
 * Input: n, an int
 * PRE: n > 0.
 * Output: The factorial of n
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


]0;sth6@gold07: ~/cs/214/projects/04/java[01;32msth6@gold07[00m:[01;34m~/cs/214/projects/04/java[00m$ javac -deprecation factorial.java 
]0;sth6@gold07: ~/cs/214/projects/04/java[01;32msth6@gold07[00m:[01;34m~/cs/214/projects/04/java[00m$ java factorial

To compute n!, enter n: 
5
5! = 120.0
]0;sth6@gold07: ~/cs/214/projects/04/java[01;32msth6@gold07[00m:[01;34m~/cs/214/projects/04/java[00m$ java factorial

To compute n!, enter n: 
6
6! = 720.0
]0;sth6@gold07: ~/cs/214/projects/04/java[01;32msth6@gold07[00m:[01;34m~/cs/214/projects/04/java[00m$ java factorial

To compute n!, enter n: 
3
3! = 6.0
]0;sth6@gold07: ~/cs/214/projects/04/java[01;32msth6@gold07[00m:[01;34m~/cs/214/projects/04/java[00m$ exit
exit

Script done on 2022-02-04 14:19:44-05:00 [COMMAND_EXIT_CODE="0"]
