<?php
// auto-generated by sfRoutingConfigHandler
// date: 2016/03/02 11:49:53
return array(
'homepage' => new sfRoute('/', array (
  'module' => 'anketoModules',
  'action' => 'index',
), array (
), array (
)),
'default_index' => new sfRoute('/:module', array (
  'action' => 'index',
), array (
), array (
)),
'default' => new sfRoute('/:module/:action/*', array (
), array (
), array (
)),
'show' => new sfRoute('/', array (
  'module' => 'anketoModules',
  'action' => 'show',
), array (
), array (
)),
'count' => new sfRoute('/', array (
  'module' => 'anketoModules',
  'action' => 'count',
), array (
), array (
)),
'select' => new sfRoute('/', array (
  'module' => 'anketoModules',
  'action' => 'select',
), array (
), array (
)),
'analysize' => new sfRoute('/', array (
  'module' => 'anketoModules',
  'action' => 'analysize',
), array (
), array (
)),
'login' => new sfRoute('/', array (
  'module' => 'anketoModules',
  'action' => 'login',
), array (
), array (
)),
'confirm' => new sfRoute('/', array (
  'module' => 'anketoModules',
  'action' => 'confirm',
), array (
), array (
)),
);
