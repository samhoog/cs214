/* Arrays.java prompts the user for a array size, then lets them input values before printing them back out.
 *
 * Student Name: Sam Hoogewind
 * Date: February 23, 2022
 *
 * Precondition: theArray, is an array of double values.
 * Output: the items in theArray.
 ***************************************************************/

import java.io.*; 
import java.util.Scanner;

public class Arrays
{
  public static void main(String[] args) {

    System.out.println("How many values would you like in the array?"); // prompt for the size
    Scanner keyboard = new Scanner(System.in); 
    int size = keyboard.nextInt(); // save the size
    if (size < 0) { // if they entered a negative value, give an error
        System.out.println("The size can't be negative.");
    } else {
        double[] anArray = new double[size]; // instigate the array
        readArray(anArray, keyboard); // read in the values
        printArray(anArray); // print the values
    }
  }
  

  /* readArray() is a method that reads in values from the user into anArray
   * Receive: anArray, an array of doubles.
   ************************************************************/

  public static void readArray(double anArray[], Scanner keyboard) { 
    System.out.println("Please enter the array values: "); // prompt for the values
    for (int i = 0; i < anArray.length; i++) { // loop through the size of the array
          anArray[i] = keyboard.nextDouble(); // take in values from the keyboard
    }
  }
  
  /* printArray() is a method that outputs a given array of doubles.
   * Receive: anArray, an array of doubles.
   **************************************************************/
  
  public static void printArray(double anArray[]) {
    System.out.println("Your array values are: "); 
    for (int i = 0; i < anArray.length; i++) { // loop through all the items
          System.out.println(anArray[i]); // print them
      }
  }

}

