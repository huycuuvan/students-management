<?php
//m = ten cua ham nam trong thu muc controller
$m = trim($_GET['m'] ?? 'index'); //ham mac dinh trong controller la index
$m = strtolower($m); //viet thuong tat ca ten ham
require 'model/profileModel.php';

switch ($m) {
    case 'index':
        index();
        break;
    default:
        index();
        break;
}

function index()
{
    if (!isLoginUser()) {
        header("location:index.php");
        exit();
    }
    $id = trim($_GET['id']);
    $id = is_numeric($id) ? $id : 0;

    $infor = getAllInforUserById($id);

    require 'view/profile/index_view.php';
}
