Script started on 2022-03-11 13:24:35-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="189" LINES="12"]
]0;sth6@gold19: ~/cs/214/labs/09/java[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/09/java[00m$ cat n[KNameTester.ka[K[Kjava
/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Sam Hoogewind
 * Date: March 11, 2022
 ************************************************************/

public class NameTester  
{
  public static void main(String[] args)
  {
      Name aName = new Name("John", "Paul", "Jones");

      assert aName.getFirst().equals("John") ;
      assert aName.getMiddle().equals("Paul") ;
      assert aName.getLast().equals("Jones") ;

      System.out.println(aName);
      assert aName.toString().equals("John Paul Jones");

      System.out.println("All tests passed!");
  }
}
]0;sth6@gold19: ~/cs/214/labs/09/java[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/09/java[00m$ cat Name.aa[K[Kjava
/* Name.java implements class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Sam Hoogewind
 * Date: March 11, 2022
 ************************************************************/


// the Name class appears outside of the rest of the program
class Name {

    // Name object constructor with initialization  
    public Name(final String first, final String middle, final String last) {
        myFirst = first;
        myMiddle = middle;
        myLast = last;
    }
   
    // extractor for first name of a Name object
    public final String getFirst() {
        return myFirst;
    }
  
    // extractor for middle name of a Name object
    public final String getMiddle() {
        return myMiddle;
    }
  
    // extractor for last name of a Name object
    public final String getLast() {
        return myLast;
    }
    
    // return string created by piecing together first, middle, and last names
    public final String toString() {
        return myFirst + ' ' + myMiddle + ' ' + myLast;
    }
  
    private String myFirst, myMiddle, myLast;  // private instance variables
  }
  
  ]0;sth6@gold19: ~/cs/214/labs/09/java[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/09/java[00m$ javacc[K -deprecation NameTester.java 
]0;sth6@gold19: ~/cs/214/labs/09/java[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/09/java[00m$ java NameTester
John Paul Jones
All tests passed!
]0;sth6@gold19: ~/cs/214/labs/09/java[01;32msth6@gold19[00m:[01;34m~/cs/214/labs/09/java[00m$ exit

Script done on 2022-03-11 13:25:06-05:00 [COMMAND_EXIT_CODE="0"]
