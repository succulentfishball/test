<html lang="EN">
    <head>
        <link rel="stylesheet" href="/assets/style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <title>Valentine's</title>
    </head>
    <body style="background-color: lavenderblush">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
        <p>
            <h1>Hello Minyi!</h1>
        </p>
    <img src="https://static.vecteezy.com/system/resources/previews/003/346/603/original/cute-rose-with-leafs-natural-isolated-icon-free-vector.jpg" width="25%" height="50%" style="display: block; margin: auto">
<#--    <div class="carousel slide" id="body" style="width: 800px">-->
<#--        <div class="carousel-indicators">-->
<#--            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>-->
<#--            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>-->
<#--            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>-->
<#--        </div>-->
<#--        <div class="carousel-inner">-->
<#--            <div class="carousel-item active">-->
<#--                <img src="https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png" class="d-block w-100" alt="...">-->
<#--                <div class="carousel-caption d-none d-md-block">-->
<#--                    <h5>First slide label</h5>-->
<#--                    <p>Some representative placeholder content for the first slide.</p>-->
<#--                </div>-->
<#--            </div>-->
<#--            <div class="carousel-item">-->
<#--                <img src="https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png" class="d-block w-100" alt="...">-->
<#--                <div class="carousel-caption d-none d-md-block">-->
<#--                    <h5>Second slide label</h5>-->
<#--                    <p>Some representative placeholder content for the second slide.</p>-->
<#--                </div>-->
<#--            </div>-->
<#--            <div class="carousel-item">-->
<#--                <img src="https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png" class="d-block w-100" alt="...">-->
<#--                <div class="carousel-caption d-none d-md-block">-->
<#--                    <h5>Third slide label</h5>-->
<#--                    <p>Some representative placeholder content for the third slide.</p>-->
<#--                </div>-->
<#--            </div>-->
<#--            <div class="carousel-item">-->
<#--                <img src="https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png" class="d-block w-100" alt="...">-->
<#--                <div class="carousel-caption d-none d-md-block">-->
<#--                    <h5>Fourth slide label</h5>-->
<#--                    <p>Some representative placeholder content for the third slide.</p>-->
<#--                </div>-->
<#--            </div>-->
<#--            <div class="carousel-item">-->
<#--                <img src="https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png" class="d-block w-100" alt="...">-->
<#--                <div class="carousel-caption d-none d-md-block">-->
<#--                    <h5>Fifth slide label</h5>-->
<#--                    <p>Some representative placeholder content for the third slide.</p>-->
<#--                </div>-->
<#--            </div>-->
<#--            <div class="carousel-item">-->
<#--                <img src="https://developers.elementor.com/docs/assets/img/elementor-placeholder-image.png" class="d-block w-100" alt="...">-->
<#--                <div class="carousel-caption d-none d-md-block">-->
<#--                    <h5>Sixth slide label</h5>-->
<#--                    <p>Some representative placeholder content for the third slide.</p>-->
<#--                </div>-->
<#--            </div>-->
<#--        </div>-->
<#--        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">-->
<#--            <span class="carousel-control-prev-icon" aria-hidden="true"></span>-->
<#--            <span class="visually-hidden">Previous</span>-->
<#--        </button>-->
<#--        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">-->
<#--            <span class="carousel-control-next-icon" aria-hidden="true"></span>-->
<#--            <span class="visually-hidden">Next</span>-->
<#--        </button>-->
<#--    </div>-->
        <div id="body">
                <form action="/results" method="post" style="padding: 30px">
                    <label for="mySelect"></label>
                    <h2>Will you be my valentine? - Mattie</h2>
                    <p></p>
                    <select id="mySelect" class="form-select" style="width: 500px" onchange="enableButton()">
                        <option value="" disabled selected>Select an option</option>
                        <option value="yes">Yes</option>
                        <option value="no" disabled>No</option>
                    </select>
                    <input type="submit" id="myButton" class="btn btn-primary" disabled value="Submit" style="margin: 30px">
                </form>

            <script>
                function enableButton() {
                    var selectElement = document.getElementById('mySelect');
                    var buttonElement = document.getElementById('myButton');

                    // Enable the button if an option (other than the default) is selected
                    buttonElement.disabled = selectElement.value === '' || selectElement.value === null;
                }

                enableButton();
            </script>
        </div>
<#--        <p>-->
<#--            <form action="/post" method="get">-->
<#--                Click here to view posts!-->
<#--                <input type="submit" value="Go to Posts">-->
<#--            </form>-->
<#--        </p>-->
    </body>
</html>