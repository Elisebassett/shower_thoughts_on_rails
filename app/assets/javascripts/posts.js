$(function(){

	$('.edit_post').on('click', function(){	
		$(this).parent('form').find('textarea').attr('readonly', false).focus();
		$(this).parent('form').find('.post_edit_submit').html(`
			<p><em>You may now make changes</em></p>
		`);
		$('.edit_button').show();
	});

	$(".post_edit_form").on('submit', function() {
		$(this).find('.post_edit_submit').html('');
		$('.edit_button').hide();
	});


	$(".delete_post").on('ajax:success', function(){
		$(this).closest('.post_container').remove();
	}); 







});
