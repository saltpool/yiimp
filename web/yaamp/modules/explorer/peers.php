<?php
if (!$coin) $this->goback();

require dirname(__FILE__) . '/../../ui/lib/pageheader.php';

$this->pageTitle = 'Peers - ' . $coin->name;

$remote = new WalletRPC($coin);
$info = $remote->getinfo();

//////////////////////////////////////////////////////////////////////////////////////
echo <<<end
<style type="text/css">
body { margin: 4px; }
pre { margin: 0 4px; }
</style>

<div class="ui-widget">
<div style="padding:5px" class="ui-widget-header ui-corner-tl ui-corner-tr">{$this->pageTitle}</div>
<div style="padding:5px" class="ui-widget-content ui-corner-bl ui-corner-br">
end;


$addnode = array();
$version = '';
$localheight = arraySafeVal($info, 'blocks');

$list = $remote->getpeerinfo();

if (!empty($list)) foreach ($list as $peer)
{
    $node = arraySafeVal($peer, 'addr');
    if (strstr($node, '127.0.0.1')) continue;
    if (strstr($node, '192.168.')) continue;
    if (strstr($node, 'yiimp')) continue;

    $addnode[] = ($coin->rpcencoding == 'DCR' ? 'addpeer=' : 'addnode=') . $node;

    $peerver = trim(arraySafeVal($peer, 'subver') , '/');
    $version = max($version, $peerver);
}

asort($addnode);

echo '<pre>';
echo implode("\n", $addnode);
echo '</pre>';

echo '</div>';
echo '</div>';
