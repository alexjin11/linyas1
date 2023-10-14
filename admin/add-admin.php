<?php
include('partials/menu.php');

if (isset($_POST['submit'])) {
    // Get the Data from the form
    $full_name = mysqli_real_escape_string($conn, $_POST['full_name']);
    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT); // Password Hashing

    // SQL Query to Save the data into the database
    $sql = "INSERT INTO tbl_admin (full_name, username, password) VALUES ('$full_name', '$username', '$password')";

    $result = mysqli_query($conn, $sql);

    if ($result) {
        // Data Inserted
        $_SESSION['add'] = "<div class='success'>Admin Added Successfully.</div>";
        header("location:" . SITEURL . 'admin/manage-admin.php');
    } else {
        // Failed to Insert Data
        $_SESSION['add'] = "<div class='error'>Failed to Add Admin.</div>";
        header("location:" . SITEURL . 'admin/add-admin.php');
    }
}
?>

<div class="main-content">
    <div class="wrapper">
        <h1>Add Admin</h1>
        <br><br>

        <?php
        if (isset($_SESSION['add'])) {
            echo $_SESSION['add'];
            unset($_SESSION['add']);
        }
        ?>

        <form action="" method="POST">
            <table class="tbl-30">
                <tr>
                    <td>Full Name: </td>
                    <td>
                    <input type="text" name="full_name" placeholder="Enter Your Name" class="form-control" id="exampleInputEmail1">
                    </td>
                </tr>

                <tr>
                    <td>Username: </td>
                    <td>
                    <input type="text" name="username" placeholder="Your Username" class="form-control" id="exampleInputEmail1">
                        
                    </td>
                </tr>

                <tr>
                    <td>Password: </td>
                    <td>
                    <input type="password" name="password" placeholder="Your Password" class="form-control" id="exampleInputPassword1">
                        
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <input type="submit" name="submit" value="Add Admin" class="btn-secondary">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>

<?php include('partials/footer.php'); ?>
