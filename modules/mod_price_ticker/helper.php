<?php
class ForexFeed{
  const connection_error = 'Connection Error';
  const inputs_error     = 'Internal Error';
  var $method;
  var $result;
  var $symbols;
  var $db_host;
  var $db_user;
  var $db_pass;
  var $db_name;
  var $server_ip;
  var $server_port;
  var $cache_life;
  var $cache_del;
  function __construct($method){
    $this->method  = $method;
    $this->symbols = QUOTES_SYMBOLS;
    if($method){
      $this->db_host = QUOTES_DB_HOST;
      $this->db_user = QUOTES_DB_USER;
      $this->db_pass = QUOTES_DB_PASS;
      $this->db_name = QUOTES_DB_NAME;
    }
    else{
      $this->server_ip   = MT4_IP;
      $this->server_port = MT4_PORT;
      $this->conn_life   = CONN_LIFE;
    }
  }
  function getFeeds(){
    $flag = $this->method;
    if($flag)
      $this->result = $this->getDatabaseFeeds();
    else
      $this->result = $this->getScoketFeeds();
    return $this->result;
  }
  function getDatabaseFeeds(){
    $str     = '';
    $symbols = $this->symbols;
    $symbols = explode(',', $symbols);
    $result  = array();
    foreach($symbols as $symbol)
  	  if(!empty($symbol)) $str .= "'" . $symbol . "',";
    $str  = substr($str, 0, -1);
    $conn = @mysql_connect($this->db_host, $this->db_user, $this->db_pass);
    mysql_select_db($this->db_name, $conn);
    $sql = mysql_query("SELECT SYMBOL,ASK,BID,DIRECTION FROM mt4_prices WHERE symbol IN ($str)");
    if($sql && mysql_num_rows($sql)){
      while($sql_result = mysql_fetch_array($sql)){
        $dir    = $sql_result['DIRECTION'];
        $symbol = $sql_result['SYMBOL'];
        $ask    = $sql_result['ASK'];
        $bid    = $sql_result['BID'];
        $symbol_details = array('dir' => $dir, 'symbol' => $symbol, 'ask' => $ask, 'bid' => $bid);
        $result[] = $symbol_details;
      }
    }
    else{
      @mysql_close($conn);
      return $this->connection_error;
    }
    @mysql_close($conn);
    return $result;
  }
  function getScoketFeeds(){
    $query  = "QUOTES-" . $this->symbols;
    $str    = '';
    $result = array();
    $conn   = @fsockopen($this->server_ip, $this->server_port, $errno, $errstr, $this->conn_life);
    if($conn){
      if(fputs($conn,"W$query\nQUIT\n")!=FALSE){
        while(!feof($conn)){
          if(($line = fgets($conn, 128)) == "end\r\n") break;
          $str .= $line;
        }
      }
      fclose($conn);
      foreach(explode("\n", $str) as $line){
        if(isset($line[0]) && ($line[0]=='u' || $line[0]=='d')){
          $line = explode(' ',$line);
          if($line[0]=="up") $dir = 0;
          else $dir= 1;
          $symbol_details = array('dir' => $dir, 'symbol' => $line[1], 'ask' => $line[3], 'bid' => $line[2]);
          $result[] = $symbol_details;
        }
      }
    }
    else{
      @socket_close($conn);
      return self::connection_error;
    }
    return $result;
  }
}
?>