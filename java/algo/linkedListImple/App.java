package collections;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class App {
	public static void main(String[] args) {
		List<Integer> intList = new LinkedList<>();
		for (int i = 0; i < 1000; i++) {
			intList.add(i);
		}
		
		System.out.println(intList.size());
		
//		for (Integer element: intList) {
//			if (element % 15 == 0) {
//				System.out.println(element);
//			}
//		}
		
		CustomLinkedList<String> customLinkedList = new CustomLinkedList<String>();
		customLinkedList.add("ABC");
		customLinkedList.add("DEF");
		customLinkedList.add("GET");
		
		System.out.println(customLinkedList.get(1));
		System.out.println(customLinkedList.size());
		System.out.println(customLinkedList.first());
		customLinkedList.addFirst("DVC");
		System.out.println(customLinkedList.first());
		
		for (String element: customLinkedList) {
			System.out.println(element);
		}
	}
	
}
