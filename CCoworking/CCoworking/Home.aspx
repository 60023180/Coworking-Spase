<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>home</title>
    <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="Home.css">
    <script src="https://kit.fontawesome.com/784e096a37.js"></script>
</head>
<body>
    <div id="nav">
        <nav class="navbar navbar-light" style="background-color: (0, 0%, 100%); margin-top: 10px;">
            <a class="navbar-brand" style="font-size: 6vw;">Co-working</a>
            <form class="form-inline">
                <input class="form-control mr-sm-1" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-dark my-1 my-sm-0" type="submit">Search</button>
            </form>
        </nav>
    </div>
    <div class="row1">
        <div class="card-body">
            <div class="form-group col 1">
                <i class="fas fa-map-marker-alt"></i>
                <label>NEARBY YOU</label>
            </div>
            <div class="form-group col 2">
                <h5 id="loca">Chiang Mai, Thailand</h5>
                <p id="showlo">Show all</p>
            </div>
        </div>
    </div>
    
        <div class="row2">
            <div class="card-body row">

                <div class="form-group col">
                    <div class="card border-light mb-3 " style="width: 14rem;" id="card">
                        <img src="https://planterspace.com/wp-content/uploads/2019/02/BigWorkingDesk.jpg" class="card-img-top">
                        <div class="card-body">
                            <h5>Planter's Space</h5>
                            <hr>
                            <p class="card-text">21/36 M2. Thorakamanakhom Soi 4</p>
                            <i class="fas fa-star" id="star11"></i>
                            <i class="fas fa-star" id="star22"></i>
                            <i class="fas fa-star" id="star33"></i>
                            <i class="fas fa-star" id="star44"></i>
                            <i class="fas fa-star" id="star55"></i>
                            <p class="rate1">5</p>
                        </div>
                    </div>
                </div>
                <div class="form-group col">
                    <div class="card border-light mb-3 " style="width: 14rem;" id="card">
                        <img src="https://coworker.imgix.net/photos/thailand/chiang-mai/punspace-nimman/main.jpg?mark=/template/img/wm_icon.png&markscale=2&markalign=center,middle" class="card-img-top">
                        <div class="card-body">
                            <h5>Punspace (Nimman)</h5>
                            <hr>
                            <p class="card-text">14 Sirimangkalajarn Soi 11</p>
                            <i class="fas fa-star" id="star11"></i>
                            <i class="fas fa-star" id="star22"></i>
                            <i class="fas fa-star" id="star33"></i>
                            <i class="fas fa-star" id="star44"></i>
                            <i class="fas fa-star" id="star55"></i>
                            <p class="rate1">5</p>
                        </div>
                    </div>
                </div>
                <div class="form-group col">
                    <div class="card border-light mb-3 " style="width: 14rem;" id="card">
                        <img src="https://static1.squarespace.com/static/52bfd88ee4b040a8754ea9c0/588387e7e3df28fd785dc54d/5883886a59cc684854ac596b/1485015163952/PUNSPACE01draft-15.jpg?format=2500w" class="card-img-top">
                        <div class="card-body">
                            <h5>Punspace (Tha Phae Gate)</h5>
                            <hr>
                            <p class="card-text">7/2 Rachadamnoen Road</p>
                            <i class="fas fa-star" id="star11"></i>
                            <i class="fas fa-star" id="star22"></i>
                            <i class="fas fa-star" id="star33"></i>
                            <i class="fas fa-star" id="star44"></i>
                            <i class="fas fa-star" id="star55"></i>
                            <p class="rate1">5</p>
                        </div>
                    </div>
                </div>
                <div class="form-group col">
                    <div class="card border-light mb-3 " style="width: 14rem;" id="card">
                        <img src="https://www.keyframe5.com/wp-content/uploads/2016/09/Addicted-to-work-chiang-mai.jpg" class="card-img-top">
                        <div class="card-body">
                            <h5>Addicted to Work</h5>
                            <hr>
                            <p class="card-text">27/3 PP&P Mansion</p>
                            <i class="fas fa-star" id="star11"></i>
                            <i class="fas fa-star" id="star22"></i>
                            <i class="fas fa-star" id="star33"></i>
                            <i class="fas fa-star" id="star44"></i>
                            <i class="fas fa-star" id="star55"></i>
                            <p class="rate1">5</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <br>
    <h5 id="bigcard">OTHER PLACES</h5>
    <div class="col-md-11 mx-auto mt-1">
        <div class="card-body">
            <div class="form-group row">
                <div class="card col-md-0 mx-1 mt-1 " id="card2">
                    <img src="https://planterspace.com/wp-content/uploads/2019/02/BigWorkingDesk.jpg" class="card-img-top">
                    <div class="card-body">
                        <h4 class="card-text">HeartWork The Sharing Space</h4>
                        <hr>
                        <p>196 Kampangdin Road, Chiang Mai, Thailand</p>
                        <i class="fas fa-star" id="star1"></i>
                        <i class="fas fa-star" id="star2"></i>
                        <i class="fas fa-star" id="star3"></i>
                        <i class="fas fa-star" id="star4"></i>
                        <i class="fas fa-star" id="star5"></i>
                        <p class="rate">5</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="manubar">
        <div class="row">
            <div class="card-body text-center">
                <div class="form-group row">
                    <i class="fas fa-home" id="manubar1"></i>
                    <i class="far fa-user-circle" id="manubar2"></i>
                    <i class="far fa-bookmark" id="manubar3"></i>

                </div>
            </div>
        </div>
    </div>

</body>
</html>
