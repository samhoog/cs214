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
