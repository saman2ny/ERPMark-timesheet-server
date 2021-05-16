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

$('form#insertemployee').submit(function(e) {
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

$('form#insertproduct').submit(function(e) {
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
$('form#insertclients').submit(function(e) {
    $form  = $(this);
    e.preventDefault();
    $.ajax({
        type: "POST",
        url: $form.attr('action'),
        data: $form.serialize(),           // <--- THIS IS THE CHANGE
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
$('form#updateconveyancerate').submit(function(e) {
    $form  = $(this);
    e.preventDefault();
    $.ajax({
        type: "POST",
        url: $form.attr('action'),
        data: $form.serialize(),           // <--- THIS IS THE CHANGE
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
$('form#updateproductdatassssss').submit(function(e) {
    $form  = $(this);
    e.preventDefault();
    $.ajax({
        type: "POST",
        url: $form.attr('action'),
        data: $form.serialize(),           // <--- THIS IS THE CHANGE
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
$('form#insertleadcreation').submit(function(e) {
    $form  = $(this);
    e.preventDefault();
    $.ajax({
        type: "POST",
        url: $form.attr('action'),
        data: $form.serialize(),           // <--- THIS IS THE CHANGE
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
$('form#updateclientservices').submit(function(e) {
    $form  = $(this);
    e.preventDefault();
    $.ajax({
        type: "POST",
        url: $form.attr('action'),
        data: $form.serialize(),           // <--- THIS IS THE CHANGE
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
$('form#insertfollow').submit(function(e) {
    $form  = $(this);
    e.preventDefault();
    $.ajax({
        type: "POST",
        url: $form.attr('action'),
        data: $form.serialize(),           // <--- THIS IS THE CHANGE
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
$('form#inserttarget').submit(function(e) {
    $form  = $(this);
    e.preventDefault();
    $.ajax({
        type: "POST",
        url: $form.attr('action'),
        data: $form.serialize(),           // <--- THIS IS THE CHANGE
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
$('form#addleave').submit(function(e) {
    $form  = $(this);
    e.preventDefault();
    $.ajax({
        type: "POST",
        url: $form.attr('action'),
        data: $form.serialize(),           // <--- THIS IS THE CHANGE
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





















// ******** flash msg display time out  *******//


$(function() {
    $(".hideit").hide(5000);
});