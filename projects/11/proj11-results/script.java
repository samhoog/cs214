Script started on 2022-03-29 14:12:10-04:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="189" LINES="12"]
]0;sth6@gold02: ~/cs/214/projects/11/java[01;32msth6@gold02[00m:[01;34m~/cs/214/projects/11/java[00m$ cat Search.java 
/* Search.java finds a given integer in Java linked lists.
 *
 * Completed by: Sam Hoogewind
 * Date: March 29, 2022
 */

import java.util.LinkedList; 
import java.util.Iterator; 
import java.util.Collections;

public class Search {

  public static void main(String [] args) {
    LinkedList<Integer> list1 = new LinkedList<Integer>();
    LinkedList<Integer> list2 = new LinkedList<Integer>();
    LinkedList<Integer> list3 = new LinkedList<Integer>();
    LinkedList<Integer> list4 = new LinkedList<Integer>();

    list1.add(99);    // 99, 88, 77, 66, 55
    list1.add(88);    
    list1.add(77);
    list1.add(66);  
    list1.add(55);

    list2.add(55);    // 55, 66, 77, 88, 99
    list2.add(66);    
    list2.add(77);  
    list2.add(88);  
    list2.add(99);  
  
    list3.add(55);    // 55, 77, 99, 88, 66
    list3.add(77);    
    list3.add(99);  
    list3.add(88);  
    list3.add(66);  

    list4.add(11);    // 11, 22, 33, 44, 55
    list4.add(22);    
    list4.add(33);  
    list4.add(44);  
    list4.add(55);
  
    print(list1); 
    print(list2); 
    print(list3);
    print(list4);

    // test search on 4 values, one of them not in the list
    System.out.println("Index of 99 in list1: " + search(list1, 99));
    System.out.println("Index of 99 in list2: " + search(list2, 99));
    System.out.println("Index of 99 in list3: " + search(list3, 99));
    System.out.println("Index of 99 in list4: " + search(list4, 99));
  }

  /** print() displays a LinkedList on the console.
   *
   * @param: aList, a LinkedList<Integer>
   * 
   * Postcondition: the Integer values in aList
   *                 have been displayed to System.out,
   *                 separated by spaces.
   */
  public static void print(LinkedList<Integer> aList)
  {
    Iterator<Integer> listIterator = aList.iterator();
    while (listIterator.hasNext())
    {
      System.out.print(listIterator.next() + " ");
    }
    System.out.print('\n');
  }

  /** search() searchs a LinkedList for a given value
   *
   * @param: aList, a LinkedList<Integer> and aValue, a Integer
   * 
   * Postcondition: the index where aValue is in aList has been returned or -1 if not found
   */
  public static Integer search(LinkedList<Integer> aList, Integer aValue)
  {
    Iterator<Integer> listIterator = aList.iterator();
    Integer count = 0;
    while (listIterator.hasNext()) // while there is a next value
    {
        if (listIterator.next() == aValue) // if the next value is the search target
        {
            return count; // return the count
        }
        count ++; // otherwise increment the count
    }
    return -1; // it wasn't found, so return -1
  }

}

]0;sth6@gold02: ~/cs/214/projects/11/java[01;32msth6@gold02[00m:[01;34m~/cs/214/projects/11/java[00m$ javac -deprecation Search.java
]0;sth6@gold02: ~/cs/214/projects/11/java[01;32msth6@gold02[00m:[01;34m~/cs/214/projects/11/java[00m$ hava[K[K[K[Kjava Search
99 88 77 66 55 
55 66 77 88 99 
55 77 99 88 66 
11 22 33 44 55 
Index of 99 in list1: 0
Index of 99 in list2: 4
Index of 99 in list3: 2
Index of 99 in list4: -1
]0;sth6@gold02: ~/cs/214/projects/11/java[01;32msth6@gold02[00m:[01;34m~/cs/214/projects/11/java[00m$ exit

Script done on 2022-03-29 14:12:24-04:00 [COMMAND_EXIT_CODE="0"]
