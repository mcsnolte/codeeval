import java.io.*;

public class Main {
    public static void main (String[] args) throws Exception {
        File file = new File(args[0]);
        BufferedReader in = new BufferedReader(new FileReader(file));
        String line;
        while ((line = in.readLine()) != null) {
            String[] lineArray = line.split("\n");
            if (lineArray.length > 0) {
				String[] parts = line.split(" ");
				int f = Integer.parseInt(parts[0]);
				int b = Integer.parseInt(parts[1]);
				int x = Integer.parseInt(parts[2]);
				for ( int i = 1; i < x; i++ ) {
					if ( i % f == 0 && i % b == 0 ) {
						System.out.print("FB");
					}
					else if ( i % f == 0 ) {
						System.out.print("F");
					}
					else if ( i % b == 0 ) {
						System.out.print("B");
					}
					else {
						System.out.print(i);
					}
					if ( i < x ) {
						System.out.print(" ");
					}
				}
				System.out.print("\n");
            }
        }
    }
}
