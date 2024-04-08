<?php
if (!defined('ROOT_PATH')) {
    die('Can not access');
}
$titlePage = "Btec - Create Department";
$errorAdd  = $_SESSION['error_add_department'] ?? null;
?>
<?php require 'view/partials/header_view.php'; ?>

<div class="page-header">
    <h3 class="page-title">
        <span class="page-title-icon bg-gradient-primary text-white me-2">
            <i class="mdi mdi-home"></i>
        </span> Create Department
    </h3>
    <nav aria-label="breadcrumb">
        <ul class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">
                <span></span>Overview <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
            </li>
        </ul>
    </nav>
</div>
<div class="row">
    <div class="col-sm-12 col-md-12">
        <a class="btn btn-primary" href="index.php?c=department&m=index"> List Users</a>
        <div class="card mt-3">
            <div class="card-header bg-primary">
                <h5 class="card-title text-white"> Add New User</h5>
            </div>
            <div class="card-body">
                <form enctype="multipart/form-data" method="post" action="index.php?c=users&m=handle-edit">
                    <div class="row">
                        <?php foreach ($infor as $userInfo) : ?>
                            <div class="col-sm-12 col-md-6">
                                <div class="form-group mb-3">
                                    <label>Extra Code</label>
                                    <input class="form-control" type="text" name="extraCode" value="<?= $userInfo['extra_code'] ?>" />

                                </div>
                                <div class="form-group mb-3">
                                    <label>First Name</label>
                                    <input class="form-control" type="text" name="fname" value="<?= $userInfo['first_name'] ?>" />

                                </div>
                                <div class="form-group mb-3">
                                    <label>Last Name</label>
                                    <input class="form-control" type="text" name="lname" value="<?= $userInfo['last_name'] ?>" />

                                </div>
                                <div class="form-group mb-3">
                                    <label>Full Name</label>
                                    <input class="form-control" type="text" name="fullName" value="<?= $userInfo['full_name'] ?>" />

                                </div>
                                <div class="form-group mb-3">
                                    <label>Role</label>
                                    <select name="role" id="" class="form-control">
                                        <option value="<?= $userInfo['id'] ?>"><?= $userInfo['roleName'] ?></option>
                                        <option value="1">--Choose--</option>
                                        <option value="1">Admin</option>
                                        <option value="2">Student</option>
                                        <option value="3">Teacher</option>
                                    </select>

                                </div>
                                <div class="form-group mb-3">
                                    <label>Gender</label>
                                    <select name="gender" id="" class="form-control">
                                        <option value="1">Male</option>
                                        <option value="2">Female</option>
                                        <option value="3">None</option>
                                    </select>

                                </div>

                                <div class="form-group mb-3">
                                    <label>Address</label>
                                    <input class="form-control" type="text" name="address" value="<?= $userInfo['address'] ?>" />

                                </div>

                            </div>
                            <div class="col-sm-12 col-md-6">
                                <div class="form-group mb-3">
                                    <label>Email</label>
                                    <input class="form-control" type="text" name="email" value="<?= $userInfo['email'] ?>" />

                                </div>
                                <div class="form-group mb-3">
                                    <label>Phone</label>
                                    <input class="form-control" type="text" name="phone" value="<?= $userInfo['phone'] ?>" />

                                </div>
                                <div class="form-group mb-3">
                                    <label> Avatar </label>
                                    <input type="file" class="form-control" name="avt" />
                                    <img src="./public/upload/images/<?= $userInfo['avatar'] ?>" alt="">
                                    <?php if (!empty($errorAdd['logo'])) : ?>
                                        <span class="text-danger"><?= $errorAdd['logo']; ?></span>
                                    <?php endif; ?>
                                </div>
                                <div class="form-group mb-3">
                                    <label>Status</label>
                                    <select class="form-control" name="status">
                                        <option value="1"> Active</option>
                                        <option value="0"> Deactive</option>
                                    </select>
                                </div>
                                <div class="form-group mb-3">
                                    <label>Birthday</label>
                                    <input type="date" class="form-control" name="birthday" value="<?= $userInfo['birthday'] ?>" />
                                </div>
                                <button class="btn btn-primary" type="submit" name="btnUpdate">
                                    Save
                                </button>
                            </div>
                        <?php endforeach ?>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<?php require 'view/partials/footer_view.php'; ?>