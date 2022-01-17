<?php
include("path.php");
include(ROOT_PATH . "/app/controllers/posts.php");
usersOnly();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <!-- bootstrap css -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/carousel.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">

    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Abel&family=Didact+Gothic&family=Righteous&display=swap" rel="stylesheet" />
</head>

<body>
    <!-- navbar -->
    <?php include(ROOT_PATH . "/app/includes/header.php"); ?>
    <div class="containerpost">
        <div class="content">
            <h2 class="pagetitle">ADD POST</h2>

            <?php include(ROOT_PATH . '/app/helpers/formErrors.php'); ?>

            <form action="addpost.php" method="post" enctype="multipart/form-data">
                <div>
                    <label>Title</label>
                    <br>
                    <input type="text" name="title" value="<?php echo $title ?>" class="text-input">
                    <br>
                    <input type="file" name="image" class="text-input-image">
                </div>
                <br>
                <div class="creform">
                    <label>Body</label>
                    <br>
                    <textarea name="body" id="body"><?php echo $body ?></textarea>
                </div>
                <br>
                <div>
                    <label>Category</label>
                    <br>
                    <select name="topic_id" class="text-input">
                        <option value=""></option>
                        <?php foreach ($topics as $key => $topic) : ?>
                            <?php if (!empty($topic_id) && $topic_id == $topic['id']) : ?>
                                <option selected value="<?php echo $topic['id'] ?>"><?php echo $topic['name'] ?></option>
                            <?php else : ?>
                                <option value="<?php echo $topic['id'] ?>"><?php echo $topic['name'] ?></option>
                            <?php endif; ?>
                        <?php endforeach; ?>
                    </select>
                </div>
                <br>
                <div class="publish">
                    <?php if (empty($published)) : ?>
                        <label>
                            <input type="checkbox" name="published">
                            Publish
                        </label>
                    <?php else : ?>
                        <label>
                            <input type="checkbox" name="published" checked>
                            Publish
                        </label>
                    <?php endif; ?>
                </div>
                <br>
                <div>
                    <button type="submit" name="add-post" class="btnadd">Add Post</button>
                </div>
                <br>
            </form>

        </div>
    </div>

    <!-- FontAwnsome -->
    <script src="https://kit.fontawesome.com/573f68a55a.js" crossorigin="anonymous"></script>

    <!-- bootstrap js -->
    <script src="assets/js/bootstrap.bundle.min.js"></script>

    <!-- ckeditor 5 -->
    <script src="https://cdn.ckeditor.com/ckeditor5/27.0.0/classic/ckeditor.js"></script>

    <!-- Custom Script -->
    <script src="../../assets/js/scripts.js"></script>

</body>