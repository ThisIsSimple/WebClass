<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Login Modal -->
<div id="loginModal" class="modal">
	<div class="modal-background"></div>
	<div class="modal-card">
		<header class="modal-card-head">
			<p class="modal-card-title">로그인</p>
			<button class="delete" aria-label="close"
				onclick="closeModal('loginModal')"></button>
		</header>
		<section class="modal-card-body">
			<div id="modalNotification" class="field"></div>
			<form id="loginForm">
				<div class="field">
					<p class="control has-icons-left has-icons-right">
						<input class="input" type="email" name="email" placeholder="Email">
						<span class="icon is-small is-left"> <i
							class="fa fa-envelope"></i>
						</span> <span class="icon is-small is-right"> <i
							class="fa fa-check"></i>
						</span>
					</p>
				</div>
				<div class="field">
					<p class="control has-icons-left">
						<input class="input" type="password" name="password"
							placeholder="Password"> <span
							class="icon is-small is-left"> <i class="fa fa-lock"></i>
						</span>
					</p>
				</div>
				<div class="field">
					<p class="control">
						<button class="button is-success">Login</button>
						<button class="button is-secondary"
							onclick="closeModal('loginModal')">close</button>
					</p>
				</div>
			</form>
		</section>
	</div>
</div>

<!-- loginSuccessModal -->
<div id="loginSuccessModal" class="modal">
	<div class="modal-background"></div>
	<div class="modal-card">
		<header class="modal-card-head">
			<p class="modal-card-title">로그인 성공!</p>
			<button class="delete" aria-label="close"
				onclick="closeModal('loginSuccessModal')"></button>
		</header>
		<section class="modal-card-body">
			<div class="field">
				<h3>로그인 성공!!</h3>
			</div>
			<div class="field">
				<p class="control">
					<button class="button is-secondary"
						onclick="closeModal('loginSuccessModal')">close</button>
				</p>
			</div>
		</section>
	</div>
</div>

<nav class="navbar is-dark">
	<div class="navbar-brand">
		<a class="navbar-item" href="/WebClass"> 세상의 모든 지식 </a> <a
			class="navbar-item is-hidden-desktop"
			href="https://github.com/jgthms/bulma" target="_blank"> <span
			class="icon" style="color: #333;"> <i
				class="fa fa-lg fa-github"></i>
		</span>
		</a> <a class="navbar-item is-hidden-desktop"
			href="https://twitter.com/jgthms" target="_blank"> <span
			class="icon" style="color: #55acee;"> <i
				class="fa fa-lg fa-twitter"></i>
		</span>
		</a>

		<div class="navbar-burger burger"
			data-target="navMenuTransparentExample">
			<span></span> <span></span> <span></span>
		</div>
	</div>

	<div id="navMenuTransparentExample" class="navbar-menu">
		<div class="navbar-start">
			<div class="navbar-item has-dropdown is-hoverable">
				<a class="navbar-link" href="/documentation/overview/start/">
					Docs </a>
				<div class="navbar-dropdown is-boxed">
					<a class="navbar-item " href="/documentation/overview/start/">
						Overview </a> <a class="navbar-item "
						href="http://bulma.io/documentation/modifiers/syntax/">
						Modifiers </a> <a class="navbar-item "
						href="http://bulma.io/documentation/columns/basics/"> Columns
					</a>
				</div>
			</div>
			<div class="navbar-item has-dropdown is-hoverable">
				<a class="navbar-link " href="/WebClass/blog.jsp"> Blog </a>
				<div id="blogDropdown" class="navbar-dropdown is-boxed"
					data-style="width: 18rem;">

					<a class="navbar-item" href="/2017/08/03/list-of-tags/">
						<div class="navbar-content">
							<p>
								<small class="has-text-info">03 Aug 2017</small>
							</p>
							<p>New feature: list of tags</p>
						</div>
					</a>
					<hr class="navbar-divider">
					<a class="navbar-item" href="http://bulma.io/blog/"> More posts
					</a>
				</div>
			</div>
			<div class="navbar-item has-dropdown is-hoverable">
				<div class="navbar-link">More</div>
				<div id="moreDropdown" class="navbar-dropdown is-boxed">
					<a class="navbar-item " href="http://bulma.io/extensions/">
						<div class="level is-mobile">
							<div class="level-left">
								<div class="level-item">
									<p>
										<strong>Extensions</strong> <br> <small>Side
											projects to enhance Bulma</small>
									</p>
								</div>
							</div>
							<div class="level-right">
								<div class="level-item">
									<span class="icon has-text-info"> <i class="fa fa-plug"></i>
									</span>
								</div>
							</div>
						</div>
					</a>
				</div>
			</div>
			<a class="navbar-item " href="http://bulma.io/expo/"> <span
				class="bd-emoji">⭐️</span> Expo
			</a> <a class="navbar-item " href="http://bulma.io/love/"> <span
				class="bd-emoji">❤️</span> Love
			</a>
		</div>

		<div id="navbar-end" class="navbar-end">
			<%
				if ("true".equals(request.getSession().getAttribute("logged_in"))) {
			%>
			<a class="navbar-item is-hidden-desktop-only"
				href="/WebClass/bloglogout"> <%=request.getSession().getAttribute("email")%>님,
				환영합니다!
			</a>
			<%
				} else {
			%>
			<a class="navbar-item is-hidden-desktop-only" href="#"
				onclick="openModal('loginModal')"> <span class="icon"
				style="color: #fff;"> <i class="fa fa-lg fa-sign-in"></i>
			</span>
			</a>
			<%
				}
			%>
		</div>
	</div>
</nav>