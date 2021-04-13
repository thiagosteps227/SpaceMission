//Thiago dos Passos A00279945

var rootURL = "http://localhost:8080/SpaceMission/rest/missions";

var findAll= function () {
	console.log('findAll');
	$.ajax({
		type: 'GET',
		url: rootURL,
		dataType: "json", 
		success: renderList
	});
};

var findById= function(id) {
	console.log('findById: ' + id);
	$.ajax({
		type: 'GET',
		url: rootURL + '/' + id,
		dataType: "json",
		success: function(data){
			$('#details').show();
			currentMission = data
			renderDetails(currentMission);
		}
	});
};

var findByOrbitor= function(orbitor) {
	console.log('findByOrbitor: ' + orbitor);
	$.ajax({
		type: 'GET',
		url: rootURL + '/search/' + orbitor,
		dataType: "json",
		success: function(data){
			$('#details').show();
			currentMission = data
			renderDetails(currentMission);
		}
	});
};

function renderList(mission) {
	$.each(mission, function(index, mission){
		$('#missionList').append('<li><img src="images/'+mission.name+'.jpeg"><a id="'+mission.id+'" href="#">'+mission.name+'</a></li>' );
	});	
}

function renderDetails(mission) {
	$('#details').empty();
	$('#details').append('<h1>'+ mission.name+' Details</h1><h2>Orbitor: '+ mission.orbitor+'</h2><p>Mission Launch: '+ mission.launch+'</p><p>Mission Landing: '+ mission.landing + '</p>')
}

	$(document).ready(function(){
		findAll();
		$('#details').hide();
	
		//show the div with mission details
		$(document).on("click", '#missionList a', function(){
			findById(this.id);
	 });
	
	//find the mission by orbitor name
	$(document).on("click", '#btnSearch', function(){
		var orbitor = $('#searchKey').val();
		findByOrbitor(orbitor);
	})
	
});