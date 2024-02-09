<?php

// Functions commonly used in admin pages

function getAdminSideBarLinks()
{
    $links = <<<end
<button class='ui-state-active ui-corner-all' style='padding: 5px 10px 5px 10px'><a href="/site/exchange">Exchanges</a></button>
<button class='ui-state-active ui-corner-all' style='padding: 5px 10px 5px 10px'><a href="/site/botnets">Botnets</a></button>
<button class='ui-state-active ui-corner-all' style='padding: 5px 10px 5px 10px'><a href="/site/user">Users</a></button>
<button class='ui-state-active ui-corner-all' style='padding: 5px 10px 5px 10px'><a href="/site/worker">Workers</a></button>
<button class='ui-state-active ui-corner-all' style='padding: 5px 10px 5px 10px'><a href="/site/version">Version</a></button>
<button class='ui-state-active ui-corner-all' style='padding: 5px 10px 5px 10px'><a href="/site/earning">Earnings</a></button>
<button class='ui-state-active ui-corner-all' style='padding: 5px 10px 5px 10px'><a href="/site/payments">Payments</a></button>
<button class='ui-state-active ui-corner-all' style='padding: 5px 10px 5px 10px'><a href="/site/monsters">Big Miners</a></button>
end;
    return $links;
}

// shared by wallet "tabs", to move in another php file...
function getAdminWalletLinks($coin, $info = NULL, $src = 'wallet')
{
    $html = CHtml::link("<button class='ui-state-default ui-corner-all' style='padding: 5px 10px 5px 10px; cursor: pointer;'>COIN PROPERTIES</button>", '/site/update?id=' . $coin->id);
    if ($info) {
        $html .= ' || ' . $coin->createExplorerLink("<button class='ui-state-default ui-corner-all' style='padding: 5px 10px 5px 10px; cursor: pointer;'>EXPLORER</button>");
        $html .= ' || ' . CHtml::link("<button class='ui-state-default ui-corner-all' style='padding: 5px 10px 5px 10px; cursor: pointer;'>PEER</button>", '/site/peers?id=' . $coin->id);
        if (YAAMP_ADMIN_WEBCONSOLE)
            $html .= ' || ' . CHtml::link("<button class='ui-state-default ui-corner-all' style='padding: 5px 10px 5px 10px; cursor: pointer;'>CONSOLE</button>", '/site/console?id=' . $coin->id);
        $html .= ' || ' . CHtml::link("<button class='ui-state-default ui-corner-all' style='padding: 5px 10px 5px 10px; cursor: pointer;'>TRIGGERS</button>", '/site/triggers?id=' . $coin->id);
        if ($src != 'wallet')
            $html .= ' || ' . CHtml::link("<button class='ui-state-active ui-corner-all' style='padding: 5px 10px 5px 10px; cursor: pointer;'>{$coin->symbol}</button>", '/site/coin?id=' . $coin->id);
    }

    if (!$info && $coin->enable)
        $html .= ' || ' . CHtml::link("<button class='ui-state-active ui-corner-all' style='padding: 5px 10px 5px 10px; cursor: pointer;'>STOP COIND</button>", '/site/stopcoin?id=' . $coin->id);

    if ($coin->auto_ready)
        $html .= ' || ' . CHtml::link("<button class='ui-state-active ui-corner-all' style='padding: 5px 10px 5px 10px; cursor: pointer;'>UNSET AUTO</button>", '/site/unsetauto?id=' . $coin->id);
    else
        $html .= ' || ' . CHtml::link("<button class='ui-state-active ui-corner-all' style='padding: 5px 10px 5px 10px; cursor: pointer;'>SET AUTO</button>", '/site/setauto?id=' . $coin->id);

    $html .= '<br/>';

    if (!empty($coin->link_bitcointalk))
        $html .= CHtml::link('forum', $coin->link_bitcointalk, array(
            'target' => '_blank'
        )) . ' ';

    if (!empty($coin->link_github))
        $html .= CHtml::link('git', $coin->link_github, array(
            'target' => '_blank'
        )) . ' ';

    if (!empty($coin->link_site))
        $html .= CHtml::link('site', $coin->link_site, array(
            'target' => '_blank'
        )) . ' ';

    if (!empty($coin->link_explorer))
        $html .= CHtml::link('chain', $coin->link_explorer, array(
            'target' => '_blank',
            'title' => 'External Blockchain Explorer'
        )) . ' ';

    $html .= CHtml::link('google', 'http://google.com/search?q=' . urlencode($coin->name . ' ' . $coin->symbol . ' bitcointalk'), array(
        'target' => '_blank'
    ));

    return $html;
}

/////////////////////////////////////////////////////////////////////////////////////////////

// Check if $IP is in $CIDR range
function ipCIDRCheck($IP, $CIDR)
{
    list($net, $mask) = explode('/', $CIDR);

    $ip_net  = ip2long($net);
    $ip_mask = ~((1 << (32 - $mask)) - 1);

    $ip_ip     = ip2long($IP);
    $ip_ip_net = $ip_ip & $ip_mask;

    return ($ip_ip_net === $ip_net);
}

function isAdminIP($ip)
{
    foreach (explode(',', YAAMP_ADMIN_IP) as $range) {
        if (strpos($range, '/')) {
            if (ipCIDRCheck($ip, $range) === true)
                return true;
        } else if ($range === $ip) {
            return true;
        }
    }
    return false;
}

/////////////////////////////////////////////////////////////////////////////////////////////
