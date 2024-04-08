<?php
if (!defined('ROOT_PATH')) {
    die('Can not access');
}
$titlePage = "Btec - Dashboard";
?>
<?php require 'view/partials/header_view.php'; ?>


<section style="background-color: #eee;">
    <div class="container py-5">


        <div class="row">
            <?php foreach ($infor as $userInfo) : ?>
                <div class="col-lg-4">
                    <div class="card mb-4 profile-card">
                        <img src="./public/upload/images/<?= $_SESSION['avt'] = $userInfo['avatar'] ?>" alt="avatar" class="rounded-circle img-fluid mt-4" style="width: 150px; ">
                        <div class="card-body text-center">
                            <h5 class="my-3"><?= getSessionUsername() ?></h5>
                            <h5 class="my-3"><?= $userInfo['extra_code'] ?></h5>
                            <p class="text-muted mb-1">Full Stack Developer</p>
                            <p class="text-muted mb-4">Bay Area, San Francisco, CA</p>

                        </div>
                    </div>

                </div>
                <div class="col-lg-8">
                    <div class="card mb-4">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-3">
                                    <p class="mb-0">Full Name</p>
                                </div>
                                <div class="col-sm-9">
                                    <p class="text-muted mb-0"><?= $userInfo['full_name'] ?></p>
                                </div>
                            </div>
                            <hr>

                            <div class="row">
                                <div class="col-sm-3">
                                    <p class="mb-0">Birthday</p>
                                </div>
                                <div class="col-sm-9">
                                    <p class="text-muted mb-0"><?= $userInfo['birthday'] ?></p>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3">
                                    <p class="mb-0">Role</p>
                                </div>
                                <div class="col-sm-9">
                                    <p class="text-muted mb-0"><?= $userInfo['roleName'] ?></p>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3">
                                    <p class="mb-0">Email</p>
                                </div>
                                <div class="col-sm-9">
                                    <p class="text-muted mb-0"><?= $userInfo['email'] ?></p>
                                </div>
                            </div>
                            <hr>

                            <div class="row">
                                <div class="col-sm-3">
                                    <p class="mb-0">Address</p>
                                </div>
                                <div class="col-sm-9">
                                    <p class="text-muted mb-0"><?= $userInfo['address'] ?></p>
                                </div>
                            </div>
                        <?php endforeach ?>
                        </div>
                    </div>

                </div>
        </div>
    </div>
</section>

<?php require 'view/partials/footer_view.php'; ?>