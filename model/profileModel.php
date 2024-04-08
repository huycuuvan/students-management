<?php
require "database/database.php";

function getAllInforUserById($id)
{
    $sql = "SELECT  u.extra_code , u.first_name, u.last_name,u.phone, u.full_name, u.email,u.address, u.avatar, u.birthday,r.id,r.name AS roleName FROM users as u  INNER JOIN roles as r ON r.id=u.role_id  WHERE u.`id` =:id ";
    $db = connectionDb();
    $stmt = $db->prepare($sql);
    $data = [];
    if ($stmt) {
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);

        if ($stmt->execute()) {
            if ($stmt->rowCount() > 0) {
                $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
            }
        }
    }


    disconnectDb($db);
    return $data;
}
