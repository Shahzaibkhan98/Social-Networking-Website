<?php

	$get_id = $_GET['post_id'];

	$get_com = "SELECT * from comments where post_id='$get_id' ORDER BY 1 DESC";

	$run_com = mysqli_query($con,$get_com);

	while ($row = mysqli_fetch_array($run_com)) {
		$com = $row['comment'];
		$com_name = $row['comment_author'];
		$datee = $row['datee'];

		echo "

			<div class='row'>
				<div class='col-md-6 col-md-offset-3'>
					<div class='panel panel-info'>
						<div class='panel-body'>
							<div>
								<h4><strong>$com_name</strong><i> commented</i> on $datee</h4>
								<p class='text-primary' style='margin-left:5px; font-size:20px;'>$com</p>
							</div>
						</div>
					</div>
				</div>
			</div>

		";
	}

?>