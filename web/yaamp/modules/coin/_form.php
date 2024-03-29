<?php

echo "<br><div class='ui-widget' style='width: 75%'>";
echo "<div style='padding:5px' class='ui-widget-header ui-corner-tl ui-corner-tr'>Update Coin Links</div>";
echo "<div style='padding:5px' class='ui-widget-content ui-corner-bl ui-corner-br'>";

$this->widget('UniForm');

echo CUFHtml::beginForm();
echo CUFHtml::errorSummary($coin);
echo CUFHtml::openTag('fieldset', array('class'=>'inlineLabels'));

if(!$coin->installed)
{
	echo CUFHtml::openActiveCtrlHolder($coin, 'name');
	echo CUFHtml::activeLabelEx($coin, 'name');
	echo CUFHtml::activeTextField($coin, 'name');
	echo "<p class='formHint2'></p>";
	echo CUFHtml::closeCtrlHolder();

	echo CUFHtml::openActiveCtrlHolder($coin, 'symbol');
	echo CUFHtml::activeLabelEx($coin, 'symbol');
	echo CUFHtml::activeTextField($coin, 'symbol');
	echo "<p class='formHint2'></p>";
	echo CUFHtml::closeCtrlHolder();

	echo CUFHtml::openActiveCtrlHolder($coin, 'algo');
	echo CUFHtml::activeLabelEx($coin, 'algo');
	echo CUFHtml::activeTextField($coin, 'algo');
	echo "<p class='formHint2'></p>";
	echo CUFHtml::closeCtrlHolder();

	echo CUFHtml::openActiveCtrlHolder($coin, 'image');
	echo CUFHtml::activeLabelEx($coin,'image');
	echo CUFHtml::activeTextField($coin, 'image');
	echo "<p class='formHint2'></p>";
	echo CUFHtml::closeCtrlHolder();
}

echo CUFHtml::openActiveCtrlHolder($coin, 'link_bitcointalk');
echo CUFHtml::activeLabelEx($coin, 'link_bitcointalk');
echo CUFHtml::activeTextField($coin, 'link_bitcointalk');
echo "<p class='formHint2'></p>";
echo CUFHtml::closeCtrlHolder();

echo CUFHtml::openActiveCtrlHolder($coin, 'link_github');
echo CUFHtml::activeLabelEx($coin, 'link_github');
echo CUFHtml::activeTextField($coin, 'link_github');
echo "<p class='formHint2'></p>";
echo CUFHtml::closeCtrlHolder();

echo CUFHtml::openActiveCtrlHolder($coin, 'link_site');
echo CUFHtml::activeLabelEx($coin, 'link_site');
echo CUFHtml::activeTextField($coin, 'link_site');
echo "<p class='formHint2'></p>";
echo CUFHtml::closeCtrlHolder();

echo CUFHtml::openActiveCtrlHolder($coin, 'link_exchange');
echo CUFHtml::activeLabelEx($coin, 'link_exchange');
echo CUFHtml::activeTextField($coin, 'link_exchange');
echo "<p class='formHint2'></p>";
echo CUFHtml::closeCtrlHolder();

echo CUFHtml::openActiveCtrlHolder($coin, 'link_explorer');
echo CUFHtml::activeLabelEx($coin, 'link_explorer');
echo CUFHtml::activeTextField($coin, 'link_explorer');
echo "<p class='formHint2'></p>";
echo CUFHtml::closeCtrlHolder();

echo CUFHtml::closeTag('fieldset');
showSubmitButton($update? 'Save': 'Create');
echo CUFHtml::endForm();

echo "<button class='ui-state-default ui-corner-all' style='padding: 5px 15px 5px 15px'><a href='/coin'>Back to coin list</a><button>";

echo "</div></div>";

