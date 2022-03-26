Script started on 2022-03-21 18:35:22-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="80" LINES="24"]
]0;sth6@gold30: ~/cs/214/projects/09/java[01;32msth6@gold30[00m:[01;34m~/cs/214/projects/09/java[00m$ cat t t Temperature.java   Temperaturet Tester.javva 
import javax.sound.midi.MidiSystem;
import java.util.Scanner;

/* Temperature.java implements class Temperature.
 * Student: Sam Hoogewind
 * Date: March 18, 2022
 ************************************************************/

// the Temperature class appears outside of the rest of the program
class Temperature {

    // Temperature object constructor with initialization  
    public Temperature(Double degrees, Character scale) {
        if (checkValidity(degrees, scale)) { // make sure the scale is a valid answer
            myDegrees = degrees; // instigate the variables
            myScale = Character.toUpperCase(scale); 
        } else {
            System.out.println("That is not a valid scale."); // otherwise print an error
        }
    }

    public Boolean checkValidity(Double degrees, Character scale) { // check the validity of the given parameters
        if ((Character.toUpperCase(scale) == 'F') | (Character.toUpperCase(scale) == 'C') | (Character.toUpperCase(scale) == 'K')) {
            return true;
        } else {
            return false;
        }
    }
   
    // extractor for degrees of a Temperature object
    public Double getDegrees() {
        return myDegrees;
    }
  
    // extractor for scale of a Temperature object
    public Character getScale() {
        return myScale;
    }
    
    // print string created by piecing together degrees and the scale
    public void printTemp() {
        System.out.printf("%.2f%c\t\t", myDegrees, myScale);
    }

    // convert temperature to fahrenheit
    public Temperature toFahrenheit() {
        if (myScale == 'C') {
            return new Temperature(((9.0 / 5.0) * myDegrees) + 32, 'F');
        } else if (myScale == 'K') {
            return new Temperature(((9.0 / 5.0) * (myDegrees - 273)) + 32, 'F');
        } else {
            return this;
        }
    }

    // convert temperature to celsius
    public Temperature toCelsius() {
        if (myScale == 'F') {
            return new Temperature((5.0 / 9.0) * (myDegrees - 32), 'C');
        } else if (myScale == 'K') {
            return new Temperature(myDegrees - 273, 'C');
        } else {
            return this;
        }
    }

    // convert temperature to kelvin
    public Temperature toKelvin() {
        if (myScale == 'C') {
            return new Temperature(myDegrees + 273, 'K');
        } else if (myScale == 'F') {
            return new Temperature(((5.0 / 9.0) * (myDegrees - 32)) + 273, 'K');
        } else {
            return this;
        }
    }

    // Raise the temperature by a given degree
    public Temperature raise(Double degrees) {
        return new Temperature(myDegrees + degrees, myScale);
    }

    // Lower the temperature by a given degree
    public Temperature lower(Double degrees) {
        return new Temperature(myDegrees - degrees, myScale);
    }

    // check if temperatures are equal
    public Boolean equals(Temperature aTemperature) {
        if (this.toFahrenheit().getDegrees() == aTemperature.toFahrenheit().getDegrees()) {
            return true;
        } else {
            return false;
        }
    }

    // check if one temperature is less than the other
    public Boolean less_than(Temperature aTemperature) {
        if (this.toFahrenheit().getDegrees() < aTemperature.toFahrenheit().getDegrees()) {
            return true;
        } else {
            return false;
        }
    }
  
    // read in a new temperature
    public static Temperature read(Scanner keyboard)
    {
        String aTemp = keyboard.nextLine();
        String[] arrayOfaTemp = aTemp.split(" ", 2); // split the temperature into the degree and character
        Double degrees = Double.parseDouble(arrayOfaTemp[0]);
        Character scale = arrayOfaTemp[1].charAt(0);
        Temperature newTemp = new Temperature(degrees, scale);
        if (newTemp.checkValidity(degrees, scale)) { // check the validity
            return newTemp;
        } else {
            return null;
        }
    }

    private Character myScale; Double myDegrees;  // private instance variables
  }
  
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
]0;sth6@gold30: ~/cs/214/projects/09/java[01;32msth6@gold30[00m:[01;34m~/cs/214/projects/09/java[00m$ [Kjavac -te  deprecation o TemperatureTester.java  
]0;sth6@gold30: ~/cs/214/projects/09/java[01;32msth6@gold30[00m:[01;34m~/cs/214/projects/09/java[00m$ [Kjava TemperatureTester
0 F
100 C
2.5
0.00F		-17.78C		255.22K		
2.50F		-16.39C		256.61K		
5.00F		-15.00C		258.00K		
7.50F		-13.61C		259.39K		
10.00F		-12.22C		260.78K		
12.50F		-10.83C		262.17K		
15.00F		-9.44C		263.56K		
17.50F		-8.06C		264.94K		
20.00F		-6.67C		266.33K		
22.50F		-5.28C		267.72K		
25.00F		-3.89C		269.11K		
27.50F		-2.50C		270.50K		
30.00F		-1.11C		271.89K		
32.50F		0.28C		273.28K		
35.00F		1.67C		274.67K		
37.50F		3.06C		276.06K		
40.00F		4.44C		277.44K		
42.50F		5.83C		278.83K		
45.00F		7.22C		280.22K		
47.50F		8.61C		281.61K		
50.00F		10.00C		283.00K		
52.50F		11.39C		284.39K		
55.00F		12.78C		285.78K		
57.50F		14.17C		287.17K		
60.00F		15.56C		288.56K		
62.50F		16.94C		289.94K		
65.00F		18.33C		291.33K		
67.50F		19.72C		292.72K		
70.00F		21.11C		294.11K		
72.50F		22.50C		295.50K		
75.00F		23.89C		296.89K		
77.50F		25.28C		298.28K		
80.00F		26.67C		299.67K		
82.50F		28.06C		301.06K		
85.00F		29.44C		302.44K		
87.50F		30.83C		303.83K		
90.00F		32.22C		305.22K		
92.50F		33.61C		306.61K		
95.00F		35.00C		308.00K		
97.50F		36.39C		309.39K		
100.00F		37.78C		310.78K		
102.50F		39.17C		312.17K		
105.00F		40.56C		313.56K		
107.50F		41.94C		314.94K		
110.00F		43.33C		316.33K		
112.50F		44.72C		317.72K		
115.00F		46.11C		319.11K		
117.50F		47.50C		320.50K		
120.00F		48.89C		321.89K		
122.50F		50.28C		323.28K		
125.00F		51.67C		324.67K		
127.50F		53.06C		326.06K		
130.00F		54.44C		327.44K		
132.50F		55.83C		328.83K		
135.00F		57.22C		330.22K		
137.50F		58.61C		331.61K		
140.00F		60.00C		333.00K		
142.50F		61.39C		334.39K		
145.00F		62.78C		335.78K		
147.50F		64.17C		337.17K		
150.00F		65.56C		338.56K		
152.50F		66.94C		339.94K		
155.00F		68.33C		341.33K		
157.50F		69.72C		342.72K		
160.00F		71.11C		344.11K		
162.50F		72.50C		345.50K		
165.00F		73.89C		346.89K		
167.50F		75.28C		348.28K		
170.00F		76.67C		349.67K		
172.50F		78.06C		351.06K		
175.00F		79.44C		352.44K		
177.50F		80.83C		353.83K		
180.00F		82.22C		355.22K		
182.50F		83.61C		356.61K		
185.00F		85.00C		358.00K		
187.50F		86.39C		359.39K		
190.00F		87.78C		360.78K		
192.50F		89.17C		362.17K		
195.00F		90.56C		363.56K		
197.50F		91.94C		364.94K		
200.00F		93.33C		366.33K		
202.50F		94.72C		367.72K		
205.00F		96.11C		369.11K		
207.50F		97.50C		370.50K		
210.00F		98.89C		371.89K		
All tests passed!
]0;sth6@gold30: ~/cs/214/projects/09/java[01;32msth6@gold30[00m:[01;34m~/cs/214/projects/09/java[00m$ java TemperatureTester
0 K
212 F
20.0
-459.40F		-273.00C		0.00K		
-423.40F		-253.00C		20.00K		
-387.40F		-233.00C		40.00K		
-351.40F		-213.00C		60.00K		
-315.40F		-193.00C		80.00K		
-279.40F		-173.00C		100.00K		
-243.40F		-153.00C		120.00K		
-207.40F		-133.00C		140.00K		
-171.40F		-113.00C		160.00K		
-135.40F		-93.00C		180.00K		
-99.40F		-73.00C		200.00K		
-63.40F		-53.00C		220.00K		
-27.40F		-33.00C		240.00K		
8.60F		-13.00C		260.00K		
44.60F		7.00C		280.00K		
80.60F		27.00C		300.00K		
116.60F		47.00C		320.00K		
152.60F		67.00C		340.00K		
188.60F		87.00C		360.00K		
All tests passed!
]0;sth6@gold30: ~/cs/214/projects/09/java[01;32msth6@gold30[00m:[01;34m~/cs/214/projects/09/java[00m$ exit

Script done on 2022-03-21 18:35:58-04:00 [COMMAND_EXIT_CODE="0"]
