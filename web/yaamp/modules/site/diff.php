<br>

<br><div class="ui-widget">
<div style="padding:5px" class="ui-widget-header ui-corner-tl ui-corner-tr">Yiimp Stratum Difficulty</div>
<div style="padding:5px" class="ui-widget-content ui-corner-bl ui-corner-br">
<center>
<br>
<b>
<p style="width: 700px;">By default, yiimp will adjust the difficulty of your miner automatically over time until
you have from 5 to 15 submits per minute. It's a good trade off between bandwidth and accuracy.</p>

<p style="width: 700px;">You can also set a fixed custom difficulty using the password parameter. For example,
if you want to set the difficulty to 64, you would use:</p>

<pre class="main-left-box" style='padding: 3px; font-size: .9em; width: 700px; color: #000000; background-color: #ffffff; font-family: monospace;'>
-o stratum+tcp://<?= YAAMP_STRATUM_URL ?>:3433 -u wallet_adress -p d=64
</pre>

<p style="width: 700px;">Here are the accepted values for the custom diff:</p>

<p>Scrypt, Scrypt-N and Neoscrypt: from 2 to 65536</p>

<p>X11, X13, X14 and X15: from 0.002 to 0.512</p>

<p>Lyra2: from 0.01 to 2048</p>

<p style="width: 700px;">If the difficulty is set higher than one of the a mined coins, it will be forced down to fit
        the lowest coin's difficulty.</p>

</b></center></div></div></div></div>
<br>
