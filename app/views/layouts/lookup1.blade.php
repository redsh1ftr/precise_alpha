<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Precise Maintenance</title>
	<style>
		@import url(//fonts.googleapis.com/css?family=Lato:700);

		body {
			margin:0;
			font-family:'Lato', sans-serif;
			text-align:center;
			color: #100;
		}

		.welcome {
			width: 800px;
			height: 200px;
			position: absolute;
			left: 0%;
			top: 20%;
			margin-left: 0px;
			margin-top: 0px;
		}

		a, a:visited {
			text-decoration:none;
		}

		h1 {
			font-size: 32px;
			margin: 16px 0 0 0;
		}
	</style>
</head>
<body>
	<div class="welcome">
		@yield('content')
	</div>
</body>
</html>