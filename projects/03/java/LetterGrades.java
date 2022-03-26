/* letterGrade.java calculates your letter grade
 *
 * Input: The grade average
 * Precondition: The average is an integer 0-100
 * Output: The corrosponding letter grade
 *
 * Completed by: Sam Hoogewind
 * Date: January 31, 2022
 **********************************************************/

import java.util.Scanner;

public class LetterGrades {

   public static void main(String[] args) {
      Scanner keyboard = new Scanner(System.in);
      System.out.println("\nEnter your grade average: "); // prompt

      int average = keyboard.nextInt();      // read average
      System.out.println(letterGrade(average)); // display the grade
   }

   /***************************************************************
    * letterGrade() converts a grade average to it's letter grade.
    *
    * Receive: average, an int.
    * PRE: average is an int between 0 and 100
    * Return: the grade corrosponding to the average
    */

    public static char letterGrade(int average)
   {
      switch (average / 10)
      {
         case 10: case 9:
            return 'A';
         case 8:
            return 'B';
         case 7:
            return 'C';
         case 6:
            return 'D';
         default:
            return 'F';
      }
   }
    

}