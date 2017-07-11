import java.util.Iterator;

/**
 * Interface for a simple List. Random access to all items in the list is provided. 
 * The numbering of elements in the list begins at 0.
 *
 */
public interface IList<E> extends Iterable<E>{

	/**
	 * Add an item to the end of this list.
	 * <br>pre: none
	 * <br>post: size() = old size() + 1, get(size() - 1) = item
	 * @param item the data to be added to the end of this list
	 */
	void add(E item);

	/**
	 * Insert an item at a specified position in the list.
	 * <br>pre: 0 <= pos <= size()
	 * <br>post: size() = old size() + 1, get(pos) = item, all elements in
	 * the list with a positon >= pos have a position = old position + 1
	 * @param pos the position to insert the data at in the list
	 * @param item the data to add to the list
	*/
	void insert(int pos, E item);

	/**
	 * Change the data at the specified position in the list.
	 * the old data at that position is returned.
	 * <br>pre: 0 <= pos < size()
	 * <br>post: get(pos) = item, return the
	 * old get(pos)
     * @param pos the position in the list to overwrite	 
	 * @param item the new item that will overwrite the old item
	 * @return the old data at the specified position
	 */
	E set(int pos, E item);

	/**
	 * Get an element from the list.
	 * <br>pre: 0 <= pos < size()
	 * <br>post: return the item at pos
	 * @param pos specifies which element to get
	 * @return the element at the specified position in the list
	 */
	E get(int pos);


	/**
	 * Remove an element in the list based on position.
	 * <br>pre: 0 <= pos < size()
	 * <br>post: size() = old size() - 1, all elements of
	 * list with a positon > pos have a position = old position - 1
	 * @param pos the position of the element to remove from the list
	 * @return the data at position pos
	 */
	E remove(int pos);
	
	/**
	 * Remove the first occurrence of obj in this list.
	 * Return <tt>true</tt> if this list changed as a result of this call, <tt>false</tt> otherwise.
	 * <br>pre: none
	 * <br>post: if obj is in this list the first occurence has been removed and size() = old size() - 1. 
	 * If obj is not present the list is not altered in any way.
	 * @param obj The item to remove from this list.
	 * @return Return <tt>true</tt> if this list changed as a result of this call, <tt>false</tt> otherwise.
	 */
	boolean remove(E obj);
	
	/**
	 * Return a sublist of elements in this list from <tt>start</tt> inclusive to <tt>stop</tt> exclusive.
	 * This list is not changed as a result of this call.
	 * <br>pre: <tt>0 <= start < size(), start <= stop <= size()</tt>
	 * <br>post: return a list whose size is stop - start and contains the elements at positions start through stop - 1 in this list.
	 * @param start index of the first element of the sublist.
	 * @param stop stop - 1 is the index of the last element of the sublist.
	 * @return a list with <tt>stop - start</tt> elements, The elements are from positions <tt>start</tt> inclusive to
	 * <tt>stop</tt> exclusive in this list.
	 */
	IList<E> getSubList(int start, int stop);

	/**
	 * Return the size of this list. In other words the number of elements in this list.
	 * <br>pre: none
	 * <br>post: return the number of items in this list
	 * @return the number of items in this list
	 */
	int size();

	/**
	 * Find the position of an element in the list.
	 * <br>pre: none
	 * <br>post: return the index of the first element equal to item
	 * or -1 if item is not present
	 * @param item the element to search for in the list
	 * @return return the index of the first element equal to item or a -1 if item is not present
	 */
	int indexOf(E item);

	/**
	 * find the position of an element in the list starting at a specified position.
	 * <br>pre: 0 <= pos < size()
	 * <br>post: return the index of the first element equal to item starting at pos
	 * or -1 if item is not present from position pos onward
	 * @param item the element to search for in the list
	 * @param pos the position in the list to start searching from
	 * @return starting from the specified position return the index of the first element equal to item or a -1 if item is not present between pos and the end of the list
	 */
	int indexOf(E item, int pos);

	/**
	 * return the list to an empty state.
	 * <br>pre: none
	 * <br>post: size() = 0
	 */
	void makeEmpty();

	/**
	* return an Iterator for this list.
	* <br>pre: none
	* <br>post: return an Iterator object for this List
	*/
    Iterator<E> iterator();

    /**
     * Remove all elements in this list from <tt>start</tt> inclusive to <tt>stop</tt> exclusive.
     * <br>pre: <tt>0 <= start < size(), start <= stop <= size()</tt>
     * <br>post: <tt>size() = old size() - (stop - start)</tt>
     * @param start position at beginning of range of elements to be removed
     * @param stop stop - 1 is the position at the end of the range of elements to be removed
     */
    void removeRange(int start, int stop);
    
    /**
     * Return a String version of this list enclosed in
     * square brackets, []. Elements are in
     * are in order based on position in the 
     * list with the first element
     * first. Adjacent elements are seperated by comma's
     * @return a String representation of this IList
     */
    public String toString();
    
    /**
     * Determine if this IList is equal to other. Two
     * ILists are equal if they contain the same elements
     * in the same order.
     * @return true if this IList is equal to other, false otherwise
     */
    public boolean equals(Object other);
}
