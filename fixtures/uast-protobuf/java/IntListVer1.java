/**
 * A class to provide a simple list of integers.
 * List resizes automatically. Used to illustrate 
 * various design and implementation details of 
 * a class in Java.
 * 
 * Version 1 only contains the instance variables and
 * the constructors
 * @author scottm
 *
 */
public class IntListVer1 {
    // class constant for default size
    private static final int DEFAULT_CAP = 10;
    
    //instance variables
    private int[] iValues;
    private int iSize;
    
    /**
     * Default constructor. Creates an empty list.
     */
    public IntListVer1(){
        //redirect to single int constructor
        this(DEFAULT_CAP);
        //other statments could go here.
    }

    /**
     * Constructor to allow user of class to specify 
     * initial capacity in case they intend to add a lot
     * of elements to new list. Creates an empty list.
     * @param initialCap > 0
     */    
    public IntListVer1(int initialCap) {
        assert initialCap > 0 : "Violation of precondition. IntListVer1(int initialCap):"
            + "initialCap must be greater than 0. Value of initialCap: " + initialCap;
        iValues = new int[initialCap];
        iSize = 0;
    }
}
