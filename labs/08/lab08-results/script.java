Script started on 2022-03-09 13:17:52-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="189" LINES="12"]
]0;sth6@gold01: ~/cs/214/labs/08/java[01;32msth6@gold01[00m:[01;34m~/cs/214/labs/08/java[00m$ cat NameTester.java
/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Sam Hoogewind
 * Date: March 7, 2022
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
}

]0;sth6@gold01: ~/cs/214/labs/08/java[01;32msth6@gold01[00m:[01;34m~/cs/214/labs/08/java[00m$ java -ea mname[K[K[K[K[KNameTester
John Paul Jones
All tests passed!
]0;sth6@gold01: ~/cs/214/labs/08/java[01;32msth6@gold01[00m:[01;34m~/cs/214/labs/08/java[00m$ make clean
rm -f *.class *.o *.ali *~ name_tester
]0;sth6@gold01: ~/cs/214/labs/08/java[01;32msth6@gold01[00m:[01;34m~/cs/214/labs/08/java[00m$ make java
javac -deprecation NameTester.java
]0;sth6@gold01: ~/cs/214/labs/08/java[01;32msth6@gold01[00m:[01;34m~/cs/214/labs/08/java[00m$ java -ea NameTester
John Paul Jones
All tests passed!
]0;sth6@gold01: ~/cs/214/labs/08/java[01;32msth6@gold01[00m:[01;34m~/cs/214/labs/08/java[00m$ exit

Script done on 2022-03-09 13:18:21-05:00 [COMMAND_EXIT_CODE="0"]
