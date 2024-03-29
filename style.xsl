<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
    <xsl:template match="/">
        
        <html lang="en">
            
            <head>
                <title>Metacritic_XML</title>
                <!-- Required meta tags -->
                <meta charset="utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
                
                <!-- Bootstrap CSS v5.2.1 -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
                      integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous"/>
                <link rel="stylesheet" href="css/style.css"/>
                
                <!-- JQuery -->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            </head>
            
            <body class="bg-black">
                <header class="">
                    <nav class="navbar navbar-expand-md navbar-dark bg-dark text-warning px-5 py-3 position-relative ">
                        <a class="navbar-brand col-2 col-lg-1 position-absolute d-none d-md-flex" href="#">
                            <img src="metacriticLogo.png" alt="" srcset="" class="w-50"/>
                        </a>
                        <button class="navbar-toggler d-lg-none" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false"
                                aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="collapsibleNavId">
                            <ul class="navbar-nav me-auto mt-2 mt-lg-0 mx-auto">
                                <li class="nav-item">
                                    <button
                                        type="button"
                                        class="btn btn-black text-warning bg-black border border-2 border-warning me-5 my-1"
                                        onclick="$('.conDescripcion').removeClass('d-flex').addClass('d-none');
                                             $('.sinDescripcion').removeClass('d-none').addClass('d-flex');"
                                        >
                                        Solo portada
                                    </button>
                                </li>
                                <li class="nav-item">
                                    <button
                                        type="button"
                                        class="btn btn-black text-warning bg-black border border-2 border-warning my-1"
                                        onclick="$('.conDescripcion').removeClass('d-none').addClass('d-flex');
                                             $('.sinDescripcion').removeClass('d-flex').addClass('d-none');"
                                        >
                                        Con descripcion
                                    </button>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </header>
                <main>
                    <div id="top"></div>
                    <a href="#top" type="button" class="btn btn-dark border border-warning text-warning position-fixed bottom-0 end-0 me-lg-5 mb-lg-4 z-1">
                        ▲<br/>Volver
                    </a>
                    <h1 class="display-1 text-warning text-center mt-4 mb-5 fw-bold fst-italic">TOP 100 JUEGOS DE <br/> TODOS LOS TIEMPOS</h1>
                    <div class="container z-2">
                        <div class="sinDescripcion d-none">
                            <div class="col-12">
                                <div class="row">
                                    <xsl:for-each select="juegos/juego">
                                        <xsl:variable name="level1Count2" select="position()"/>
                                        <div class="col-6 col-md-4 col-lg-3 mb-5">
                                            <div class="card bg-dark text-warning border-2 border-warning h-100">
                                                <div class="row flex-column align-items-center h-100 justify-content-between text-center">
                                                    <div class="col-2 w-100">
                                                        <h1 class="fw-bolder border-warning border-bottom"><xsl:value-of select="position()"/></h1>
                                                    </div>
                                                    <div class="col-6 w-100">
                                                        <img class="card-img-top w-100" src="{portada}" alt="Title" />
                                                    </div>
                                                    <div class="col-4 w-100">
                                                        <div class="card-body">
                                                            <xsl:choose>
                                                                <xsl:when test="$level1Count2 &lt; 10">
                                                                    <h4 class="card-title fw-bold"><xsl:value-of select="substring(titulo/text(),4)"/></h4>
                                                                </xsl:when>
                                                                <xsl:otherwise>
                                                                    <h4 class="card-title fw-bold"><xsl:value-of select="substring(titulo/text(),5)"/></h4>
                                                                </xsl:otherwise>
                                                            </xsl:choose>
                                                            <p class="card-text"><xsl:value-of select="fecha"/></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </xsl:for-each>
                                </div>  
                            </div>
                        </div>
                        <div class="container conDescripcion d-flex">
                            <div class="row">
                                <xsl:for-each select="juegos/juego">
                                    <xsl:variable name="level1Count" select="position()"/>
                                    <xsl:choose>
                                        <xsl:when test="$level1Count mod 2=1">
                                            <div class="col-12 my-3 juego">
                                                <div class="row border border-2 border-warning rounded h-100 bg-dark justify-content-center carta text-warning">
                                                    <div class="col-1">
                                                        <div class="row align-items-center h-100">
                                                            <h2 class="col-12 display-4 fw-bolder text-center ranking"><xsl:value-of select="position()"/></h2>
                                                        </div>
                                                    </div>
                                                    <div class="col-4 col-md-2 text-center portada my-auto">
                                                        <img src="{portada}"
                                                             alt="" srcset="" class="w-100" />
                                                    </div>
                                                    <div class="col-7 col-md-9 px-5 py-4 row flex-column text-center texto">
                                                        <xsl:choose>
                                                            <xsl:when test="$level1Count &lt; 10">
                                                                <h2 class="fw-bold"><xsl:value-of select="substring(titulo/text(),4)"/></h2>
                                                            </xsl:when>
                                                            <xsl:otherwise>
                                                                <h2 class="fw-bold"><xsl:value-of select="substring(titulo/text(),5)"/></h2>
                                                            </xsl:otherwise>
                                                        </xsl:choose>
                                                        <span class="mb-2"><xsl:value-of select="fecha"/></span>
                                                        <p class="my-auto descripcion d-none d-lg-block text-white"><xsl:value-of select="descripcion"/></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <div class="col-12 my-3 juego">
                                                <div class="row border border-2 border-warning rounded h-100 bg-dark justify-content-center flex-row-reverse carta text-warning">
                                                    <div class="col-1">
                                                        <div class="row align-items-center h-100">
                                                            <h2 class="col-12 display-4 fw-bolder text-center ranking"><xsl:value-of select="position()"/></h2>
                                                        </div>
                                                    </div>
                                                    <div class="col-4 col-md-2 text-center portada my-auto">
                                                        <img src="{portada}"
                                                             alt="" srcset="" class="w-100" />
                                                    </div>
                                                    <div class="col-7 col-md-9 px-5 py-4 row flex-column text-center texto">
                                                        <xsl:choose>
                                                            <xsl:when test="$level1Count &lt; 10">
                                                                <h3 class="fw-bold"><xsl:value-of select="substring(titulo/text(),4)"/></h3>
                                                            </xsl:when>
                                                            <xsl:otherwise>
                                                                <h3 class="fw-bold"><xsl:value-of select="substring(titulo/text(),5)"/></h3>
                                                            </xsl:otherwise>
                                                        </xsl:choose>
                                                        <span class="mb-2"><xsl:value-of select="fecha"/></span>
                                                        <p class="my-auto descripcion d-none d-lg-block text-white"><xsl:value-of select="descripcion"/></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:for-each>
                            </div>
                        </div>
                    </div>
                </main>
                <!-- Bootstrap JavaScript Libraries -->
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
                        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
                </script>
                
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
                        integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
                </script>
            </body>
            
        </html>
        
    </xsl:template>
</xsl:stylesheet>