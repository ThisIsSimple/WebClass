function closeModal(modalName) {
	$('#' + modalName).removeClass('is-active');
}

function openModal(modalName) {
	$('#' + modalName).addClass('is-active');
}

function closeNotification() {
	$('.notification').remove();
}

$(function() {
	$('#loginForm').on('submit', function(e) {
		e.preventDefault();

		$.post({
			url : '/WebClass/bloglogin',
			dataType : 'json',
			data : {
				email : $('input[name=email]').val(),
				password : $('input[name=password]').val()
			},
			success : function(data) {
				if (data.status == "success") {
					closeModal('loginModal');
					openModal('loginSuccessModal');
					$('#navbar-end').html('');
					$('#navbar-end').html('<a class="navbar-item is-hidden-desktop-only" href="/WebClass/bloglogout">'+data.email+'님, 환영합니다!</a>');
				} else {
					$('#modalNotification').html('<div class="notification is-danger"><button class="delete" onclick="closeNotification()"></button><strong>로그인에 실패했습니다.</strong> '+data.msg+'</div>');
				}
			}
		});
	});
});