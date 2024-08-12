<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
<style type="text/css">
* {
    margin: 0px;
    padding: 0px;
    box-sizing: border-box;
}

body {
    width: 100vw;
    height: 100vh;
    display: flex;
    justify-content: start;
    align-items: center;
    flex-direction: column;
    gap: 20px;
    padding: 50px;
    background-color: #222;
}

h1 {
    color: #e7e7e7;
}

form {
    background-color: #333;
    display: flex;
    flex-direction: column;
    padding: 30px 50px;
    gap: 5px;
}

label {
    background-color: transparent;
    color: #e7e7e7;
    padding: 2px;
}

input {
    background-color: transparent;
    padding: 10px;
    outline: none;
    border: 1px solid white;
    color: white;
}

select, option {
    background-color: #333;
    padding: 10px;
    outline: none;
    border: 1px solid white;
    color: white;
}
button {
    background-color: #e7e7e7;
    padding: 10px;
    outline: none;
    border: 1px solid white;
    color: black;
}

button:hover {
    background-color: purple;
    transition: all 0.5s;
}
.result {
    color: white;
    margin-top: 5px;
}
</style>
</head>
<body>
    <h1>Simple Calculator</h1>
    <form action="calculator">
        <label for="num1">Number-1</label>
        <input type="number" id="num1" name="num1" placeholder="Enter num 1" />
        <br />
        <label for="operation">Operation</label>
        <select name="operation" id="operation">
            <option>+</option>
            <option>-</option>
            <option>x</option>
            <option>/</option>
        </select>
        <br />
        <label for="num2">Number-2</label>
        <input type="number" id="num2" name="num2" placeholder="Enter num 2" />
        <br />
        <button type="submit">Calculate</button>
        <div class="result">
            Result: <%= request.getAttribute("result") != null ? request.getAttribute("result") : "0" %>
            <br />
            <%= request.getAttribute("error") != null ? request.getAttribute("error") : "" %>
        </div>
    </form>
</body>
</html>
