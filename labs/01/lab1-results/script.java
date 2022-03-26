Script started on 2022-01-13 12:54:44-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;sth6@gold19: ~/cs/214[01;32msth6@gold19[00m:[01;34m~/cs/214[00m$ cat CircleArea.java
/* CircleArea.java computes the area of a circle.
 *
 * Input: The radius of the circle.
 * Precondition: The radius is a positive number.
 * Output: The area of the circle.
 *
 * Begun by: Dr. Adams, for CS 214, at Calvin College.
 * Completed by: Sam Hoogewind
 * Date: January 13, 2022
 **********************************************************/


import java.util.Scanner;  // include class for Scanner

public class CircleArea {

     /* function circleArea() computes a circle's area, given its radius.
      * Parameter: r, a double
      * Precondition: r is not negative.
      * Returns: the area of the circle
      */
     public static double circleArea(double r) {
        return Math.PI * r * r;               // return an expression
     } // circleArea method
	
  // main program
  public static void main(String[] args) {
      // prompt for radius
      System.out.println("\n\nTo compute the area of a circle,");
      System.out.print(" enter its radius: ");

      // Create a connection named keyboard to standard in
      Scanner keyboard = new Scanner(System.in);

      //Get the number from the user
      double radius = keyboard.nextDouble();

      // output area
      System.out.println("\nThe area is " + circleArea(radius) + "\n");
      System.out.printf("The area is %f\n\n", circleArea(radius));
      System.out.printf("The area is %.15f\n\n", circleArea(radius));
  }  // main method

} // class CircleArea]0;sth6@gold19: ~/cs/214[01;32msth6@gold19[00m:[01;34m~/cs/214[00m$ javac -deprecation CircleArea.a java
]0;sth6@gold19: ~/cs/214[01;32msth6@gold19[00m:[01;34m~/cs/214[00m$ java CircleArea


To compute the area of a circle,
 enter its radius: 1

The area is 3.141592653589793

The area is 3.141593

The area is 3.141592653589793

]0;sth6@gold19: ~/cs/214[01;32msth6@gold19[00m:[01;34m~/cs/214[00m$ java Circke  leArea


To compute the area of a circle,
 enter its radius: 2

The area is 12.566370614359172

The area is 12.566371

The area is 12.566370614359172

]0;sth6@gold19: ~/cs/214[01;32msth6@gold19[00m:[01;34m~/cs/214[00m$ java CircleArea


To compute the area of a circle,
 enter its radius: 2.5

The area is 19.634954084936208

The area is 19.634954

The area is 19.634954084936208

]0;sth6@gold19: ~/cs/214[01;32msth6@gold19[00m:[01;34m~/cs/214[00m$ java CircleArea


To compute the area of a circle,
 enter its radius: 4.99999

The area is 78.53950218079365

The area is 78.539502

The area is 78.539502180793650

]0;sth6@gold19: ~/cs/214[01;32msth6@gold19[00m:[01;34m~/cs/214[00m$ exit
exit

Script done on 2022-01-13 12:55:38-05:00 [COMMAND_EXIT_CODE="0"]
