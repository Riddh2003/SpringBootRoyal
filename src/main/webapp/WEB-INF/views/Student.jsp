<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Information</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
     	background-color: skyblue;
    }
    .container {
        max-width: 400px;
        margin: 50px auto;
        background-color: rgba(255, 255, 255, 0.8); /* Transparent white background */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
    }
    .container h2 {
        margin-top: 0;
        font-size: 24px;
        color: #333;
    }
    .form-group {
        margin-bottom: 20px;
    }
    .form-group label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
    }
    .form-group input[type="text"] {
        width: calc(100% - 25px);
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    .btn {
        display: inline-block;
        padding: 10px 20px;
        background-color: blue;
        color: #fff;
        text-decoration: none;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    .btn:hover {
        background-color: red;
    }
</style>
</head>
<body>

<div class="container">
    <h2>Student Information</h2>
    <form id="studentForm" action="calculate" method="post">
        <div class="form-group">
            <label for="studentname">Student Name:</label>
            <input type="text" id="studentName" name="studentname">
        </div>
        <div class="form-group">
            <label for="per">Percentage:</label>
            <input type="text" id="percentage" name="per">
        </div>
        <div class="form-group">
            <label for="year">Born Year:</label>
            <input type="text" id="bornYear" name="year">
        </div>
        <button type="submit" class="btn">Result</button>
    </form>
</div>

</body>
</html>
