<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> :: $SiteConfig.Title</title>
	$MetaTags(false)
	<meta name="author" content="$SiteConfig.Title">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	
	<% require themedCSS(base) %>
	<% require themedCSS(skeleton) %>
	<% require themedCSS(navigataur) %>
	<% require themedCSS(layout) %>

	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<link rel="shortcut icon" href="images/favicon.ico">
	<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">
</head>
<body>
	
	<div class="header clearfix">
		<h1>$SiteConfig.Title</h1>
		<input type="checkbox" id="toggle" />
		<div class="nav">
			<label for="toggle" class="toggle" data-open="Main Menu" data-close="Close Menu" onclick></label>
			<ul class="menu">
				<% loop $Menu(1) %>
				<li><a class="$LinkOrCurrent" href="$Link">$MenuTitle</a></li>
				<% end_loop %>
			</ul>
		</div>
	</div>
	
	<div class="container">
		$Layout
	</div>

	<div class="container">
		<hr />
		<div class="one-third column">
			<h3>About Skeleton?</h3>
			<p>Skeleton is a small collection of well-organized CSS files that can help you rapidly develop sites that look beautiful at any size, be it a 17" laptop screen or an iPhone. It's based on a responsive grid, but also provides very basic CSS for typography, buttons, forms and media queries. Go ahead, resize this super basic page to see the grid in action.</p>
		</div>
		<div class="one-third column">
			<h3>Three Core Principles</h3>
			<p>Skeleton is built on three core principles:</p>
			<ul class="square">
				<li><strong>A Responsive Grid Down To Mobile</strong>: Elegant scaling from a browser to tablets to mobile.</li>
				<li><strong>Fast to Start</strong>: It's a tool for rapid development with best practices</li>
				<li><strong>Style Agnostic</strong>: It provides the most basic, beautiful styles, but is meant to be overwritten.</li>
			</ul>
		</div>
		<div class="one-third column">
			<h3>Docs &amp; Support</h3>
			<p>The easiest way to really get started with Skeleton is to check out the full docs and info at <a href="http://www.getskeleton.com">www.getskeleton.com.</a></p>
		</div>
	</div>
	
</body>
</html>