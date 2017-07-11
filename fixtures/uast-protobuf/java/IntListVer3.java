/**
 * A class to provide a simple list of integers.
 * List resizes automatically. Used to illustrate 
 * various design and implementation details of 
 * a class in Java.
 * 
 * Version 3 added the insert and remove methods. Changed the
 * add method to rely on insert.
 * @author scottm
 *
 */
public class IntListVer3{
    // class constant for default size
    private static final int DEFAULT_CAP = 10;
    
    //instance variables
    // iValues store the elements of the list and 
    // may have extra capacity
    private int[] iValues;
    private int iSize;
    
    /**
     * Default constructor. Creates an empty list.
     */
    public IntListVer3(){
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
    public IntListVer3(int initialCap) {
        assert initialCap > 0 : "Violation of precondition. IntListVer1(int initialCap):"
            + "initialCap must be greater than 0. Value of initialCap: " + initialCap;
        iValues = new int[initialCap];
        iSize = 0;
    }
    
    /**
     * Default add method. Add x to the end of this IntList.
     * Size of the list goes up by 1.
     * @param x The value to add to the end of this list.
     */
    public void add(int x){
        //example of loose coupling
        insert(iSize, x);
    }
    
    /**
     * Retrieve an element from the list based on position.
     * @param pos 0 <= pos < size()
     * @return The element at the given position.
     */
    public int get(int pos){
        assert 0 <= pos && pos < size() : "Failed precondition get. " +
        		"pos it out of bounds. Value of pos: " + pos;
        return iValues[pos];
    }
    
    /**
     * Insert x at position pos. Elements with a position equal
     * to pos or more are shifted to the right. (One added to their
     * position.)
     * post: get(pos) = x, size() = old size() + 1
     * @param pos 0 <= pos <= size()
     * @param x
     */
    public void insert(int pos, int x){
        assert 0 <= pos && pos <= size() : "Failed precondition insert. " +
        "pos is invalid. Value of pos: " + pos;
        ensureCapcity();
        for(int i = iSize; i > pos; i--){
            iValues[i] = iValues[i - 1];
        }
        iValues[pos] = x;
        iSize++;
    }
    
    /**
     * Remove an element from the list based on position.
     * Elements with a position greater than pos
     * are shifted to the left. (One subtracted from their
     * position.)
     * @param pos 0 <= pos < size()
     * @return The element that is removed.
     */
    public int remove(int pos){
        assert 0 <= pos && pos < size() : "Failed precondition remove. " +
        "pos it out of bounds. Value of pos: " + pos;
        int removedValue = iValues[pos];
        for(int i = pos; i < iSize - 1; i++)
            iValues[i] = iValues[i + 1];
        iSize--;
        return removedValue;
    }
    
    private void ensureCapcity(){
        // is there extra capacity available?
        // if not, resize
        if(iSize == iValues.length)
            resize();
    }
    
    /**
     * Returns the size of the list.
     * @return The size of the list.
     */
    public int size(){
        return iSize;
    }
    
    // resize internal storage container by a factor of 2
    private void resize() {
        int[] temp = new int[iValues.length * 2];
        System.arraycopy(iValues, 0, temp, 0, iValues.length);
        iValues = temp;
    }
    
    /**
     * Return a String version of this list. Size and 
     * elements included.
     */
    public String toString(){
        // we could make this more effecient by using a StringBuffer.
        // See alternative version
        String result = "size: " + iSize + ", elements: [";
        for(int i = 0; i < iSize - 1; i++)
            result += iValues[i] + ", ";
        if(iSize > 0 )
            result += iValues[iSize - 1];
        result += "]";
        return result;
    }
    
    // Would not really have this and toString available
    // both included just for testing
    public String toStringUsingStringBuffer(){
        StringBuffer result = new StringBuffer();
        result.append( "size: " );
        result.append( iSize );
        result.append(", elements: [");
        for(int i = 0; i < iSize - 1; i++){
            result.append(iValues[i]);
            result.append(", ");
        }
        if( iSize > 0 )
            result.append(iValues[iSize - 1]);
        result.append("]");
        return result.toString();
    }
    
   /**
    * Return true if this IntList is equal to other.<br>
    * pre: none
    * @param other The object to comapre to this
    * @return true if other is a non null, IntList object
    * that is the same size as this IntList and has the
    * same elements in the same order, false otherwise.
    */
    public boolean equals(Object other){
        boolean result;
        if(other == null)
            // we know this is not null so can't be equal
            result = false;
        else if(this == other)
            // quick check if this and other refer to same IntList object
            result = true;
        else if( this.getClass() != other.getClass() )
            // other is not an IntList they can't be equal
            result = false;
        else{
            // other is not null and refers to an IntList
            IntListVer3 otherIntList = (IntListVer3)other;
            result = this.size() == otherIntList.size();
            int i = 0;
            while(i < iSize && result){
                result = this.iValues[i] == otherIntList.iValues[i];
                i++;
            }
        }
        return result;     
    }

}

