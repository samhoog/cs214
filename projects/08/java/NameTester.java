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

