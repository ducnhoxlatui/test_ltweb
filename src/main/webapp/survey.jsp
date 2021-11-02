<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="utf-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">--%>
<%--    <title>Hello</title>--%>
<%--    <link rel="stylesheet" href="<c:url value="assets/bootstrap/css/bootstrap.min.css"/>">--%>
<%--    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i">--%>
<%--    <link rel="stylesheet" href="<c:url value="assets/fonts/simple-line-icons.min.css"/>">--%>
<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.css">--%>
<%--    <link rel="stylesheet" href="<c:url value="assets/css/vanilla-zoom.min.css"/>">--%>
<%--</head>--%>

<%--<body>--%>
<%--<nav class="navbar navbar-light navbar-expand-lg fixed-top bg-white clean-navbar" style="background: rgb(150,24,24);">--%>
<%--    <div class="container"><a class="navbar-brand logo" href="#">INFO</a><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>--%>
<%--        <div class="collapse navbar-collapse" id="navcol-1">--%>
<%--            <ul class="navbar-nav ms-auto">--%>
<%--                <li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>--%>
<%--                <li class="nav-item"><a class="nav-link" href="features.html">Features</a></li>--%>
<%--                <li class="nav-item"><a class="nav-link" href="pricing.html">Pricing</a></li>--%>
<%--                <li class="nav-item"><a class="nav-link" href="about-us.html">About Us</a></li>--%>
<%--                <li class="nav-item"><a class="nav-link" href="contact-us.html">Contact Us</a></li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</nav>--%>
<%--<main class="page login-page">--%>
<%--    <section class="clean-block clean-form dark">--%>
<%--        <div class="container">--%>
<%--            <div class="block-heading">--%>

<%--                <p class="h1">SURVEY</p>--%>
<%--                <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>--%>
<%--            </div>--%>
<%--                    <form class="needs-validation" onsubmit="preventDefault()" action="survey" method="post" novalidate>--%>
<%--                        <div class="form-group">--%>
<%--                            <label class="form-label h4">First name</label>--%>
<%--                            <input type="text" name = "firstName" class="form-control" placeholder="First name" value="" required>--%>
<%--                            <div class="valid-tooltip">--%>
<%--                                Looks good!--%>
<%--                            </div>--%>
<%--                            <div class="invalid-tooltip">--%>
<%--                                Please enter first name.--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="form-group">--%>
<%--                            <label class="form-label h4">Last name</label>--%>
<%--                            <input type="text" name="lastName" class="form-control" placeholder="Last name" value="" required>--%>
<%--                            <div class="valid-tooltip">--%>
<%--                                Looks good!--%>
<%--                            </div>--%>
<%--                            <div class="invalid-tooltip">--%>
<%--                                Please enter last name.--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="form-group">--%>
<%--                            <label class="form-label h4">Email address</label>--%>
<%--                            <input type="email" name="email" class="form-control" aria-describedby="emailHelp" placeholder="Enter email">--%>
<%--                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>--%>
<%--                        </div>--%>
<%--                        <div class="form-group">--%>
<%--                            <label class="form-label h4">How did you hear about us?</label><br>--%>
<%--                            <div class="form-check ">--%>
<%--                                <input type="checkbox" class="form-check-input" id="customCheck1">--%>
<%--                                <label class="form-check-label" for="customCheck1">Search Engine</label>--%>
<%--                            </div>--%>
<%--                            <div class="form-check">--%>
<%--                                <input type="checkbox" class="form-check-input" id="customCheck2">--%>
<%--                                <label class="form-check-label" for="customCheck2">Word Of Mouth</label>--%>
<%--                            </div>--%>
<%--                            <div class="form-check">--%>
<%--                                <input type="checkbox" class="form-check-input" id="customCheck3">--%>
<%--                                <label class="form-check-label" for="customCheck3">Other</label>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="form-group">--%>
<%--                            <label class="form-label h4">Would you like to receive announcements about new CDs and special offers?</label><br>--%>
<%--                            <div class="form-check form-check-inline">--%>
<%--                                <input type="radio" name="customRadio1" class="form-check-input" checked>--%>
<%--                                <label class="form-check-label" >Yes</label>--%>
<%--                            </div>--%>
<%--                            <div class="form-check form-check-inline">--%>
<%--                                <input type="radio" name="customRadio1" class="form-check-input">--%>
<%--                                <label class="form-check-label" >No</label>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="form-group">--%>
<%--                            <label class="form-label h4">Please contact me by:</label>--%>
<%--                            <select  id="inputState" class="form-select  form-control">--%>
<%--                                <option>Choose</option>--%>
<%--                                <option>Email or postal mail</option>--%>
<%--                                <option>Email only</option>--%>
<%--                                <option>Postal mail only</option>--%>
<%--                            </select>--%>
<%--                        </div>--%>
<%--                        <div class="text-center form-group">--%>
<%--                            <button class="btn btn-primary px-3" type="submit">Submit</button>--%>
<%--                        </div>--%>
<%--                    </form>--%>

<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--        </div>--%>
<%--    </section>--%>
<%--</main>--%>
<%--<footer class="page-footer dark">--%>
<%--    <div class="container">--%>
<%--        <div class="row">--%>
<%--            <div class="col-sm-3">--%>
<%--                <h5>Get started</h5>--%>
<%--                <ul>--%>
<%--                    <li><a href="#">Home</a></li>--%>
<%--                    <li><a href="#">Sign up</a></li>--%>
<%--                    <li><a href="#">Downloads</a></li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--            <div class="col-sm-3">--%>
<%--                <h5>About us</h5>--%>
<%--                <ul>--%>
<%--                    <li><a href="#">Company Information</a></li>--%>
<%--                    <li><a href="#">Contact us</a></li>--%>
<%--                    <li><a href="#">Reviews</a></li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--            <div class="col-sm-3">--%>
<%--                <h5>Support</h5>--%>
<%--                <ul>--%>
<%--                    <li><a href="#">FAQ</a></li>--%>
<%--                    <li><a href="#">Help desk</a></li>--%>
<%--                    <li><a href="#">Forums</a></li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--            <div class="col-sm-3">--%>
<%--                <h5>Legal</h5>--%>
<%--                <ul>--%>
<%--                    <li><a href="#">Terms of Service</a></li>--%>
<%--                    <li><a href="#">Terms of Use</a></li>--%>
<%--                    <li><a href="#">Privacy Policy</a></li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="footer-copyright">--%>
<%--        <p>© 2021 Copyright Text</p>--%>
<%--    </div>--%>
<%--</footer>--%>
<%--<script src="assets/bootstrap/js/bootstrap.min.js"></script>--%>
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.js"></script>--%>
<%--<script src="assets/js/vanilla-zoom.js"></script>--%>
<%--<script src="assets/js/theme.js"></script>--%>
<%--</body>--%>
<%--</html>--%>

<!DOCTYPE html>
<html>
<style>
    .center {
        margin: auto;
        width: 60%;
        border: 3px solid #73AD21;
        padding: 10px;
    }
</style>
<title>Murach Servlet and JSP</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<header class="w3-container w3-teal" style="text-align: center">
    <h1>Survey page</h1>
</header>

<div class="center" >

                    <p class="h1">SURVEY</p>
                    <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>
                                        <form class="needs-validation" onsubmit="preventDefault()" action="survey" method="post" novalidate>
                            <div class="form-group">
                                <label class="form-label h4">First name</label>
                                <input type="text" name = "firstName" class="form-control" placeholder="First name" value="" required>
                                <div class="valid-tooltip">
                                    Looks good!
                                </div>
                                <div class="invalid-tooltip">
                                    Please enter first name.
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="form-label h4">Last name</label>
                                <input type="text" name="lastName" class="form-control" placeholder="Last name" value="" required>
                                <div class="valid-tooltip">
                                    Looks good!
                                </div>
                                <div class="invalid-tooltip">
                                    Please enter last name.
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="form-label h4">Email address</label>
                                <input type="email" name="email" class="form-control" aria-describedby="emailHelp" placeholder="Enter email">
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                            </div>
                            <div class="form-group">
                                <label class="form-label h4">How did you hear about us?</label><br>
                                <div class="form-check ">
                                    <input type="checkbox" class="form-check-input" id="customCheck1">
                                    <label class="form-check-label" for="customCheck1">Search Engine</label>
                                </div>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="customCheck2">
                                    <label class="form-check-label" for="customCheck2">Word Of Mouth</label>
                                </div>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="customCheck3">
                                    <label class="form-check-label" for="customCheck3">Other</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="form-label h4">Would you like to receive announcements about new CDs and special offers?</label><br>
                                <div class="form-check form-check-inline">
                                    <input type="radio" name="customRadio1" class="form-check-input" checked>
                                    <label class="form-check-label" >Yes</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input type="radio" name="customRadio1" class="form-check-input">
                                    <label class="form-check-label" >No</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="form-label h4">Please contact me by:</label>
                                <select  id="inputState" class="form-select  form-control">
                                    <option>Choose</option>
                                    <option>Email or postal mail</option>
                                    <option>Email only</option>
                                    <option>Postal mail only</option>
                                </select>
                            </div>
                            <div class="text-center form-group">
                                <button class="btn btn-primary px-3" type="submit">Submit</button>
                            </div>
                        </form>

            </div>
        </div>
    </div>
            </div>

</div>

</body>
</html>
