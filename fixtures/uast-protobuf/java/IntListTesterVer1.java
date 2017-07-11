
public class IntListTesterVer1 {
    public static void main(String[] args){
        IntListVer1 list1 = new IntListVer1();
        IntListVer1 list2 = new IntListVer1(100);
        
        //equal when empty?
        System.out.println("list1.equals(list2): " + list1.equals(list2));
        System.out.println("list1: " + list1);
        System.out.println("list2: " + list2);
    }
}
