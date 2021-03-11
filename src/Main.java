public class Main {

    public static void main(String[] args) {
	// write your code here
        System.out.println(NewtonMethod.solve(-9, 0.0001, 1000));
        System.out.println(BisectionMethod.solve(-1.5,1,0.0001, 1000));
        System.out.println(SecantMethod.solve(-2, 2, 0.001, 1000));


      // System.out.println(0.1+0.2);
      //  System.out.println(0.1+0);
      //  System.out.println(0.1+0.1);


    }
}
