<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Add Employee Form</title>
    <style>
        /* Unique CSS for the form */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="radio"],
        input[type="checkbox"] {
            margin-right: 5px;
        }

        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add Employee</h2>
        <form action="saveEmployee" method="post" id="employeeForm">
            <label for="firstName">First Name: <strong style="color:red">${error}</strong></label>
            <input type="text" id="firstName" name="firstName" value="${employee.firstName}" /><br>

            <label for="lastName">Last Name: <strong style="color:red">${error}</strong></label>
            <input type="text" id="lastName" name="lastName" value="${employee.lastName}" /><br>

            <label for="email">Email: <strong style="color:red">${error}</strong></label>
            <input type="text" id="email" name="email" value="${employee.email}"/><br>

            <label for="password">Password: <strong style="color:red">${error}</strong></label>
            <input type="text" id="password" name="password" value="${employee.password}"/><br>

            <label for="age">Age: <strong style="color:red">${error}</strong></label>
            <input type="text" id="age" name="age" value="${employee.age}"/><br>

            <label for="hobby">Hobby: <strong style="color:red">${error}</strong></label>
            <input type="checkbox" id="hobby1" name="hobby" value="Coding" />Coding
            <input type="checkbox" id="hobby2" name="hobby" value="Gaming" />Gaming
            <input type="checkbox" id="hobby3" name="hobby" value="Sports" />Sports <br><br>
            

            <label for="address">Address: <strong style="color:red">${error}</strong></label>
            <textarea id="address" name="address" rows="5">${employee.address}</textarea><br>

            <label for="city">City: <strong style="color:red">${error}</strong></label>
            <select id="city" name="city">
				<option value="-1" >--------------------Select City----------------------</option>
                <option value="Ahmedabad" ${employee.city.equals("Ahmedabad")?"selected":""}>Ahmedabad</option>
                <option value="Surat" ${employee.city.equals("Surat")?"selected":""}>Surat</option>
                <option value="Bharuch" ${employee.city.equals("Bharuch")?"selected":""}>Bharuch</option>
            </select><br>

            <label for="gender">Gender: <strong style="color:red">${error}</strong></label>
            <input type="radio" id="male" name="gender" value="Male" ${employee.gender.equals("Male")?"checked":""}/>Male
            <input type="radio" id="female" name="gender" value="Female" ${employee.gender.equals("Female")?"checked":""}/>Female<br><br>
            
            <input type="submit" id="addEmployee" value="AddEmployee"/>
        </form>
    </div>
</body>
</html>
