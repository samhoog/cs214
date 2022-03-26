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
  
  