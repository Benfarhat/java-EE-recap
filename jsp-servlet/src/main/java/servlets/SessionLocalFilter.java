package servlets;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class SessionLocalFilter
 */
@WebFilter(filterName = "SessionLocaleFilter", urlPatterns = {"/*"})
public class SessionLocalFilter implements Filter {

	private FilterConfig config;
	
    public SessionLocalFilter() {}

	public void destroy() {}
	
	public void init(FilterConfig arg0) throws ServletException {
		config = arg0;
	}
	

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		ServletContext context = config.getServletContext();
	    HttpServletRequest req = (HttpServletRequest) request;
	    HttpServletResponse res = (HttpServletResponse) response;
	    HttpSession session = req.getSession();
	    
		if(req.getParameter("sessionLocale") != null) {
			try {
				String propertyFile = this.getClass().getResource("/messages_" + req.getParameter("sessionLocale") + ".properties").getPath();
				context.log(propertyFile);
				context.log("changing language to: " + req.getParameter("sessionLocale"));
				// With session
				session.setAttribute("lang", req.getParameter("sessionLocale"));
				
				// With cookie
	            Cookie cookie = new Cookie("lang", req.getParameter("cookieLocale"));
	            res.addCookie(cookie);
			} catch (NullPointerException npe) {
				context.log("Transation resource file did not exist.");
			}
		} 
		chain.doFilter(request, response);
	}


}
