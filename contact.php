<?php include('config/constants.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- Important to make website responsive -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant Website</title>
    <link rel="icon" href="<?php echo SITEURL; ?>images/linyas.jpg" type="image/gif" sizes="16x16">
    <!-- Link our CSS file -->
    <link rel="stylesheet" href="css/style.css">
    <style>
    .form-label{
    font-size:1em;
    color:#555;
    transition: all .3s;
    transform:translateX(-50px);
    }
    .form-control{
        box-shadow:none;
        border-radius:0;
        border-color:#ccc;
        border-style:none none solid none;
        width:100%;
        font-size:1.25em;
        transition:all .6s;
    }
    .form-control::placeholder{
    color:#aaa;
    }
    .form-control:focus{
        box-shadow:none;
        border-color:orange;
        outline:none;
    }
    h1{
        color: #555;
    }
    .form-control:invalid:focus{
    border-color:red;
    }
    .form-control:valid:focus{
        border-color:green;
    }
    .btn{
    background: 0 0 #fff;
    border:1px solid #aaa;
    border-radius:3px;
    color:var(--font-color);
    font-size:1em;
    padding:10 50px;
    text-transform:uppercase;
    }
    .btn:hover{
        border-color:var(--font-hover-color);
        color:var(--font-hover-color);
    }
    textarea{
        resize:none;
    }

    </style>
</head>

<body>
    <!-- Navbar Section Starts Here -->
    <section class="navbar">
        <div class="container">
            <div class="logo">
                <a href="#" title="Logo">
                    <img src="images/linyas.jpg" alt="Restaurant Logo" class="img-responsive">
                </a>
            </div>

            <div class="menu text-right">
                <ul>
                    <li>
                        <a href="<?php echo SITEURL; ?>">Home</a>
                    </li>
                    <li>
                        <a href="<?php echo SITEURL; ?>categories.php">Categories</a>
                    </li>
                    <li>
                        <a href="<?php echo SITEURL; ?>foods.php">المنتجات</a>
                    </li>
                    <li>
                        <a href="<?php echo SITEURL; ?>contact.php"> اتصل بنا </a>
                    </li>
                    <li>
                        <a href="<?php echo SITEURL; ?>admin/login.php">Admin Panel</a>
                    </li>
                </ul>
            </div>

            <div class="clearfix"></div>
        </div>
    </section>
    <!-- Navbar Section Ends Here -->

    <div class="main-content">
        <div class="wrapper">
            <h1 class="text-center">نموذج الاتصال</h1>
<br><br>
            <div class="container">
                <form action="" method="POST" class="form">
                    <div class="form-group">
                        <label for="name" class="form-label">Your Name :</label><br><br>
                        <input type="text" class="form-control" id="name" name="name" placeholder="alex jin" tabindex="1" required>
                    </div>
                    <br>
                    <div class="form-group">
                        <label for="email" class="form-label">Your Email :</label><br><br>
                        <input type="email" class="form-control" id="email" name="email" placeholder="alex@jin.com" tabindex="2" required>
                    </div>
                    <br>
                    <div class="form-group">
                        <label for="subject" class="form-label">Subject :</label><br><br>
                        <input type="text" class="form-control" id="subject" name="subject" placeholder="Hello There!" tabindex="3" required>
                    </div>
                    <br>
                    <div class="form-group">
                        <label for="message" class="form-label">Message :</label><br><br>
                        <textarea class="form-control" rows="5" cols="50" id="message" name="message" placeholder="Enter Message..." tabindex="4"></textarea><br>
                    </div>
                    <br>
                    <div>
                        <button type="submit" tabindex="5" class="btn" name="submit">Send Message!</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
<script>
$(function() {
   
   $(".form-control").on('focus', function(){

       $(this).parents(".form-group").addClass('focused');

   });

   $(".form-control").on('blur', function(){

       $(this).parents(".form-group").removeClass('focused');

   });

});
</script>
<?php
include('config/constants.php');

if (isset($_POST['submit'])) {
    // Check if the database connection is established
    if ($conn) {
        // Get the values
        $name = mysqli_real_escape_string($conn, $_POST['name']);
        $email = mysqli_real_escape_string($conn, $_POST['email']);
        $subject = mysqli_real_escape_string($conn, $_POST['subject']);
        $message = mysqli_real_escape_string($conn, $_POST['message']);

        // Create the SQL query
        $sql = "INSERT INTO tbl_contact (name, email, subject, message) VALUES ('$name', '$email', '$subject', '$message')";

        // Execute the query
        $res = mysqli_query($conn, $sql);

        if ($res) {
            // Data inserted successfully
            // You can redirect or display a success message here
        } else {
            // Data insertion failed
            // You can handle this case as needed
            echo "Error: " . mysqli_error($conn);
        }
    } else {
        // Database connection failed
        // You can handle this case as needed
        echo "Database connection failed.";
    }
}
?>


<?php include('partials-front/footer.php'); ?>