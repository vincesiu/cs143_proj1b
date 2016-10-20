<!DOCTYPE HTML>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Query Application</title>
  

  <!-- basic styling -->
  <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
  <style type="text/css">
  	* {
  		font-family: 'Roboto', sans-serif;
  	}
	#header {
		margin: 5%;
	}
	#result {
		overflow-x: auto;
	}
	table, th, td {
	    border: 1px solid black;
	    border-collapse: collapse;
	}
	th, td {
	    padding: 5px 15px 5px 15px;
	}
	input {
		display: block;
	}
  </style>
</head>

<body>
	<div id="header">
		<h1>Query</h1>

		<p>Type an expression in this input box to execute in MySQL.</p>
		<p>Warning: Input is not sanitized.</p>  

		<form action="query.php" method="GET" id="queryform">
			<textarea name="query" form="queryform" rows="8" cols="60"></textarea>
			<input type="submit" value="Run Query">
		</form>
	</div>

	<?php
		$query = $_GET["query"];
		
		// instantiating database connection
		$mysqli = new mysqli('localhost', 'cs143', '', 'CS143');
		
		// check for error
		if($mysqli->connect_errno > 0){
		    die('Unable to connect to database [' . $mysqli->connect_error . ']');
		}

		// perform query
		$res = $mysqli->query($query);
	?>

	<div id="result">
		<table>
			<?php
				// get column (field) names into array
				$fields = $res->fetch_fields();

				// put column names into table header cells
				echo "<tr>\n";
				foreach($fields as $field) {
					echo "<th>" . $field->name . "</th>";
				}
				echo "\n</tr>\n";

				// fetch rows and place row data into table cells
				while ($row = $res->fetch_assoc()) {
				    echo "<tr>\n";

				    foreach($fields as $field) {
						echo "<td>" . $row[ $field->name ] . "</td>";
					}

					echo "\n</tr>\n";
				}
			?>
		</table>
	</div>

</body>
</html>
