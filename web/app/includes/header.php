<header class="p-3 mb-3 border-bottom">
        <nav>
            <div class="logo">
                <h1 class="logo-text"><span>ALLY</span>Dee</h1>
            </div>
            <div class="container">
                <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                    <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                        <li><a href="<?php echo BASE_URL . '/index.php' ?>" class="nav-link">Home</a></li>
                        <li><a href="#" class="nav-link">About Us</a></li>
                        <li><a href="#" class="nav-link">FAQs</a></li>
                    </ul>

                    <?php if (isset($_SESSION['id'])): ?>
                        <div class="dropdown text-end">
                        <a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fa fa-user"></i>
                    <?php echo $_SESSION['username']; ?>
                        </a>
                        <ul class="dropdown-menu text-small" aria-labelledby="dropdownUser1">
                            <?php if($_SESSION['admin']): ?>
                            <li><a class="dropdown-item" href="<?php echo BASE_URL . '/admin/dashboard.php' ?>">Dashboard</a></li>
                            <?php endif; ?>
                            <?php if(!($_SESSION['admin'])): ?>
                            <li><a class="dropdown-item" href="<?php echo BASE_URL . '/profile.php' ?>">Profile</a></li>
                            <li><a class="dropdown-item" href="<?php echo BASE_URL . '/promotion/promotion.php' ?>">Promotion</a></li>
                            <?php endif; ?>
                            <li>
                                <hr class="dropdown-divider" />
                            </li>
                            <li><a class="dropdown-item text" href="<?php echo BASE_URL . '/logout.php' ?>">Logout</a></li>
                        </ul>
                        </div>
                    <?php else: ?>
                        <a class="nav-link" href="<?php echo BASE_URL . '/register.php' ?>">Sign Up</a>
                        <a class="nav-link" href="<?php echo BASE_URL . '/login.php' ?>">Login</a>
                    <?php endif; ?>

                </div>
            </div>
        </nav>
    </header>