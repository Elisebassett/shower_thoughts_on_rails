$('.edit_post').on('click', function(){
	
	$(this).parent('form').find('textarea').attr('readonly', false).focus();
	$(this).parent('form').find('.post_edit_submit').html(`
		<p><em>You may now make changes</em></p>
		<input class="btn btn-elegant round edit_button" type="submit" value="done">
		`);
});

$('.post_edit_submit').on('click', function() {
	$(this).html('');
})
