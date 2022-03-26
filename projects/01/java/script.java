Script started on 2022-01-15 10:33:05-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;sth6@gold03: ~/cs/214/projects/01/java[01;32msth6@gold03[00m:[01;34m~/cs/214/projects/01/java[00m$ cat RectangleArea.java
/* RecangleArea.java computes the area of a rectangle.
 *
 * Input: The width and height of the rectangle.
 * Precondition: The radius is a positive number.
 * Output: The area of the rectangle.
 *
 * Begun by: Dr. Adams, for CS 214, at Calvin College.
 * Completed by: Sam Hoogewind
 * Date: January 15, 2022
 **********************************************************/


import java.util.Scanner;  // include class for Scanner

public class RectangleArea {

     /* function rectangleArea() computes a rectangle's area, given its width and height.
      * Parameter: w and h, a double
      * Precondition: w and h are not negative.
      * Returns: the area of the rectangle
      */
     public static double rectangleArea(double w, double h) {
        return w * h;               // return an expression
     } // rectangleArea method
	
  // main program
  public static void main(String[] args) {
      // prompt for radius
      System.out.println("\n\nTo compute the area of a rectangle,");
      System.out.print(" enter its width: ");

      // Create a connection named keyboard to standard in
      Scanner keyboard = new Scanner(System.in);

      //Get the width from the user
      double width = keyboard.nextDouble();

      //Get the height from the user
      System.out.print(" enter its height: ");
      double height = keyboard.nextDouble();

      // output area
      System.out.println("\nThe area is " + rectangleArea(width, height) + "\n");
  } // main method

} // class RectangleArea
]0;sth6@gold03: ~/cs/214/projects/01/java[01;32msth6@gold03[00m:[01;34m~/cs/214/projects/01/java[00m$ javac -deprecation RectangleArea.a java
]0;sth6@gold03: ~/cs/214/projects/01/java[01;32msth6@gold03[00m:[01;34m~/cs/214/projects/01/java[00m$ java RectangleArea


To compute the area of a rectangle,
 enter its width: 2
 enter its height: 5

The area is 10.0

]0;sth6@gold03: ~/cs/214/projects/01/java[01;32msth6@gold03[00m:[01;34m~/cs/214/projects/01/java[00m$ java RectangleArea


To compute the area of a rectangle,
 enter its width: 9
 enter its height: 4

The area is 36.0

]0;sth6@gold03: ~/cs/214/projects/01/java[01;32msth6@gold03[00m:[01;34m~/cs/214/projects/01/java[00m$ java RectangleArea


To compute the area of a rectangle,
 enter its width: 2
 enter its height: 4

The area is 8.0

]0;sth6@gold03: ~/cs/214/projects/01/java[01;32msth6@gold03[00m:[01;34m~/cs/214/projects/01/java[00m$ exit
exit

Script done on 2022-01-15 10:33:53-05:00 [COMMAND_EXIT_CODE="0"]
