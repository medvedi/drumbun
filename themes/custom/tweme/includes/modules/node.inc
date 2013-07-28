<?php

/**
 * @file
 * Provides theme overrides and implementations for the Node module.
 */

/**
 * Processes variables for node.tpl.php.
 */
function tweme_process_node(&$vars) {
  list($vars['title'], ) = _tweme_parse_title($vars['title']);
}

/**
* Implements hook_preprocess_node().
*/
function tweme_preprocess_node(&$vars) {
  if($vars['view_mode'] == 'teaser') {
    $vars['theme_hook_suggestions'][] = 'node__' . $vars['type'] . '__teaser';
  }
}
