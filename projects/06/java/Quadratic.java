/* Quadratic.java is a class and program that calculates the 
 * quadratic roots of an equation
 * 
 * Completed by: Sam Hoogewind
 * Date: February 15, 2022
 ***************************************************************/

import java.util.Scanner;

// java class Quadratic
public class Quadratic
{
  // main program
  public static void main(String[] args)
    {
      Scanner keyboard = new Scanner(System.in);
      // prompt for the equation
      System.out.println("\nTo calculate the quadratic roots, please enter the equation: ");
      
      // prompt for the first coefficient
      System.out.println("\nEnter the first coefficient: ");
      double a = keyboard.nextDouble();

      // prompt for the second coefficient
      System.out.println("\nEnter the second coefficient: ");
      double b = keyboard.nextDouble();

      // prompt for the third coefficient
      System.out.println("\nEnter the third coefficient: ");
      double c = keyboard.nextDouble();

      // Compute roots and print
      double [] rootList = new double[2];
      try { // try calculating the roots
          quadraticRoots(a, b, c, rootList); 
          System.out.println("\nThe roots of the equations are " + rootList[0] + "\n and " + rootList[1]);
      } catch (Exception e) { // print an exception if you run into any
          System.out.println(e);
      }
      
    }
  
  /* quadraticRoots() calculates the quadratic roots according to the equation specified
   * Receive: a, b, c - the coefficients of the equation
   *          rootList - an array of doubles in which to place results
   *****************************************************/
  public static void quadraticRoots(double a, double b, double c, double[] rootList) throws Exception
   {
     double root1, root2;
      if (a != 0) { // if x^2 isn't 0
         double arg = Math.pow(b, 2.0) - 4 * a * c; // calculate the part under the radical
         if (arg >= 0) { // if the part under the radical is greater than or equal to 0
            root1 = (-b + Math.sqrt(arg))/(2*a); // calculate each root, and set them into the array
            root2 = (-b - Math.sqrt(arg))/(2*a);
            rootList[0] = root1;
            rootList[1] = root2;
         } else { // otherwise you have imaginary numbers, so print an error
            root1 = root2 = 0.0;
            rootList[0] = root1;
            rootList[1] = root2;
            throw new Exception("\n*** quadraticRoots(): b^2 - 4ac is negative!");
         }
      } else { // otherwise x^2 is 0, so print an error
         root1 = root2 = 0.0;
         rootList[0] = root1;
         rootList[1] = root2;
         throw new Exception("\n*** QuadraticRoots(): a is zero!");
      }
   }
}
