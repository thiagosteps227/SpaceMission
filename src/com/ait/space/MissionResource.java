package com.ait.space;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/missions")
public class MissionResource {

	MissionDAO dao = new MissionDAO();
	
	@GET
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public List<Mission> findAll() {
		return dao.findAll();
	}
	
	@GET @Path("{id}")
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public Mission findById(@PathParam("id") String id) {
		return dao.findById(Integer.parseInt(id));
	}

	@GET @Path("search/{query}")
	@Produces({ MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML })
	public Mission findByName(@PathParam("query") String query) {
		return dao.findByOrbitor(query);
	}

}
