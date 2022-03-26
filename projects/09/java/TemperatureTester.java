/* TemperatureTester.java is a 'driver' to test class Temperature.
 * Student: Sam Hoogewind
 * Date: March 18, 2022
 ************************************************************/
import java.util.Scanner;

public class TemperatureTester  
{
  public static void main(String[] args)
  {
      Scanner keyboard = new Scanner(System.in); // create a new keyboard
      Temperature baseTemp = Temperature.read(keyboard); // instigate the temperatures
      Temperature limitTemp = Temperature.read(keyboard);
      Double stepValue = keyboard.nextDouble();

      while (baseTemp.less_than(limitTemp)) { // print out the table
        baseTemp.toFahrenheit().printTemp();
        baseTemp.toCelsius().printTemp();
        baseTemp.toKelvin().printTemp();
        System.out.println();
        baseTemp = baseTemp.raise(stepValue);
      }

      System.out.println("All tests passed!");
  }
}
