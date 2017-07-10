/**
 * A class that represents a node to be used in a linked list.
 * These nodes are singly linked.
 *
 * @author Mike Scott
 * @version July 27, 2005
 */

 public class ListNode
 {
	 // instance variables

	// the data to store in this node
	private Object myData;

	// the link to the next node (presumably in a list)
	private ListNode myNext;

	/**
	 * default constructor
	 * pre: none<br>
	 * post: getData() = null, getNext() = null
	 */
	public ListNode()
	{	this(null, null);
	}

	/**
	 * create a ListNode that holds the specified data and refers to the specified next element
	 * pre: none<br>
	 * post: getData() = item, getNext() = next
	 * @param item the  data this ListNode should hold
	 * @param next the next node in the list
	 */
	public ListNode(Object data, ListNode next)
	{	myData = data;
		myNext = next;
	}

	
	/**
	 * return the data in this node
	 * pre: none<br>
	 * @return the data this ListNode holds
	 */
	public Object getData()
	{	return myData;	}

	
	/**
	 * return the ListNode this ListNode refers to
	 * pre: none<br>
	 * @return the ListNode this ListNode refers to (normally the next one in a list)
	 */
	public ListNode getNext()
	{	return myNext;	}


	/**
	 * set the data in this node
	 * The old data is over written.<br>
	 * pre: none<br>
	 * @param data the new data for this ListNode to hold
	 */
	public void setData(Object data)
	{	myData = data;	}

	/**
	 * set the next node this ListNode refers to
	 * pre: none<br>
	 * @param next the next node this ListNode should refer to
	 */
	public void setNext(ListNode next)
	{	myNext = next;	}
 }