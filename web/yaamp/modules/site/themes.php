<?php

if(isset($_POST['theme'])) {
	$newid = trim(htmlentities($_POST['theme'], ENT_QUOTES, 'UTF-8'));
	$lastid = trim(htmlentities($_POST['lastid'], ENT_QUOTES, 'UTF-8'));
//var_dump($_POST);
	dborun("INSERT INTO themes (id,active) VALUES ('$lastid','0') ON DUPLICATE KEY UPDATE active = 0");
	dborun("INSERT INTO themes (id,active) VALUES ('$newid','1') ON DUPLICATE KEY UPDATE active = 1");
//echo "INSERT INTO themes (id,active) VALUES ('$lastid','0') ON DUPLICATE KEY UPDATE active = 0";
}

echo getAdminSideBarLinks();

echo "<br><br><div class='ui-widget' style='width: 75%'>";
echo "<div style='padding:5px' class='ui-widget-header ui-corner-tl ui-corner-tr'>Theme Manager</div>";
echo "<div style='padding:5px' class='ui-widget-content ui-corner-bl ui-corner-br'>";

echo "Some basic themes are available for you to use to make your Yiimp mining pool look a bit different from stock standard.<br><br>";
echo "Select from the following options to change the look of the website.";

$enabled = getdbocount('db_themes', "enabled=1");
echo "<br><br><b>There are currently " . $enabled . " colour themes available:</b><br><br>";

$themes = getdbolist('db_themes', 'enabled=1');

echo '<form action="/site/themes" method="post">';

foreach($themes as $theme)
	{
	$themename = $theme->name;
	$darksetting = $theme->dark;

	$dark = "light";

	if($darksetting == "1") {
		$dark = "dark";
	}

	$themenameclean = ucfirst(str_replace("-"," ",$themename));

	$id = $theme->id;

	if($theme->active == 1) {
		echo "<div class=ui-state-highlight>";
		echo '<input type="radio" id="' . $themename . '" name="theme" value="' . $id . '" checked>'.  $themenameclean . ' <img width=15px src=/images/' . $dark . '.png></div>';
		echo '<input type="hidden" name="lastid" value="' . $id . '">';
	}
	else {
	 	echo '<input type="radio" id="' . $themename . '" name="theme" value="' . $id . '">'.  $themenameclean . ' <img width=15px src=/images/' . $dark . '.png><br>';
	}
}
echo '<br><input type="submit" class="ui-state-default ui-corner-all" name="Submit"></form>';
echo "<br>Note: You may need to clear your browser cache to see the changes.</div></div>";

