package Solution;


import java.io.File;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Scanner;
import java.util.TreeSet;

public class UnsortedSetTest {

    public static void main(String[] args) throws Exception {
        String[] allFileNames = {"hounds.txt", "huckfinn.txt", "oz.txt", "war.txt", "ciaFactBook2008.txt"};
        String[] noCIA = {"hounds.txt", "huckfinn.txt", "oz.txt", "war.txt"};
        countWords(new BinarySearchTree<String>(), allFileNames[0]);
        for(String s : allFileNames) {
            System.out.println(s);
            countWordsOurUnsortedSet(s);
            countWordsOurBinarySearchTree(s);
            countWordsOurHash(s);
            countWordsCollection(new TreeSet<String>(), s);
            int[] result = countWordsCollection(new HashSet<String>(), s);
            System.out.println(result[0] + " total words.");
            System.out.println(result[1] + " distinct words.");
            System.out.println();
            
        }
    }
    
    // return total num words, and num distinct words
    public static int[] countWordsCollection(Collection<String> c, String fileName) throws Exception{
        c.clear();
        Scanner fileScanner = new Scanner(new File(fileName));  
        Stopwatch st = new Stopwatch();
        st.start();
        int total = 0;
        while(fileScanner.hasNext()){
            c.add(fileScanner.next());
            total++;
        }
        st.stop();
        System.out.println("Time for " + c.getClass() + " : \n" + st);
//        System.out.println(c.size() + " distinct words");
//        System.out.println(total + " total words including duplicates: ");
        assert total >= c.size();
        System.out.println();
        return new int[]{total, c.size()};
    }
    
    
    // GACKY GACKY GACKY repition. Look into removing repetition with reflection
    // we assume there will be add and size methods
    public static int[] countWordsOurHash(String fileName) throws Exception {
        Scanner fileScanner = new Scanner(new File(fileName));  
        Stopwatch st = new Stopwatch();
        UnsortedHashSet<String> c = new UnsortedHashSet<String>();
        st.start();
        int total = 0;
        while(fileScanner.hasNext()) {
            c.add(fileScanner.next());
            total++;
        }
        st.stop();
        System.out.println("Time for our hashtable (closed address hashing): \n" + st);
//        System.out.println(c.size() + " distinct words");
//        System.out.println(total + " total words including duplicates: ");
        assert total >= c.size();
        System.out.println();
        return new int[]{total, c.size()};
    }
    
    public static int[] countWordsOurUnsortedSet(String fileName) throws Exception {
        Scanner fileScanner = new Scanner(new File(fileName));  
        Stopwatch st = new Stopwatch();
        UnsortedSet<String> c = new UnsortedSet<String>();
        st.start();
        int total = 0;
        while(fileScanner.hasNext()){
            c.add(fileScanner.next());
            total++;
        }
        st.stop();
        System.out.println("Time for our unsorted set based on ArrayList: \n" + st);
//        System.out.println(c.size() + " distinct words");
//        System.out.println(total + " total words including duplicates: ");
        assert total >= c.size();
        System.out.println();
        return new int[]{total, c.size()};
    }
    
    public static int[] countWordsOurBinarySearchTree(String fileName) throws Exception {
        Scanner fileScanner = new Scanner(new File(fileName));  
        Stopwatch st = new Stopwatch();
        BinarySearchTree<String> c = new BinarySearchTree<String>();
        st.start();
        int total = 0;
        while(fileScanner.hasNext()){
            c.add(fileScanner.next());
            total++;
        }
        st.stop();
        System.out.println("Time for our binary search tree: \n" + st);
//        System.out.println(c.size() + " distinct words");
//        System.out.println(total + " total words including duplicates: ");
        assert total >= c.size();
        System.out.println();
        return new int[]{total, c.size()};
    }
    
    
    // a try at reflection. Not working on Binary Search tree from class. 
    // Hunch. Due to add method taking in Comparable, not Object!
    // Alterantives: search list of methods for name?
    public static int[] countWords(Object c, String fileName) throws Exception {
        Scanner fileScanner = new Scanner(new File(fileName));  
        Stopwatch st = new Stopwatch();
        System.out.println(Arrays.toString(c.getClass().getMethods()));
        Method addMethod = c.getClass().getMethod("add", Object.class);
        st.start();
        int total = 0;
        while(fileScanner.hasNext()){
            addMethod.invoke(c, fileScanner.next());
            total++;
        }
        st.stop();
        System.out.println("Time for " + c.getClass() + ": "+ st);
        Method sizeMethod = c.getClass().getMethod("size");
        int distictWords = (Integer) sizeMethod.invoke(c);
//        System.out.println(distictWords + " distinct words");
//        System.out.println(total + " total words including duplicates: ");
        System.out.println();
        return new int[]{total, distictWords};
    }
}
