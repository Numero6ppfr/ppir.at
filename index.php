<?php 
// Start YOURLS engine
require_once( dirname(__FILE__).'/includes/load-yourls.php' );
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>PPir.at : Le raccourcisseur d'URL du Parti Pirate</title>
        <link rel="stylesheet" href="<?php echo YOURLS_SITE; ?>/css/share.css?v=<?php echo YOURLS_VERSION; ?>">
        <link rel="stylesheet" href="index.css">
        <script src="<?php echo YOURLS_SITE; ?>/js/jquery-1.4.3.min.js" type="text/javascript"></script>
        <script src="<?php echo YOURLS_SITE; ?>/js/ZeroClipboard.js?v=<?php echo YOURLS_VERSION; ?>" type="text/javascript"></script>
        <script type="text/javascript">ZeroClipboard.setMoviePath( '<?php echo YOURLS_SITE; ?>/js/ZeroClipboard.swf' );</script>
        <script src="<?php echo YOURLS_SITE; ?>/js/share.js?v=<?php echo YOURLS_VERSION; ?>" type="text/javascript"></script>
    </head>

    <body>
        <header>
            <img src="partipirate.svg" height="15%">
            <h1>PPir.at : Le raccourcisseur d'URL du Parti Pirate</h1>
        </header>

        <div id="container">

	<?php

	// Part to be executed if FORM has been submitted
	if ( isset($_REQUEST['url']) ) {

		$url     = yourls_sanitize_url( $_REQUEST['url'] );
		$keyword = isset( $_REQUEST['keyword'] ) ? yourls_sanitize_keyword( $_REQUEST['keyword'] ): '' ;
		$title   = isset( $_REQUEST['title'] ) ? yourls_sanitize_title( $_REQUEST['title'] ) : '' ;

		$return  = yourls_add_new_link( $url, $keyword, $title );
		
		$shorturl = isset( $return['shorturl'] ) ? $return['shorturl'] : '';
		$message  = isset( $return['message'] ) ? $return['message'] : '';
		$title    = isset( $return['title'] ) ? $return['title'] : '';
		
		echo <<<RESULT
		<h2>URL has been shortened</h2>
		<p>Original URL: <code><a href="$url">$url</a></code></p>
		<p>Short URL: <code><a href="$shorturl">$shorturl</a></code></p>
		<p><strong>$message</strong></p>
RESULT;
		
		// Include the Copy box and the Quick Share box
		yourls_share_box( $url, $shorturl, $title );

	// Part to be executed when no form has been submitted
	} else {
	
		$site = YOURLS_SITE;

		echo <<<HTML
		<h2>Enter a new URL to shorten</h2>
		<form method="post" action="">
		<p><label>URL: <input type="text" name="url" value="http://" size="70" /></label></p>
		<p><label>Optional custom keyword: $site/<input type="text" name="keyword" size="8" /></label></p>
		<p><label>Optional title: <input type="text" name="title" size="57" /></label></p>
		<p><input type="submit" value="Shorten" /></p>
		</form>	
HTML;

	}

	?>

	<!-- Example bookmarklet. Be sure to rename the link target from "sample-public-front-page.php" to whatever you'll use (probably index.php) -->
	<p><a href="javascript:void(location.href='<?php echo YOURLS_SITE; ?>/index.php?format=simple&action=shorturl&url='+escape(location.href))">bookmarklet</a>

</div>

<div id="footer"><p>Powered by <a href="http://yourls.org/" title="YOURLS">YOURLS</a> v<?php echo YOURLS_VERSION; ?></p></div>
</body>
</html>
