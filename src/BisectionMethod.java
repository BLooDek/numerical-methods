public class BisectionMethod {
    public static double solve(double a, double b, double tolerance, double maxIterations) {
        double c = f(a);
        double d = f(b);
        if (c * d > 0.0) {
            System.out.println("Function has same sign at both endpoints.");
            return -1;
        }
        double er = (b - a) / 2;
        int iterations = 0;

        while (Math.abs(er) > tolerance && iterations < maxIterations) {
            double x = (a + b) / 2;
            double y = f(x);
            if (y == 0.0) {
                return er;
            }
            if (c * y < 0) {
                b = x;
            } else {
                a = x;
            }
            er = (b - a) / 2;
            iterations++;

        }
        return (a + b) / 2;
    }

    private static double f(double val){
        return 18.0 * Math.cos(val) - 8.0*val;
    }

     /*private static double f(double x) {
        return 8.0 * Math.pow(x, 5) + 6.0 * Math.pow(x, 4) + 8.0 * Math.pow(x, 3) - 6.0 * x * x - 4.0 * x + 7.0;
    }*/


}
