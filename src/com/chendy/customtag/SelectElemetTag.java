package com.chendy.customtag;

import java.io.IOException;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class SelectElemetTag extends SimpleTagSupport {
	private String[] countries = {"a", "b", "c", "d"};
	
	public void doTag() throws IOException, JspException {
		JspContext jspContext = getJspContext();
		JspWriter jspWriter = jspContext.getOut();
		
		jspWriter.print("<select>\n");
		
		for (int i = 0; i < countries.length; i++) {
//			getJspContext().setAttribute("value", countries[i]);
//			getJspContext().setAttribute("text", countries[i]);
			jspContext.setAttribute("value", countries[i]);
			jspContext.setAttribute("text", countries[i]);
			getJspBody().invoke(null);
		}
		
		jspWriter.print("</select>");
	}
}
