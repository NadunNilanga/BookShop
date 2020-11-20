<html>

<head>
    <title>Book Shop</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


    <style>
        body {

            background-image: url(assets/img/book_shop.jpg);
        }
    </style>


</head>

<body>

    <div class="container">
        <div calss="row">
            <!--row 01-->
            <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                <div class="card my-5">
                    <!--card-->
                    <div class="card-body">
                        <!--card body -->

                        <h5 class="text-center my-2">::: Book Shop :::</h5>
                        <form class="form" action="" role="form" method="post">

                            <div class="my-3">
                                <!--txtusername-->
                                <input type="text" id="txtUserName" name="txtUserName" class="form-control" placeholder="User Name">
                            </div>
                            <!--end of txtusername-->


                            <div class="my-3">
                                <!--txtpassword-->
                                <input type="password" id="txtPassword" name="txtUserName" class="form-control" placeholder="Password">
                            </div>
                            <!--end of txtpassword-->

                            <div calss="my-4">
                                <!-- button-->
                                <button id="btnLogin" class="btn btn-danger btn-block text-uppercase">Login</button>
                            </div>
                            <!--end of button-->

                            <hr class="my-4">
                            <h6>Enter Your User Name & Password.</h6>
                        </form>
                        <!--end of form-->

                    </div>
                    <!--end card body -->
                </div>
                <!--end of card-->

            </div>
            <!--end of div-->
        </div>
        <!--end of row-->

    </div>
    <!--end of container-->











    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>


    <script>
        //btnLogin Click
        $('#btnLogin').click(
            function() {
                inputValidation();
            });
        //end btnLogin Click


        //input validation
        function inputValidation(callback) {

            //txtUserName Validation
            if ($('#txtUserName').val().length === 0) {
                alert('Username cannot be empty');
                return false;
            }
            //end txtUserName Validation


            //txtPassword Validation
            if ($('#txtPassword').val().length === 0) {
                alert('Password cannot be empty');
                return false;
            }
            //end txtPassword Validation

        } //end input validation
    </script>

</body>

</html>