Script started on 2022-02-23 13:54:44-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="189" LINES="12"]
]0;sth6@gold15: ~/cs/214/projects/07/java[01;32msth6@gold15[00m:[01;34m~/cs/214/projects/07/java[00m$ cat Arrays.java 
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

    System.out.println("How many values would you like in the array? "); // prompt for the size
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

]0;sth6@gold15: ~/cs/214/projects/07/java[01;32msth6@gold15[00m:[01;34m~/cs/214/projects/07/java[00m$ javac -deprecation Arrays.java 
]0;sth6@gold15: ~/cs/214/projects/07/java[01;32msth6@gold15[00m:[01;34m~/cs/214/projects/07/java[00m$ java Arrays
How many values would you like in the array? 
-5
The size can't be negative.
]0;sth6@gold15: ~/cs/214/projects/07/java[01;32msth6@gold15[00m:[01;34m~/cs/214/projects/07/java[00m$ java Arrays
How many values would you like in the array? 
6
Please enter the array values: 
4
5.7
3
6
4.1
- 0
Your array values are: 
4.0
5.7
3.0
6.0
4.1
0.0
]0;sth6@gold15: ~/cs/214/projects/07/java[01;32msth6@gold15[00m:[01;34m~/cs/214/projects/07/java[00m$ java Arrays
How many values would you like in the array? 
3
Please enter the array values: 
959587
45
3
Your array values are: 
959587.0
45.0
3.0
]0;sth6@gold15: ~/cs/214/projects/07/java[01;32msth6@gold15[00m:[01;34m~/cs/214/projects/07/java[00m$ exit

Script done on 2022-02-23 13:55:16-05:00 [COMMAND_EXIT_CODE="0"]
