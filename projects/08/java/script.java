Script started on 2022-03-10 12:39:38-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="189" LINES="12"]
]0;sth6@gold19: ~/cs/214/projects/08/java[01;32msth6@gold19[00m:[01;34m~/cs/214/projects/08/java[00m$ cat NameTester.java
/* NameTester.java is a 'driver' to test class Name with additional functions.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Sam Hoogewind
 * Date: March 10, 2022
 ************************************************************/

import java.util.Scanner;

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

      // test changing each name
      aName.setFirst("Samuel");
      aName.setMiddle("Thomas");
      aName.setLast("Hoogewind");

      System.out.println(aName);
      assert aName.toString().equals("Samuel Thomas Hoogewind");
      
      // test lfmi()
      System.out.println(aName.lfmi());
      assert aName.lfmi().equals("Hoogewind, Samuel T.");

      // test read()
      Scanner keyboard = new Scanner(System.in);
      aName.read(keyboard);
      System.out.println(aName);
      System.out.println(aName.lfmi());

      System.out.println("All tests passed!");
  }
}

class Name
{
  private String myFirst, myMiddle, myLast;

  public Name(String first, String middle, String last)
  {
    myFirst = first;
    myMiddle = middle;
    myLast = last;
  }

  public String getFirst()
  {
    return myFirst;
  }

  public String getMiddle()
  {
    return myMiddle;
  }

  public String getLast()
  {
    return myLast;
  }

  public String toString()
  {
    return myFirst + ' ' + myMiddle + ' ' + myLast;
  }

  // change the first name
  public void setFirst(String aFirst) 
  {
    myFirst = aFirst;
  }

  // change the middle name
  public void setMiddle(String aMiddle) 
  {
    myMiddle = aMiddle;
  }

  // change the last name
  public void setLast(String aLast) 
  {
    myLast = aLast;
  }

  // return a name in Last-First-MiddleInitial form
  public String lfmi()
  {
    return myLast + ", " + myFirst + " " + myMiddle.charAt(0) + ".";
  }

  // read in a name
  public void read(Scanner keyboard)
  {
    myFirst = keyboard.next();
    myMiddle = keyboard.next();
    myLast = keyboard.next();
  }

}

]0;sth6@gold19: ~/cs/214/projects/08/java[01;32msth6@gold19[00m:[01;34m~/cs/214/projects/08/java[00m$ javac -deprecation p[Ka[KNameTester.java 
]0;sth6@gold19: ~/cs/214/projects/08/java[01;32msth6@gold19[00m:[01;34m~/cs/214/projects/08/java[00m$ javac -ea[K[K[K[K[K -ea NameTester
John Paul Jones
Samuel Thomas Hoogewind
Hoogewind, Samuel T.
Justin
Andrew
Voss
Justin Andrew Voss
Voss, Justin A.
All tests passed!
]0;sth6@gold19: ~/cs/214/projects/08/java[01;32msth6@gold19[00m:[01;34m~/cs/214/projects/08/java[00m$ exit

Script done on 2022-03-10 12:40:01-05:00 [COMMAND_EXIT_CODE="0"]
