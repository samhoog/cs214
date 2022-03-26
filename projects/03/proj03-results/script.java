Script started on 2022-01-31 16:09:41-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;sth6@remotel2: ~/cs/214/projects/03/java[01;32msth6@remotel2[00m:[01;34m~/cs/214/projects/03/java[00m$ cat letter_       Lee  etterGrades.java
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
    

}]0;sth6@remotel2: ~/cs/214/projects/03/java[01;32msth6@remotel2[00m:[01;34m~/cs/214/projects/03/java[00m$ javac -deprecation let   LetterGrades.java 
]0;sth6@remotel2: ~/cs/214/projects/03/java[01;32msth6@remotel2[00m:[01;34m~/cs/214/projects/03/java[00m$ java LetterGrades

Enter your grade average: 
95
A
]0;sth6@remotel2: ~/cs/214/projects/03/java[01;32msth6@remotel2[00m:[01;34m~/cs/214/projects/03/java[00m$ java LetterGrades

Enter your grade average: 
86
B
]0;sth6@remotel2: ~/cs/214/projects/03/java[01;32msth6@remotel2[00m:[01;34m~/cs/214/projects/03/java[00m$ java LetterGrades

Enter your grade average: 
74
C
]0;sth6@remotel2: ~/cs/214/projects/03/java[01;32msth6@remotel2[00m:[01;34m~/cs/214/projects/03/java[00m$ java LetterGrades

Enter your grade average: 
69 8
D
]0;sth6@remotel2: ~/cs/214/projects/03/java[01;32msth6@remotel2[00m:[01;34m~/cs/214/projects/03/java[00m$ java LetterGrades

Enter your grade average: 
35
F
]0;sth6@remotel2: ~/cs/214/projects/03/java[01;32msth6@remotel2[00m:[01;34m~/cs/214/projects/03/java[00m$ java LetterGrades

Enter your grade average: 
100
A
]0;sth6@remotel2: ~/cs/214/projects/03/java[01;32msth6@remotel2[00m:[01;34m~/cs/214/projects/03/java[00m$ exit
exit

Script done on 2022-01-31 16:10:34-05:00 [COMMAND_EXIT_CODE="0"]
