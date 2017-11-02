package com.fss.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
/**
 * ����ȫ�ֱ����ʽ
 * @author admin
 *
 */
public class CodingFilter implements Filter{

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, 
			ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		 
		  request.setCharacterEncoding("UTF-8");
		  response.setContentType("text/html;charset=UTF-8");
		  chain.doFilter(request, response);
		  
		/**
		 * filter��ʹ��
		 *   1.���ز�����
		 *   2.������ �޸�request response  ���ñ����ʽ
		 *   3.���� + ת�������ض��� �Զ���¼
		 * 
		 * FilterChain�� ������
		 * 
		 *    һ����Դ���ܱ�������������أ���������������һ����������
		 *    FilterChain��������һ�����󣡷��з��� doFilter();
		 *    
		 *    ���µ�����һ���������������ǰ�����������һ����ô������Դ��
		 *    
		 *    ����������������ͬһ����Դ�Ⱥ�˳��
		 *    
		 *     mapping���Ⱥ�˳��
		 * 
		 */
		
		
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}
  
	
	
	
}
