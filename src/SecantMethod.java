public class SecantMethod {
    public static double solve(double x0, double x1, double tolerance, int MaxIterations) {
        double y0 = f(x0);
        double y1 = f(x1);
        int iterations = 0;
        double y = 2.0 * tolerance;
        double x = -1;
        while (Math.abs(y) > tolerance && iterations < MaxIterations) {
            x = x1 - (x1 - x0) * y1 / (y1 - y0);
            y = f(x);
            x0 = x1;
            y0 = y1;
            x1 = x;
            y1 = y;
            iterations++;

        }
        return x;

    }
    private static double f(double x) {
        return 8.0 * Math.pow(x, 5) + 6.0 * Math.pow(x, 4) + 8.0 * Math.pow(x, 3) - 6.0 * x * x - 4.0 * x + 7.0;
    }


   /* private static double f(double val){
        return 18.0 * Math.cos(val) - 8.0*val;
    }*/
}
