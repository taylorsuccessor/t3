<?php
if(!defined('_JEXEC')){
	define('_JEXEC', 1);
	define('DS', DIRECTORY_SEPARATOR);
  define('JPATH_BASE', realpath(dirname(__FILE__).DS.'..'.DS.'..' ));
	require_once JPATH_BASE.DS.'includes'.DS.'defines.php';
	require_once JPATH_BASE.DS.'includes'.DS.'framework.php';
	$mainframe =& JFactory::getApplication('site');
	$mainframe->initialise();
	jimport('joomla.application.module.helper');
  jimport('joomla.html.parameter');
	$module  =  JModuleHelper::getModule('price_ticker');
	$id      =  92;
	$mod_row =& JTable::getInstance('Module', 'JTable');
	$mod_row->load($id);
	$params = new JParameter($mod_row->params);
}
?>
<?php
require_once JPATH_BASE.'/modules/mod_price_ticker/helper.php';
define('QUOTES_SYMBOLS', $params->get('symbols'));
$method = $params->get('type');
if($method){
 define('QUOTES_DB_HOST', $params->get('db_host'));
 define('QUOTES_DB_NAME', $params->get('db_name'));
 define('QUOTES_DB_USER', $params->get('db_user'));
 define('QUOTES_DB_PASS', $params->get('db_pass'));
}
else{
  define('MT4_IP',    $params->get('ip'));
  define('MT4_PORT',  $params->get('port'));
  define('CONN_LIFE', $params->get('time_out'));
}
$object = new ForexFeed($method);
$result = $object->getFeeds();
$error  = 0;
$temp   = is_array($result);
if(empty($temp)) $error = 1;
$action =JRequest::getVar('action','');
if(!empty($action)){
  if($action == 'lastquotes'){
  	getQuotesUpdate($result);
	 	exit();
  }
}
?>
<link rel="stylesheet" href="modules/mod_price_ticker/tmpl/css/style.css" type="text/css" />
<script type="text/javascript" src="modules/mod_price_ticker/tmpl/js/simplyscroll.js"></script>
<script>
 jQuery(document).ready( function($){
   setInterval('updateQuotes()', 5000);
   $('#scroller_quotes').show();
	 $("#scroller_quotes").simplyScroll({
		 autoMode: 'loop',
		 speed:2
	 });
 });
 function updateQuotes(){
    jQuery({
     cache: false,
     url: 'modules/mod_price_ticker/mod_price_ticker.php?action=lastquotes',
     success: function(data){
       if(data != '' && data != null){
         data = data.split('/');
         for(var i=0; i<data.length; i++){
           var row = data[i];
           row = row.split('-');
           if(row[2] != '' && row[2] != null)
            var new_date = row[2].split('#');
           if(row[1] == '1')
             $('#'+row[0]).html('<span class="quotes_symbol">'+row[0]+' <img src="modules/mod_price_ticker/tmpl/images/up.png" /></span><span class="down_ask">&nbsp;</span><span class="down_dash">&nbsp;</span><span class="dwon_bid">Price : ' + new_date[1]+' / '+new_date[0] + '</span>');
           if(row[1] == '0')
             $('#'+row[0]).html('<span class="quotes_symbol">' + row[0] + ' <img src="modules/mod_price_ticker/tmpl/images/down.png" /></span><span class="up_ask">&nbsp;</span><span class="up_dash">&nbsp;</span><span class="up_bid">Price : ' + new_date[1]+' / '+new_date[0] + '</span>');
         }
       }
     }
   });
 }
</script>
<?php
echo "<div class='quotes'>
      <div class='inner_quotes'>
      <div class='body_quotes'>
      <ul id='scroller_quotes' style='display:none;'>";
if($error){
  echo '<li>';
  echo '<span>'.$result.'</span>';
  echo '</li>';
}
else{
  foreach($result as $line){
    if($line['dir'] == 0){
        $dir         = 'up.png';
        $quotes_ask  = 'up_ask';
        $quotes_bid  = 'up_bid';
        $quotes_dash = 'up_dash';
    }
    else{
      $dir         = 'down.png';
      $quotes_ask  = 'down_ask';
      $quotes_bid  = 'dwon_bid';
      $quotes_dash = 'down_dash';
    }
    echo '<li id="'.$line['symbol'].'">';
    echo '<span class="quotes_symbol">'.$line['symbol'].' </span>';
    echo '<span><img src="modules/mod_price_ticker/tmpl/images/'.$dir.'" /></span>';
    echo '<span class='.$quotes_ask.'>Price : '.$line['bid'].'</span>';
    echo '<span> / </span>';
    echo '<span class='.$quotes_bid.'>'.$line['ask'].'</span>';
    echo '</li>';
  }
}
echo "</ul></div></div></div>";
function getQuotesUpdate($result){
  $quotes = " ";
  foreach($result as $line){
    $quotes = $line['symbol'].'-'.$line['dir'].'-'.$line['bid'].'#'.$line['ask'];
    $quotes = $quotes . '/';
    echo $quotes;
  }
}
?>
