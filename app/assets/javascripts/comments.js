$(function () {
	
	$('.comment_form').hide();
	$('.edit_button').hide();

	$('.post_comment').click(function(){
		$(this).closest('.comment_container').find('.comment_form').show().focus();
	});


	$(".comment_form").on('submit', function(){
		window.comment_container = $(this).closest('.post_container').find('.comments_container').attr('id');
		$('.comment_form').hide();
	}); 

	$(".delete_comment").on('ajax:success', function(){
		$(this).closest('.comment').remove();
	}); 

	$('.edit_comment').on('click', function(){	
		$(this).parent('form').find('textarea').attr('readonly', false).focus();
		$(this).parent('form').find('.comment_edit_submit').html(`
			<p><em>You may now make changes</em></p>
			`);
		$('.edit_button').show();
	});

	$(".comment_edit_form").on('submit', function() {
		$(this).find('.comment_edit_submit').html('');
		$('.edit_button').hide();
	});





});
