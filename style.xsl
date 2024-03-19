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
            </head>
            
            <body>
                
                <main>
                    <div class="container">
                        <div class="row">
                            <xsl:for-each select="juegos/juego">
                <div class="col-12">
                    <div class="border border-1 rounded my-3">
                        <div class="row">
                            <div class="col-2 text-center">
                                <img src="https://www.metacritic.com/a/img/resize/32e0a7f3e8a36d4a12553d053b4f429a2cc1f3c3/catalog/provider/6/3/6-1-4763-13.jpg?auto=webp&amp;fit=cover&amp;height=132&amp;width=88"
                                    alt="" srcset="" class="w-100 h-100" />
                            </div>
                            <div class="col-10 py-1 row flex-column">
                                <h4 class="">1. The Legend of Zelda: Ocarina of Time </h4>
                                <span class="">Nov 23, 1998</span>
                                <p class="my-3">As a young boy, Link is tricked by Ganondorf, the King of the Gerudo Thieves. The
                                    evil
                                    human uses Link to gain access to the Sacred Realm, where he places his tainted
                                    hands on
                                    Triforce and transforms the beautiful Hyrulean landscape into a barren wasteland.
                                    Link
                                    is determined to fix the problems he helped to create, so with the help of Rauru he
                                    travels through time gathering the powers of the Seven Sages.</p>
                                    <p class="my-2">Puntuacion: 99</p>
                            </div>
                        </div>
                    </div>
                </div>
                            </xsl:for-each>
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