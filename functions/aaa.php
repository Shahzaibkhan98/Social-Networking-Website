global $con;

						if(isset($_GET['u_id'])){
							$u_id = $_GET['u_id'];
						}

						$get_posts = "SELECT user_email from user where user_id='u_id'";

						$run_user = mysqli_query($con,$get_posts);
						$row = mysqli_fetch_array($run_user);

						$user_email = $row['user_email'];

						$user = $_SESSION['user_email'];
						$get_user = "SELECT * from user where user_email='$user'";
						$run_user = mysqli_query($con, $get_user);
						$row = mysqli_fetch_array($run_user);

						$user_id = $row['user_id'];
						$u_email = $row['user_email'];

						if ($u_email != $user_email) {
							echo "<script>window.open('profile.php?u_id=$user_id','_self')</script>";
						}
						else{
							echo "

								<a href='single.php?post_id=$post_id' style='float:right;'><button class='btn btn-success'>View</button></a>

								<a href='edit.php?post_id=$post_id' style='float:right;'><button class='btn btn-info'>Edit</button></a>

								<a href='functions/delete_post.php?post_id=$post_id' style='float:right;'><button class='btn btn-danger'>Delete</button>
								</a>


							";
						}