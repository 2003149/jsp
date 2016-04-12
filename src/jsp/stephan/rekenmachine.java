package jsp.stephan;

public class rekenmachine {

	String uitkomst;
	String foutboodschap;

	public rekenmachine(String arg1, String arg2, String functie) {
		uitkomst = "";
		foutboodschap = "";

		try {
			double getal1 = Double.parseDouble(arg1);
			double getal2 = Double.parseDouble(arg2);

			if (functie.equals("+")) {
				uitkomst += (getal1 + getal2);
			}
			if (functie.equals("-")) {
				uitkomst += (getal1 - getal2);
			}
			if (functie.equals("*")) {
				uitkomst += (getal1 * getal2);
			}
			if (functie.equals("/")) {
				uitkomst += (getal1 / getal2);
			}
		} catch (NumberFormatException e) {
			foutboodschap = "voer 2 getallen in";
		}
	}

	public String getuitkomst() {
		return uitkomst;
	}

	public String getfoutboodschap() {
		return foutboodschap;
	}

}
