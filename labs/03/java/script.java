Script started on 2022-01-27 12:37:28-05:00 [TERM="xterm-256color" TTY="/dev/pts/2" COLUMNS="80" LINES="24"]
]0;sth6@gold19: ~/cs/214/labs/03/java[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/03/java[00m$ cat YearCodes.a jaa va
/* YearCodes.java is a driver for function yearCode().
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 ****************************************************************/

import java.util.Scanner;

public class YearCodes {

   public static void main(String[] args) {
      Scanner keyboard = new Scanner(System.in);
      System.out.println("\nEnter your academic year: "); // prompt

      String year = keyboard.next();      // read year
      System.out.println(yearCode(year)); // display its code
   }

   /***************************************************************
    * yearCode() converts an academic year into its integer code.
    *
    * Receive: year, a string.
    * PRE: year is one of {freshman, sophomore, junior, or senior}.
    * Return: the integer code corresponding to year.
    */

    public static int yearCode(String year)
    {
       if (year.equals("freshman"))
          return 1;
       else if (year.equals("sophomore"))
          return 2;
       else if (year.equals("junior"))
          return 3;
       else if (year.equals("senior"))
          return 4;
       else
          return 0;
    }
    

}
]0;sth6@gold19: ~/cs/214/labs/03/java[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/03/java[00m$ javac- depr       -deprecation YearCodes.java
]0;sth6@gold19: ~/cs/214/labs/03/java[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/03/java[00m$ java YearCodes

Enter your academic year: 
freshman
1
]0;sth6@gold19: ~/cs/214/labs/03/java[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/03/java[00m$ java YearCodes

Enter your academic year: 
sophmore
0
]0;sth6@gold19: ~/cs/214/labs/03/java[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/03/java[00m$ java YearCodes

Enter your academic year: 
sophomore
2
]0;sth6@gold19: ~/cs/214/labs/03/java[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/03/java[00m$ java yearC     YearCodes

Enter your academic year: 
junior
3
]0;sth6@gold19: ~/cs/214/labs/03/java[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/03/java[00m$ java YearCodes

Enter your academic year: 
senior
4
]0;sth6@gold19: ~/cs/214/labs/03/java[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/03/java[00m$ exit
exit

Script done on 2022-01-27 12:38:43-05:00 [COMMAND_EXIT_CODE="0"]
