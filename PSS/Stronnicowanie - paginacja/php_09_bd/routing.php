<?php

use core\App;
use core\Utils;

App::getRouter()->setDefaultRoute('orderList'); // akcja/ścieżka domyślna
App::getRouter()->setLoginRoute('login'); // akcja/ścieżka na potrzeby logowania (przekierowanie, gdy nie ma dostępu)

Utils::addRoute('orderList',    'OrderListCtrl', ['Klient','Operator']);
Utils::addRoute('userList',  'UserListCtrl',	['Administrator']);
Utils::addRoute('statusList',  'StatusListCtrl',	['Administrator']);
Utils::addRoute('permissionsList',  'PermissionsListCtrl',	['Administrator']);
Utils::addRoute('loginShow',     'LoginCtrl');
Utils::addRoute('login',         'LoginCtrl');
Utils::addRoute('logout',        'LoginCtrl');
//Utils::addRoute('personNew',     'PersonEditCtrl',	['user','Administrator']);
//Utils::addRoute('personEdit',    'PersonEditCtrl',	['user','Administrator']);
//Utils::addRoute('personSave',    'PersonEditCtrl',	['user','Administrator']);
//Utils::addRoute('personDelete',  'PersonEditCtrl',	['Administrator']);
Utils::addRoute('addUserNew',  'AddUserCtrl',	['Administrator']);
Utils::addRoute('addUserSave',    'AddUserCtrl',	['Administrator']);
Utils::addRoute('userEdit',    'AddUserCtrl',	['Administrator']);
Utils::addRoute('addOrderNew',  'AddOrderCtrl',	['Administrator','Klient','Operator']);
Utils::addRoute('addOrderSave',    'AddOrderCtrl',	['Administrator','Klient','Operator']);
Utils::addRoute('orderEdit',    'AddOrderCtrl',	['Administrator','Klient','Operator']);
Utils::addRoute('addStatusNew',  'AddStatusCtrl',	['Administrator']);
Utils::addRoute('addStatusSave',    'AddStatusCtrl',	['Administrator']);
Utils::addRoute('statusEdit',    'AddStatusCtrl',	['Administrator']);
Utils::addRoute('orderStatusEdit',    'ChangeOrderStatusCtrl',	['Administrator','Operator']);
Utils::addRoute('orderStatusSave',    'ChangeOrderStatusCtrl',	['Administrator','Operator']);
Utils::addRoute('addPermissionsNew',  'AddPermissionsCtrl',	['Administrator']);
Utils::addRoute('addPermissionsSave',    'AddPermissionsCtrl',	['Administrator']);