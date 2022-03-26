Script started on 2022-03-24 12:30:30-04:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="173" LINES="12"]
]0;sth6@gold30: ~/cs/214/labs/10/java[01;32msth6@gold30[00m:[01;34m~/cs/214/labs/10/java[00m$ cat bird.j[K[K[K[K[K[KBird.java Birds.java Duck..[Kjava Goose.java o[Ko[KOwl.java 
/* Bird.java provides a Bird class.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sam Hoogewind
 * Date: March 24, 2022
 ******************************************************/

import java.io.*;

public class Bird
{

 /* default constructor
  * PostCond: myName == "".
  */
  public Bird()
  {
    myName = "";
  } 

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Bird(String name)
  {
    myName = name;
  } 

 /* Name accessor
  * Return: myName.
  */
  public String getName()
  {
    return myName;
  } 

 /* A Bird's Call
  * Return: a default bird-call ("Squawk!").
  */
  public String call()
  {
    return "Squaaaaaaaaaawk!";
  } 

 /* Output a Bird 
  * Output: Everything known about myself
  *          to the standard output stream.
  */
  public void print()
  {
    System.out.println( getName() + ' ' + getClass().getName()
                           + " says " + call() );
  }


  private String myName;
}

/* Birds.java illustrates inheritance and polymorphism.
 *
 * Begun by: Joel Adams, for CS 214 Lab 10 at Calvin College.
 * Completed by: Sam Hoogewind
 * Date: March 24, 2022
 *********************************************************/

public class Birds {
  
  public static void main(String[] args) {
      System.out.println("\nWelcome to the Bird Park!\n");

      Bird bird0 = new Bird();

      Bird bird1 = new Bird("Hawkeye");
      bird1.print();

      Duck bird2 = new Duck("Donald");
      bird2.print();

      Goose bird3 = new Goose("Mother Goose");
      bird3.print();

      Owl bird4 = new Owl("Woodsey");
      bird4.print();
      System.out.println();
    }
}

/* Duck.java provides a Duck subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sam Hoogewind
 * Date: March 24, 2022
 ******************************************************/

public class Duck extends Bird{
    
 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Duck() {
    super();
  }

 public Duck(String name)
 {     
    super(name);
 } 


 /* A Duck's Call
  * Return: a duck-call ("Quack!").
  */
  public String call()
  {
    return "Quack!";
  } 
}

/* Goose.java provides a Goose subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sam Hoogewind
 * Date: March 24, 2022
 ******************************************************/

public class Goose extends Bird {

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Goose()
  {
    super();
  }

  public Goose(String name)
  {     
    super(name);
  } 


 /* A Goose's Call
  * Return: a goose-call ("Honk!").
  */
  public String call()
  {
    return "Honk!";
  } 

} 

/* Owl.java provides an Owl subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sam Hoogewind
 * Date: March 24, 2022
 ******************************************************/

public class Owl extends Bird {

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Owl()
  {
    super();
  }

  public Owl(String name)
  {
    super(name);
  }

 /* An Owl's Call
  * Return: an owl-call ("Whoo-hoo!").
  */
  public String call()
  {
    return "Whoooooo!";
  }

} 

]0;sth6@gold30: ~/cs/214/labs/10/java[01;32msth6@gold30[00m:[01;34m~/cs/214/labs/10/java[00m$ javac -deprecation Birds.java
]0;sth6@gold30: ~/cs/214/labs/10/java[01;32msth6@gold30[00m:[01;34m~/cs/214/labs/10/java[00m$ java bird[K[K[K[KBirds

Welcome to the Bird Park!

Hawkeye Bird says Squaaaaaaaaaawk!
Donald Duck says Quack!
Mother Goose Goose says Honk!
Woodsey Owl says Whoooooo!

]0;sth6@gold30: ~/cs/214/labs/10/java[01;32msth6@gold30[00m:[01;34m~/cs/214/labs/10/java[00m$ exit

Script done on 2022-03-24 12:31:00-04:00 [COMMAND_EXIT_CODE="0"]
