package pack;

import javax.servlet.http.HttpServletRequest;

public class Util {
	public static final String PREFIX_SIFT = "/sift";
	public static final String PREFIX_SIMILITY = "/simility";

	public static String judgeURI(HttpServletRequest request) {
		String uri = request.getRequestURI();
		return uri.indexOf(PREFIX_SIFT) > 0 ? PREFIX_SIFT : PREFIX_SIMILITY;
	}
}
