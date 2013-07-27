<?php
// Include development settings if we are on dev or virtualbox server
if (!empty($_SERVER['PEYTZ_VIRT'])) {
  // display all PHP errors
  error_reporting(E_ALL);
  ini_set('display_errors', TRUE);
  ini_set('display_startup_errors', TRUE);

  $databases = array (
  'default' =>
    array (
      'default' =>
      array (
        'database' => 'd7_stylistano',
        'username' => 'drip',
        'password' => 'drip',
        'host' => 'localhost',
        'port' => '',
        'driver' => 'mysql',
        'prefix' => '',
      ),
    ),
  );
  // Override Solr search server string.
  // The url is based on the Solr setup in Tech Directions doc: http://goo.gl/vMzjM
  $conf['search_api_solr_overrides'] = array(
    'apache_solr_server' => array(
      'name' => t('Local Solr server (overridden)'),
      'options' => array(
        'host' => '33.33.33.5',
        'port' => 8983,
        'path' => '/solr/stylista.no',
      ),
    ),
  );
  // disable local Memcache
  $conf['cache_default_class'] = 'DrupalDatabaseCache';
  $conf['memcache_servers'] = array();
  $conf['memcache_bins'] = array();
  // disable Varnish + page cache
  $conf['reverse_proxy'] = FALSE;
  $conf['cache'] = FALSE;
  // disable aggregation
  $conf['preprocess_css'] = FALSE;
  $conf['preprocess_js'] = FALSE;
}
elseif (!empty($_SERVER['PEYTZ_DEV'])) {
  $databases = array (
    'default' =>
    array (
      'default' =>
      array (
        'database' => 'd7_stylistano',
        'username' => 'drupal',
        'password' => 'mypal',
        'host' => 'mysql-write',
        'port' => '',
        'driver' => 'mysql',
        'prefix' => '',
      ),
    ),
  );
  // Override Solr search server string
  $conf['search_api_solr_overrides'] = array(
    'apache_solr_server' => array(
      'name' => t('Dev Solr Server (Overridden)'),
      'options' => array(
        'host' => 'solr4-dev.peytz.loc',
        'port' => 8983,
        'path' => '/solr/stylista.no',
      ),
    ),
  );
  // use local Memcache for dev site
  $conf['memcache_servers'] = array(
    '127.0.0.1:11211' => 'default',
  );
  // disable Varnish + page cache
  $conf['reverse_proxy'] = FALSE;
  $conf['cache'] = FALSE;
  // disable aggregation
  $conf['preprocess_css'] = FALSE;
  $conf['preprocess_js'] = FALSE;
}

$conf['image_allow_insecure_derivatives'] = TRUE;