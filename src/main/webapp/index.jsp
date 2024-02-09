<!DOCTYPE html>
<html lang="en">

<head>
    <title>Vinay CGPA Calculator</title>
    <meta charset="utf-8">
    <meta name="title" content="Vinay CGPA Calculator">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" href="images/calculator.png">
</head>

<body>
    <div class="container">
        <div class="card">
            <div class="card-body">
                <div align="center" style="padding: 10px;">
                    <h4>Vinay CGPA Calculator</h4>
                </div>
                <div class="alert alert-danger" role="alert"> Put 0 for Semesters not Completed. </div>
                <div id="" class="row">
                    <div class="col-sm-12">
                        <div align="center" style="pointer-events: none;"><button class="btn btn-dark btn-block">CGPA CALCULATOR</button></div>
                        <hr>
                    </div>
                    <div class="col-sm-12 col-md-6">
                        <div class="form-group" style="font-weight: bold;"><label for="credit_completed">Semester
                                1</label><input type="number" class="form-control" id="sem1"></div>
                    </div>
                    <div class="col-sm-12 col-md-6">
                        <div class="form-group" style="font-weight: bold;"><label for="credit_completed">Semester
                                2</label><input type="number" class="form-control" id="sem2"></div>
                    </div>
                    <div class="col-sm-12 col-md-6">
                        <div class="form-group" style="font-weight: bold;"><label for="credit_completed">Semester
                                3</label><input type="number" class="form-control" id="sem3"></div>
                    </div>
                    <div class="col-sm-12 col-md-6">
                        <div class="form-group" style="font-weight: bold;"><label for="credit_completed">Semester
                                4</label><input type="number" class="form-control" id="sem4"></div>
                    </div>
                    <div class="col-sm-12 col-md-6">
                        <div class="form-group" style="font-weight: bold;"><label for="credit_completed">Semester
                                5</label><input type="number" class="form-control" id="sem5"></div>
                    </div>
                    <div class="col-sm-12 col-md-6">
                        <div class="form-group" style="font-weight: bold;"><label for="credit_completed">Semester
                                6</label><input type="number" class="form-control" id="sem6"></div>
                    </div>
                    <div class="col-sm-12 col-md-6">
                        <div class="form-group" style="font-weight: bold;"><label for="credit_completed">Semester
                                7</label><input type="number" class="form-control" id="sem7"></div>
                    </div>
                    <div class="col-sm-12 col-md-6">
                        <div class="form-group" style="font-weight: bold;"><label for="credit_completed">Semester
                                8</label><input type="number" class="form-control" id="sem8"></div>
                    </div>
                </div><select id="operators" style="visibility: hidden;">
                    <option value="+">+</option>
                </select>
                <div class="row">
                    <div class="col-sm-12">
                        <div align="center"><button type="button" id="" class="btn btn-outline-success btn-block"
                                onclick="calc();">Calculate</button>
                            </div>
                    </div>
                    <div class="col-sm-12 col-md-6" style="margin-top: 2.5%;">
                        <div class="form-group" style="font-weight: bold; text-align: center;"><label
                                for="credit_completed">CGPA</label><input type="text"
                                class="form-control p-3 mb-2 bg-success text-white" id="result"
                                style="text-align: center;" readonly></div>
                    </div>
                    <div class="col-sm-12 col-md-6" style="margin-top: 2.5%;">
                        <div class="form-group" style="font-weight: bold; text-align: center;"><label
                                for="credit_completed">Percentage (%)</label><input type="text"
                                class="form-control p-3 mb-2 bg-success text-white" id="percent"
                                style="text-align: center;" readonly></div>
                    </div>
                </div>
            </div>
        </div>
        <footer id="sticky-footer" class="py-4 bg-dark text-white-50">
           
            <div class="container text-center" style="color: #ffff;"><small
                    style="padding:10px; font-size: medium;">Built with ❤︎ by <a href="https://vinayhugar.com/"
                        style="color: rgb(255, 255, 255);font-weight: bold;">Vinay Hugar</a></small></br><small>Copyright &copy; Vinay Hugar</small></div>
        </footer>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>