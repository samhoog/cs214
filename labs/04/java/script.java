Script started on 2022-02-03 12:30:11-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;sth6@gold19: ~/cs/214/labs/04/java[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/04/java[00m$ ca  t log   LogTable.java
/* LogTable.java displays a table of logarithms.
 *
 * Input: start, stop and increment, three doubles.
 * PRE: start < stop && increment > 0.
 * Output: A table of logarithms from start to stop,
 *         with increment as the step value.
 * Begun by: Nelesen, for CS 214 at Calvin College.
 * Completed by: Sam Hoogewind
 ********************************************************/
import java.util.Scanner; 		// Get input

class LogTable{

  public static void main(String[] args){
    Scanner keyboard = new Scanner(System.in);
    System.out.println("To display a table of logarithms,");
    System.out.println("enter the start, stop and increment values: ");
    double start, stop, increment;
    start = keyboard.nextDouble();
    stop = keyboard.nextDouble();
    increment = keyboard.nextDouble();

    while (start < stop) {
      System.out.println("The logarithm of " + start + " is " + Math.log10(start));
      start += increment;
    }

  }
}

]0;sth6@gold19: ~/cs/214/labs/04/java[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/04/java[00m$ javac -deprecation log   LogTable.java 
]0;sth6@gold19: ~/cs/214/labs/04/java[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/04/java[00m$ java logfile    Table
Error: Could not find or load main class logTable
Caused by: java.lang.ClassNotFoundException: logTable
]0;sth6@gold19: ~/cs/214/labs/04/java[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/04/java[00m$ java LogTable
To display a table of logarithms,
enter the start, stop and increment values: 
1
10
0.5
The logarithm of 1.0 is 0.0
The logarithm of 1.5 is 0.17609125905568124
The logarithm of 2.0 is 0.3010299956639812
The logarithm of 2.5 is 0.3979400086720376
The logarithm of 3.0 is 0.47712125471966244
The logarithm of 3.5 is 0.5440680443502757
The logarithm of 4.0 is 0.6020599913279624
The logarithm of 4.5 is 0.6532125137753437
The logarithm of 5.0 is 0.6989700043360189
The logarithm of 5.5 is 0.7403626894942439
The logarithm of 6.0 is 0.7781512503836436
The logarithm of 6.5 is 0.8129133566428556
The logarithm of 7.0 is 0.8450980400142568
The logarithm of 7.5 is 0.8750612633917001
The logarithm of 8.0 is 0.9030899869919435
The logarithm of 8.5 is 0.9294189257142927
The logarithm of 9.0 is 0.9542425094393249
The logarithm of 9.5 is 0.9777236052888477
]0;sth6@gold19: ~/cs/214/labs/04/java[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/04/java[00m$ exit
exit

Script done on 2022-02-03 12:30:44-05:00 [COMMAND_EXIT_CODE="0"]
