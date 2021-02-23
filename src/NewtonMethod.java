public class NewtonMethod {
    public static double solve(double guess, double tolerance, int maxIterations) {
        int iterations = 0;
        double x = guess;
        double y = function(x);

        while (Math.abs(y) > tolerance && iterations < maxIterations) {
            x = x - (y/derivative(x));
            y = function(x);
            //System.out.println(x);
            iterations++;
        }

        return x;
    }
   /* private static double function(double val) {
        return 8.0 * Math.pow(val, 5) + 6.0 * Math.pow(val, 4) + 8.0 * Math.pow(val, 3) - 6.0 * val * val - 4.0 * val + 7.0;
    }
    private static double derivative(double val) {
        return 40.0 * Math.pow(val, 4) + 24.0 * Math.pow(val, 3) + 24.0 * Math.pow(val, 2) - 12.0 * val - 4.0;
    }*/

    private static double function(double val){
        return 18.0 * Math.cos(val) - 8.0*val;
    }
    private static double derivative(double val){
        return -18.0 * Math.sin(val) - 8;
    }



}
