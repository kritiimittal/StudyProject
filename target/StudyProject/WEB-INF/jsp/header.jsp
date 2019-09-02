<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<nav class="navbar navbar-expand-lg navbar-light navbar-dark bg-dark">
	<a class="navbar-brand" href="#">Navbar</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="first">Search</a>
			</li>
			<li class="nav-item active"><a class="nav-link" href="login">Upload</a>
			</li>
			<li class="nav-item dropdown active"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> Download </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item"
						href="https://www.google.com/">Notes</a> <a
						class="dropdown-item" href="#">Playlists</a> <a
						class="dropdown-item" href="#">Books</a>
				</div></li>


			<li class="nav-item active"><a class="nav-link" href="feedback">Feedback</a>
			</li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle active" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> Important Links </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item"
						href="https://www.tutorialspoint.com/
						">Tutorials Point</a> <a
						class="dropdown-item" href="https://www.geeksforgeeks.org/">Geeks For Geeks</a> <a
						class="dropdown-item" href="https://www.javatpoint.com/
						">Javatpoint</a>
				</div></li>
			
			
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
	</div>
</nav>

