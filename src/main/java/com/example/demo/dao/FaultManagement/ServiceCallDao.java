package com.example.demo.dao.FaultManagement;



import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.example.demo.model.FaultManagement.ServiceCall;

@Service
public class ServiceCallDao {

	JdbcTemplate template;

	
	@Autowired
	public void setTemplate(JdbcTemplate template) {  
	    this.template = template;  
	    
	}  
	
	@Autowired
	public void setDataSource(DataSource datasource) {
		
		template= new JdbcTemplate(datasource);
		
		
	}
	
	
	
	public void save(ServiceCall f) {
		
		int fullfunc;
		if(f.isFullyFunc()) {
			fullfunc=1;
		}
		else {
			fullfunc=0;
		}
		
		String sql= "insert into service_call(fauid,custoID,faultDesc,workDetails,fullyFunc,generalDesc,datet) values ('"+f.getFauid()+"','"+f.getCustoID()+"','"+f.getFaultDesc()+"','"+f.getWorkDetails()+"','"+fullfunc+"','"+f.getGeneralDesc()+"','"+f.getDatet()+"')";
		System.out.println(sql);
		System.out.println(f.isFullyFunc());
		template.update(sql);
		String sql2="update fault set status='Completed' where jobID="+f.getFauid();
		System.out.println(sql2);
		template.update(sql2);
		String sql3="update other_emps set availability=1 where empOTId IN (select empid from fault_tech where faultid="+f.getFauid()+")";
		//String sql2 = "update fault set faID=concat(jstr,jobID)";
		System.out.println(sql3);
		template.update(sql3);


	}
	
	public List<ServiceCall> getAllFaults() {
		
		
		return template.query("select * from service_call",new ResultSetExtractor<List<ServiceCall>>(){  
		    
		     public List<ServiceCall> extractData(ResultSet rs) throws SQLException,  
		            DataAccessException {  
		      
		        List<ServiceCall> list=new ArrayList<ServiceCall>();  
		        while(rs.next()){  
		        	ServiceCall e=new ServiceCall();  
		       
		        	e.setServiceID(rs.getInt(1));
		        	e.setFauid(rs.getInt(2));
		        	e.setCustoID(rs.getInt(3));
		        	e.setFaultDesc(rs.getString(4));
		        	e.setWorkDetails(rs.getString(5));
		        	e.setFullyFunc(rs.getBoolean(6));
		        	e.setGeneralDesc(rs.getString(7));
		        	
		        	e.setDatet(rs.getDate(10));
		        
		        list.add(e);  
		        }  
		        return list;  
		        }  
		    });  
		  
		
		  }
	
		
	
		public ServiceCall getServCallById(int id) {
			// TODO Auto-generated method stub
					 return template.query("select * from service_call where fauid="+id+"",new ResultSetExtractor<ServiceCall>(){  
					     public ServiceCall extractData(ResultSet rs) throws SQLException,  
					            DataAccessException {  
							  

					    	 ServiceCall e=new ServiceCall();  
					        while(rs.next()){  
					      	       
					        	e.setServiceID(rs.getInt(1));
					        	e.setFauid(rs.getInt(2));
					        	e.setCustoID(rs.getInt(3));
					        	e.setFaultDesc(rs.getString(4));
					        	e.setWorkDetails(rs.getString(5));
					        	e.setFullyFunc(rs.getBoolean(6));
					        	e.setGeneralDesc(rs.getString(7));
					        	
					        	e.setDatet(rs.getDate(10));
					        
					        }  
					        return e;  
					        }  
					    });  
				}
		
		public int count() {
			String sql="select count(*) from service_call";
			int count = template.queryForObject(sql,Integer.class);
			return count;
			  }



		public void update(ServiceCall p) {
			//String sql="update fault set nature='"+p.getNature()+"',priority='"+p.getPriority()+"',status='"+p.getStatus()+"',category='"+p.getCategory()+"',cID='"+p.getCliID()+"',brID='"+p.getBrID()+"',descrip='"+p.getDescrip()+"' ,reportedBy='"+p.getReportedBy()+"', fixedby='"+p.getFixedBy()+"',reportedDate='"+p.getReportedOn()+"' where jobID="+p.getId()+"";
			//System.out.println(sql);
	       //template.update(sql);  
		}



		public void delete(int id) {
			// TODO Auto-generated method stub
			String sql="delete from service_call where fauid="+id+"";  
		    template.update(sql);  
			
		}



		public void delete() {
			// TODO Auto-generated method stub
			String sql="delete from service_call where fauid>0";  
		    template.update(sql); 
		}

		
	
}
