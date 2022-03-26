Script started on 2022-02-15 10:41:01-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="189" LINES="12"]
]0;sth6@gold16: ~/cs/214/labs/06/java[01;32msth6@gold16[00m:[01;34m~/cs/214/labs/06/java[00m$ cat Split.java 
/* Split.java is a class and program that splits a string
 * into two substrings.
 * 
 * Begun by: Serita Nelesen
 * Completed by: Sam Hoogewind
 ***************************************************************/

import java.util.Scanner;

// java class Split
public class Split
{
  // main program
  public static void main(String[] args)
    {
      Scanner keyboard = new Scanner(System.in);
      // prompt for the string
      System.out.println("\nTo split a string, enter the string: ");
      String theString = keyboard.next();
      
      // prompt for splitting position
      System.out.println("\nEnter the split position: ");
      int position = keyboard.nextInt();

      //Create list, compute results and print
      String [] resultList = new String[2];
      splitter(theString, position, resultList);
      System.out.println("\nThe first part is " + resultList[0] + "\n and the second part is " + resultList[1]);
      
    }
  
  /* splitter() splits a string according to the position specified
   * Receive: 	theString - the string to be split
   * 		pos - the position at which to split
   *            resList - an array of strings in which to place results
   *****************************************************/
  public static void splitter(String theString, int pos, String[] results)
    {
      results[0] = theString.substring(0, pos);
      results[1] = theString.substring(pos, theString.length());
    } 
}
]0;sth6@gold16: ~/cs/214/labs/06/java[01;32msth6@gold16[00m:[01;34m~/cs/214/labs/06/java[00m$ javac -deprecation Split.java
]0;sth6@gold16: ~/cs/214/labs/06/java[01;32msth6@gold16[00m:[01;34m~/cs/214/labs/06/java[00m$ java Split

To split a string, enter the string: 
hello

Enter the split position: 
3

The first part is hel
 and the second part is lo
]0;sth6@gold16: ~/cs/214/labs/06/java[01;32msth6@gold16[00m:[01;34m~/cs/214/labs/06/java[00m$ java Split

To split a string, enter the string: 
hello

Enter the split position: 
0

The first part is 
 and the second part is hello
]0;sth6@gold16: ~/cs/214/labs/06/java[01;32msth6@gold16[00m:[01;34m~/cs/214/labs/06/java[00m$ exit

Script done on 2022-02-15 10:41:28-05:00 [COMMAND_EXIT_CODE="0"]
