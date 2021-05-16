
$( document ).ready(function() {

$('form#myform').submit(function(e) {
    $form  = $(this);
    e.preventDefault();
    $.ajax({
        type: "POST",
        url: $form.attr('action'),
        data: $form.serialize(), // <--- THIS IS THE CHANGE
        dataType: "json",
        success: function(data){
			if(data.status=="ok")
			{
			window.location.href = data.content;
			}
			else if(data.status=="error")
			{
			$('#error').html(data.content);
			}
			else
			{
			$('#error').html(data.content);
			
			}
        },
        
   });

}); 
});


$( document ).ready(function() {

$('form#myformbdm').submit(function(e) {
    $form  = $(this);
    e.preventDefault();
    $.ajax({
        type: "POST",
        url: $form.attr('action'),
        data: $form.serialize(), // <--- THIS IS THE CHANGE
        dataType: "json",
        success: function(data){
			if(data.status=="ok")
			{
			window.location.href = data.content;
			}
			else if(data.status=="error")
			{
			$('#error').html(data.content);
			}
			else
			{
			$('#error').html(data.content);
			
			}
        },
        
   });

}); 
});


    
 

    
 
    
   $( document ).ready(()=> { 
$('form#bdminsert').submit(function(e) {
    $form  = $(this);
    e.preventDefault();
    console.log("check one");
    
    $.ajax({
        type: "POST",
        url: $form.attr('action'),
        data: $form.serialize(), // <--- THIS IS THE CHANGE
        dataType: "json",
        success: function(data){
			if(data.status=="ok")
			{
			window.location.href = data.content;
			}
			else
			{
                console.log("check two");
			$('#error').html(data.content);
			
			}
        },
        
   });
    

});
    
    }); 
    





   $( document ).ready(()=> { 
$('form#insertapplyleave').submit(function(e) {
    $form  = $(this);
    e.preventDefault();
    console.log("check one");
    
    $.ajax({
        type: "POST",
        url: $form.attr('action'),
        data: $form.serialize(), // <--- THIS IS THE CHANGE
        dataType: "json",
        success: function(data){
			if(data.status=="ok")
			{
			window.location.href = data.content;
			}
			else
			{
                console.log("check two");
			$('#error').html(data.content);
			
			}
        },
        
   });
    

});
    
    });
        


// **************** meeting ***************** //
 
    
   $( document ).ready(()=> { 
$('form#insertmeeting').submit(function(e) {
    $form  = $(this);
    e.preventDefault();
    console.log("check one");
    
    $.ajax({
        type: "POST",
        url: $form.attr('action'),
        data: $form.serialize(), 
        dataType: "json",
        success: function(data){
			if(data.status=="ok")
			{
			window.location.href = data.content;
			}
			else
			{
                console.log("check two");
			$('#error').html(data.content);
			}
        },
    });
   });
  });
        


// **************** insertleadcreation ***************** //

   $( document ).ready(()=> { 
$('form#insertleadcreation').submit(function(e) {
    $form  = $(this);
    e.preventDefault();
    console.log("check one");
    
    $.ajax({
        type: "POST",
        url: $form.attr('action'),
        data: $form.serialize(), 
        dataType: "json",
        success: function(data){
			if(data.status=="ok")
			{
			window.location.href = data.content;
			}
			else
			{
                console.log("check two");
			$('#error').html(data.content);
			}
        },
    });
   });
  });

// **************** insertfollow ***************** //

   $( document ).ready(()=> { 
$('form#insertfollow').submit(function(e) {
    $form  = $(this);
    e.preventDefault();
    console.log("check one");
    
    $.ajax({
        type: "POST",
        url: $form.attr('action'),
        data: $form.serialize(), 
        dataType: "json",
        success: function(data){
			if(data.status=="ok")
			{
			window.location.href = data.content;
			}
			else
			{
                console.log("check two");
			$('#error').html(data.content);
			}
        },
    });
   });
  });
    










