package com.example.demo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Service;

import com.example.demo.model.Device;
import com.example.demo.model.FaultManagement.Fault;

@Service
public class DeviceDao {

	
	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {  
	    this.template = template;  
	}  
	
	@Autowired
	public void setDataSource(DataSource datasource) {
		
		template= new JdbcTemplate(datasource);
		
	}
	
	public void save(Device d) {
		
		String sql= "insert into device(model,unitPrice,name,manufacturer) values ('"+d.getModel()+"','"+d.getUnitPrice()+"','"+d.getName()+"','"+d.getManufacturer()+"')";
		System.out.println(sql);
		template.update(sql);
	}
	
	public List<Device> getAllDevicess() {
		
		
		return template.query("select * from device",new ResultSetExtractor<List<Device>>(){  
		    
		     public List<Device> extractData(ResultSet rs) throws SQLException,  
		            DataAccessException {  
		      
		        List<Device> list=new ArrayList<Device>();  
		        while(rs.next()){  
		        	Device d=new Device();  
		        d.setDeviceID(rs.getInt(1));
		        d.setModel(rs.getString(2));
		        d.setUnitPrice(rs.getDouble(3));
		        d.setName(rs.getString(4));
		        d.setManufacturer(rs.getString(5));
		        
		        
		        list.add(d);  
		        }  
		        return list;  
		        }  
		    });  
		  
		
		  }
	
	public Device getDEvicebyID(int id) {
		// TODO Auto-generated method stub
				 return template.query("select * from device where deviceID="+id+"",new ResultSetExtractor<Device>(){  
				     public Device extractData(ResultSet rs) throws SQLException,  
				            DataAccessException {  
						  

				    	 Device ed=new Device();  
				        while(rs.next()){  
				       
				        	ed.setDeviceID(rs.getInt(1));
				        	ed.setModel(rs.getString(2));
				        	ed.setUnitPrice(rs.getDouble(3));
				        	ed.setName(rs.getString(4));
				        	ed.setManufacturer(rs.getString(5));
				        }  
				        return ed;  
				        }  
				    });  
			}

	public void update(Device d) {
		String sql="update device set model='"+d.getModel()+"',unitPrice='"+d.getUnitPrice()+"',name='"+d.getName()+"',manufacturer='"+d.getManufacturer()+"' where deviceID="+d.getDeviceID()+"";
		System.out.println(sql);
       template.update(sql);  
	}



	public void delete(int id) {
		// TODO Auto-generated method stub
		String sql="delete from device where deviceID="+id+"";  
	    template.update(sql);  
		
	}



	public void delete() {
		// TODO Auto-generated method stub
		String sql="delete from device where deviceID>0";  
	    template.update(sql); 
	}
}
