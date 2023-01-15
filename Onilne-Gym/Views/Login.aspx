<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Onilne_Gym.Views.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Assets/Lib/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        * {
            font-family: Poppins;
        }

        body {
            background-size: cover;
        }
    </style>
</head>
<body>


    <div class="containser-fluid">
        <section class="vh-100" style="background-color: #9A616D; background-size: cover">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col col-xl-10">
                        <div class="card" style="border-radius: 1rem;">
                            <div class="row g-0">
                                <div class="col-md-6 col-lg-5 d-none d-md-block">
                                    <img src="../Assets/Images/julia-rekamie-Z72YujnOrlY-unsplash.jpg"
                                        alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
                                </div>
                                <div class="col-md-7 col-lg-7 d-flex align-items-center">
                                    <div class="card-body p-4 p-lg-5 text-black">

                                        <form>

                                            <div class="d-flex align-items-center mb-3 pb-1">
                                                <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                                                <span class="h1 fw-bold mb-0">DS Fitness</span>
                                            </div>

                                            <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>

                                            <div class="form-outline mb-4">
                                                <label class="form-label" for="exampleInputEmail">Email address</label>
                                                <input type="email" id="exampleInputEmail" class="form-control form-control-lg" aria-describedby="emailHelp"/>
                                                <div id="emailHelp" class ="form-text">We'll never share your email with anyone else.</div>
                                            </div>

                                            <div class="form-outline mb-4">

                                                <input type="password" id="exampleInputPassword" class="form-control form-control-lg" />
                                            </div>
                                            <div class="mb-5 form-check">
                                                <input type="radio" class="form-radio-input" id="AdminRadio" name="Role" />
                                                <label class="form-check-label" for="AdminRadio">Admin</label>
                                                <input type="radio" class="form-radio-input" id="RecRadio" name="Role" />
                                                <label class="form-check-label" for="RecRadio">Receptionist</label>

                                            </div>


                                            <div class="d-grid">
                                                <button class="btn btn-dark btn-lg btn-block" type="button">Login</button>
                                            </div>


                                        </form>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

</body>
</html>
