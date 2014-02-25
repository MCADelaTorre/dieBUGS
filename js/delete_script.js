//Confirm to Delete the selected books
function confirmDelete(){
	var noOfBooksToDelete = $('input[name = "ch[]"]:checked').length;
	if(noOfBooksToDelete > 0){
		var option = confirm("Are you Sure?");
		if(option == true){		
			alert(noOfBooksToDelete + " Book" + ((noOfBooksToDelete > 1) ? 's' : '') + " Selected.");
		}else{
			return false;
		}
	}else{
		alert("No books selected.");
		return false;
		}
	
}

/*
//Confirm To Delete Ready for Deletion Books
function confirmDeleteReady(){
	var noOfBooksToDelete = $('#readytodeletetable').find("input:checkbox:checked").length;
	if(noOfBooksToDelete > 0){
		var option= confirm("Are you Sure?");
		if(option==true){		
			alert(noOfBooksToDelete+" Book"+((noOfBooksToDelete>1)?'s':'')+" Selected.");
		}else{
			return false;
		}
	}else{
		alert("No books selected.");
		return false;
		}
	}
*/
//Confirm to change the ForDeletion 
function confirmChangeForDeletion(){
	var noOfBooksToDelete = $('#booktable').find("input:checkbox:checked").length;
	if(noOfBooksToDelete > 0){
		var option = confirm("Are you Sure?");
		if(option == true){		 
			alert(noOfBooksToDelete + " Book" + ((noOfBooksToDelete > 1) ? 's' : '') + " Selected.");
		}else{
			return false;
		}
	}else{
		alert("No books selected.");
		}
	}
	
//Mark All checkboxes when choosing
$('#markAll').click(function (){
	var buttonVal = $('#markAll').val();
	if(buttonVal === 'unmarked'){
		$('input[name="ch[]"]').each(function(){
			$(this).prop('checked', true);
		});
		$('#markAll').val('marked');
	}
	else if(buttonVal === 'marked'){
		$('input[name="ch[]"]').each(function(){
			$(this).prop('checked', false);
		});
		$('#markAll').val('unmarked');
	}
});

//Mark All function in the for_deletion_view
$('#fordeletion').click(function (){
	var buttonText = $('#fordeletion').text();
	if(buttonText === 'Mark All'){
		$('#booktable').find('input[name="ch[]"]').each(function(){
			$(this).prop('checked', true);
		});
		$('#fordeletion').text('UnMark All');
	}
	else if(buttonText === 'UnMark All'){
		$('#booktable').find('input[name="ch[]"]').each(function(){
			$(this).prop('checked', false);
		});
		$('#fordeletion').text('Mark All');
	}
});		
