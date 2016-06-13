package br.com.TitaTrader.conf;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class SpringMVCServlet extends AbstractAnnotationConfigDispatcherServletInitializer
{

   @Override
   protected Class<?>[] getRootConfigClasses()
   {
      return new Class[] {AppWebConfiguration.class , JPAConfiguration.class };
   }

   @Override
   protected Class<?>[] getServletConfigClasses()
   {
      return new Class[] {SecurityConfiguration.class};
   }

   @Override
   protected String[] getServletMappings()
   {
      return new String[] { "/" };
   }

   
}
