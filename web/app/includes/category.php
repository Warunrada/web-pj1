<div class="bg-white py-4 shadow-sm">
        <div class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
            <?php foreach ($topics as $key => $topic): ?> 
            <li><a href="<?php echo BASE_URL . '/index.php?t_id=' . $topic['id'] . '&name=' . $topic['name'] ?>" class="menu text-decoration-none"><?php echo $topic['name'] ?></a></li>
            <?php endforeach; ?>
        </div>
    </div>