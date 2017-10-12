<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file='templates/html.jsp'%>
<%@ include file='templates/header.jsp'%>

<section class="hero is-medium is-info is-bold">
	<div class="hero-body">
		<div class="container">
			<h1 class="title">Primary bold title</h1>
			<h2 class="subtitle">Primary bold subtitle</h2>
		</div>
	</div>
</section>

<section class="section">
	<div class="container">
		<div class="columns">
			<div class="column is-one-quarter">
				<%@ include file='templates/menu.jsp'%>
			</div>
			<div class="column is-auto">
				<div class="columns">
					<div class="column is-4">
						<div class="card">
							<div class="card-image">
								<figure class="image is-4by3">
									<img src="http://bulma.io/images/placeholders/1280x960.png"
										alt="Placeholder image">
								</figure>
							</div>
							<div class="card-content">
								<div class="media">
									<div class="media-left">
										<figure class="image is-48x48">
											<img src="http://bulma.io/images/placeholders/96x96.png"
												alt="Placeholder image">
										</figure>
									</div>
									<div class="media-content">
										<p class="title is-4">John Smith</p>
										<p class="subtitle is-6">@johnsmith</p>
									</div>
								</div>

								<div class="content">
									Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Phasellus nec iaculis mauris. <a>@bulmaio</a>. <a href="#">#css</a>
									<a href="#">#responsive</a> <br>
									<time datetime="2016-1-1">11:09 PM - 1 Jan 2016</time>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<%@ include file='templates/footer.jsp'%>