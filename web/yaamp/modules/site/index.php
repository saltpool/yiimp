<?php
$algo = user()->getState('yaamp-algo');

JavascriptFile("/extensions/jqplot/jquery.jqplot.js");
JavascriptFile("/extensions/jqplot/plugins/jqplot.dateAxisRenderer.js");
JavascriptFile("/extensions/jqplot/plugins/jqplot.barRenderer.js");
JavascriptFile("/extensions/jqplot/plugins/jqplot.highlighter.js");
JavascriptFile("/extensions/jqplot/plugins/jqplot.cursor.js");
JavascriptFile('/yaamp/ui/js/auto_refresh.js');

$height = '240px';

$min_payout = floatval(YAAMP_PAYMENTS_MINI);
$min_sunday = $min_payout / 10;

$payout_freq = (YAAMP_PAYMENTS_FREQ / 3600) . " hours";
?>

<div id='resume_update_button' class='ui-state-error' style='padding: 10px; cursor: pointer; display: none;' onclick='auto_page_resume();' align=center>
    <b>Auto Refresh Is Paused - Click Here To Resume</b></div>

<table cellspacing=20 width=100%>
<tr><td valign=top width=50%>

<!--  -->

<div class="ui-widget">
<div style="padding:5px" class="ui-widget-header ui-corner-tl ui-corner-tr">Saltpool.net</div>
<div style="padding:5px" class="ui-widget-content ui-corner-bl ui-corner-br">

<center>
<ul>
<b>Welcome to your new mining pool!</b></li>
<p>This installation was completed using the Saltpool Installer.<br>
Any edits to this page should be made to, /var/web/yaamp/modules/site/index.php</p>

<p>No registration is required, we do payouts in the currency you mine. Use your wallet address as the username.</p>

<p>Payouts are made automatically every <?=$payout_freq ?> for all balances above <b><?=$min_payout ?></b>, or <b><?=$min_sunday ?></b> on Sunday.</p>
<p>For some coins, there is an initial delay before the first payout, please wait at least 6 hours before asking for support.</p>
<p>Blocks are distributed proportionally among valid submitted shares.</p>
<br/>
</ul>
</div></div>
</center>
<br/>

<!-- Stratum Auto generation code, will automatically add coins when they are enabled and auto ready -->

<div class="ui-widget">
<div style="padding:5px" class="ui-widget-header ui-corner-tl ui-corner-tr">How to start mining on domain</div>
<div style="padding:5px" class="ui-widget-content ui-corner-bl ui-corner-br">

<center><table>
	<thead>
		<tr>
			<th>Stratum Location</th>
			<th>Choose Coin</th>
			<th>Your Wallet Address</th>
			<th>Rig (opt.)</th>
                        <th>Solo Mine</th>
                        <th>Start Mining</th>
		</tr>
	</thead>

<tbody>
	<tr>
		<td>
			<select id="drop-stratum" colspan="2" style="min-width: 140px; border-style:solid; padding: 3px; font-family: monospace; border-radius: 5px;">

<!-- Add your stratum locations here -->
			<option value="eu.">EU Stratum</option>
			<!-- <option value="us.west.">US Stratum</option>
			<option value="aus.">AUS Stratum</option>
			<option value="cad.">CAD Stratum</option>
			<option value="uk.">UK Stratum</option> -->
		</select>
	</td>

	<td>
			<select id="drop-coin" style="border-style:solid; padding: 3px; font-family: monospace; border-radius: 5px;">
        <?php
        $list = getdbolist('db_coins', "enable and visible and auto_ready order by algo asc");

        $algoheading="";
        $count=0;
        foreach($list as $coin)
        			{
        			$name = substr($coin->name, 0, 18);
        			$symbol = $coin->getOfficialSymbol();
                  $id = $coin->id;
                  $algo = $coin->algo;

        $port_count = getdbocount('db_stratums', "algo=:algo and symbol=:symbol", array(
        ':algo' => $algo,
        ':symbol' => $symbol
        ));

        $port_db = getdbosql('db_stratums', "algo=:algo and symbol=:symbol", array(
        ':algo' => $algo,
        ':symbol' => $symbol
        ));

        if ($port_count >= 1){$port = $port_db->port;}else{$port = '0000';}
        if($count == 0){ echo "<option disabled=''>$algo";}elseif($algo != $algoheading){echo "<option disabled=''>$algo</option>";}
        echo "<option data-port='$port' data-algo='-a $algo' data-symbol='$symbol'>$name ($symbol)</option>";

        $count=$count+1;
        $algoheading=$algo;
        }
        ?>
			</select>
		</td>

		<td>

<!-- Change your demo wallet here -->
			<input id="text-wallet" type="text" size="36" placeholder="bc1qnf8zre3n5vfq5ryry5pqweptahhyj7qu0g8daj" style="border-style:solid; border-width: thin; padding: 3px; font-family: monospace; border-radius: 5px;">
		</td>

		<td>
			<input id="text-rig-name" type="text" size="10" placeholder="001" style="border-style:solid; border-width: thin; padding: 3px; font-family: monospace; border-radius: 5px;">
		</td>

	        <td>
			<select id="drop-solo" colspan="2" style="min-width: 80px; border-style:solid; padding: 3px; font-family: monospace; border-radius: 5px;">
			<option value="">No</option>
			<option value=",m=solo">Yes</option>
			</select>
		</td>

		<td>
			<input id="Generate" type="button" value="Create String" onclick="generate()" style="border-style:solid; padding: 3px; font-family: monospace; border-radius: 5px;">
		</td>
	</tr>
	<tr>
			<td colspan="7"><p class="main-left-box" style="padding: 3px; color: #000000; background-color: #ffffff; font-family: monospace;" id="output">-a  -o stratum+tcp://domain:0000 -u . -p c=</p>
		</td>
	</tr>
</tbody></table>

<ul>
<p><b>Your WALLET ADDRESS must be valid for the currency you are mining!</b><p>
<p><b>DO NOT USE a BTC address here, the auto exchange is disabled on these stratums !</b></p>
<p>See the "Coins" area on the right for PORT numbers. You may mine any coin regardless if the coin is enabled or not for autoexchange. Payouts will only be made in that coins currency.</p>
<br>
</ul>
</div></div></center><br>

<!-- End new stratum generation code  -->

<div class="ui-widget">
<div style="padding:5px" class="ui-widget-header ui-corner-tl ui-corner-tr">Links</div>
<div style="padding:5px" class="ui-widget-content ui-corner-bl ui-corner-br">


<ul>

<b>API</b> - <a href='/site/api'>http://<?=YAAMP_SITE_URL
?>/site/api</a><br>
<b>Difficulty</b> - <a href='/site/diff'>http://<?=YAAMP_SITE_URL
?>/site/diff</a>
<?php
if (YIIMP_PUBLIC_BENCHMARK):
?>
<li><b>Benchmarks</b> - <a href='/site/benchmarks'>http://<?=YAAMP_SITE_URL
?>/site/benchmarks</a></li>
<?php
endif;
?>

<?php
if (YAAMP_ALLOW_EXCHANGE):
?>
<li><b>Algo Switching</b> - <a href='/site/multialgo'>http://<?=YAAMP_SITE_URL
?>/site/multialgo</a></li>
<?php
endif;
?>

<br>

</ul>
</div></div><br>

<div class="ui-widget">
<div style="padding:5px" class="ui-widget-header ui-corner-tl ui-corner-tr"><?=YAAMP_SITE_URL?> Social media</div>
<div style="padding:5px" class="ui-widget-content ui-corner-bl ui-corner-br">

<ul class="social-icons">
    <a href="http://www.discord.com"><img src='/images/discord.png' height=40px/></a>
    <a href="http://www.twitter.com"><img src='/images/x.png' height=40px/></a>
    <a href="https://t.me/"><img src='/images/telegram.png' height=40px/></a>
    <a href="https://www.facebook.com/"><img src='/images/facebook.png' height=40px/></a>
    <a href="http://www.youtube.com"><img src='/images/youtube.png' height=40px/></a>
    <a href="http://www.github.com"><img src='/images/github.png' height=40px/></a>
</ul>

</div></div><br>
</td><td valign=top>
<!--  -->

<div id='pool_current_results'>
<br><br><br><br><br><br><br><br><br><br>
</div></div></div>

<div id='pool_history_results'>
<br><br><br><br><br><br><br><br><br><br>
</div>

</td></tr></table>

<script>

function page_refresh()
{
    pool_current_refresh();
    pool_history_refresh();
}

function select_algo(algo)
{
    window.location.href = '/site/algo?algo='+algo+'&r=/';
}

////////////////////////////////////////////////////

function pool_current_ready(data)
{
    $('#pool_current_results').html(data);
}

function pool_current_refresh()
{
    var url = "/site/current_results";
    $.get(url, '', pool_current_ready);
}

////////////////////////////////////////////////////

function pool_history_ready(data)
{
    $('#pool_history_results').html(data);
}

function pool_history_refresh()
{
    var url = "/site/history_results";
    $.get(url, '', pool_history_ready);
}

</script>

<script>
function getLastUpdated(){
    var stratum = document.getElementById('drop-stratum');
    var coin = document.getElementById('drop-coin');
    var solo = document.getElementById('drop-solo');
    var rigName = document.getElementById('text-rig-name').value;
    var result = '';

    result += coin.options[coin.selectedIndex].dataset.algo + ' -o stratum+tcp://';
    result += stratum.value + 'domain:';
    result += coin.options[coin.selectedIndex].dataset.port + ' -u ';
    result += document.getElementById('text-wallet').value;
    if (rigName) result += '.' + rigName;
    result += ' -p c=';
    result += coin.options[coin.selectedIndex].dataset.symbol + solo.value;
    return result;
}
function generate(){
      var result = getLastUpdated()
        document.getElementById('output').innerHTML = result;
}
generate();
</script>
