<!DOCTYPE html>
<%@page import="com.ipartek.formacion.hola.pojo.Ingrediente"%>
<%@page import="com.ipartek.formacion.hola.pojo.Receta"%>
<%@page import="java.util.ArrayList"%>
<html lang="es">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Web Recetas</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="css/freelancer.min.css" rel="stylesheet">

	<!-- Custom -->
    <link href="css/custom.css" rel="stylesheet">
    
    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" class="index">

    <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="#page-top">Web Recetas</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="#portfolio">Recetas</a>
                    </li>
                    <li class="page-scroll">
                        <a href="menu_del_dia.jsp">Menu del día</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <img class="img-responsive logo-home" src="img/profile.png" alt="logotipo de Web Recetas">
                    <div class="intro-text">
                        <span class="name">Komilones App</span>
                        <hr class="star-light">
                        <span class="skills">Sencillo, fácil y para toda la familia</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Recetas Destacadas Grid Section -->
    <section id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Recetas Destacadas</h2>
                     
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
            
            <%
            	ArrayList<Receta> recetas = new ArrayList<Receta>();
            		
            	// Receta Marmitako	
            	Receta marmitako = new Receta("Marmitako");
            		marmitako.setComensales(4);
            		marmitako.setImagen("data:image/jpeg;base64,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");
            		marmitako.setDescripcion("Retira el rabo y las pepitas a los pimientos choriceros y ponlos a hidratar en un cuenco con agua caliente. Cuando estén bien hidratados, retírales la carne y resérvala.<br>Pela las patatas, cáscalas y ponlas a cocer en una cazuela con agua, un chorrito de brandy y la guindilla cayena. Ata una cabeza de ajo con una cuerda de cocina a un asa de la cazuela y cuélgala dentro. Sazona. Cuece todo junto durante 15-20 minutos.<br>Reserva. y pica las cebolletas y todos los pimientos y ponlos a pochar en una cazuela con aceite. Sazona. Cuando esté bien pochado, añade la salsa de tomate y la carne de los pimientos choriceros. Mezcla bien y tritura con la batidora eléctrica. Vierte este puré sobre la cazuela de las patatas y mezcla bien. Trocea el pan, añade a la cazuela y deja que hierva durante 10 minutos a fuego suave.<br>Retira la piel al bonito, córtalo en trozos de bocado y salpimiéntalo. Añade a la cazuela, incorpora perejil picado y apaga el fuego para que se termine de hacer con el calor residual. Retira la cabeza de ajo y sirve. Decora con una ramita de perejil.");
            		marmitako.setDificultad("facil");
            		marmitako.setTiempo(50);
            		
            		ArrayList<Ingrediente> ingredientes = new ArrayList<Ingrediente>();
            			ingredientes.add(new Ingrediente("patatas",4,false));
            			ingredientes.add(new Ingrediente("bonito",500,false));
            			ingredientes.add(new Ingrediente("cebolletas",2,false));
            			ingredientes.add(new Ingrediente("pimientos verdes",2,false));
            			ingredientes.add(new Ingrediente("pimiento rojo",0.5f,false));
            			ingredientes.add(new Ingrediente("cabeza de ajo",1,false));
            			ingredientes.add(new Ingrediente("pimientos choriceros",4,false));
            			ingredientes.add(new Ingrediente("pan de sopa",40,true));
            			ingredientes.add(new Ingrediente("salsa de tomate",0.5f,false));
            			ingredientes.add(new Ingrediente("agua",0,false));
            			ingredientes.add(new Ingrediente("copa de brandy",1,false));
            			ingredientes.add(new Ingrediente("aceite de oliva",0,false));
            			ingredientes.add(new Ingrediente("sal",0,false));
            			ingredientes.add(new Ingrediente("pimienta",0,false));
            			ingredientes.add(new Ingrediente("guindilla cayena",1,false));
            			ingredientes.add(new Ingrediente("perejil",0,false));

            		marmitako.setIngredientes(ingredientes);
            	
            	// end:Receta Marmitako
            	
            	// Receta Tortilla Patatas	
            	Receta tortilla = new Receta("Tortilla Patatas");
	            	tortilla.setComensales(4);
	            	tortilla.setImagen("https://cdn.pixabay.com/photo/2015/10/08/05/06/tortilla-977171__340.jpg");
	            	tortilla.setDescripcion("Pela y pica la cebolla en dados medianos. Limpia el pimiento verde, retírale el tallo y las pepitas y córtalo en dados. Si las patatas estuvieran sucias, pásalas por agua. Pélalas, córtalas por la mitad a lo largo y después corta cada trozo en medias lunas finas de 1/2 centímetro. Introduce todo en la sartén, sazona a tu gusto y fríe a fuego suave durante 25-30 minutos.<br>Retira la fritada y escúrrela. Pasa el aceite a un recipiente y resérvalo. Limpia la sartén con papel absorbente de cocina.<br>Casca los huevos, colócalos en un recipiente grande y bátelos. Sálalos a tu gusto, agrega la fritada de patatas, cebolla y pimiento y mezcla bien.<br>Coloca la sartén nuevamente en el fuego, agrega un chorrito del aceite reservado y agrega la mezcla. Remueve un poco con una cuchara de madera y espera (20 segundos) a que empiece a cuajarse. Separa los bordes, cubre la sartén con un plato de mayor diámetro que la sartén y dale la vuelta. Échala de nuevo para que cuaje por el otro lado.");
	            	tortilla.setDificultad("facil");
	            	tortilla.setTiempo(30);
            		
            		ingredientes = new ArrayList<Ingrediente>();
            			ingredientes.add(new Ingrediente("huevos",6,false));
            			ingredientes.add(new Ingrediente("patatas",3,false));
            			ingredientes.add(new Ingrediente("cebolla pequeña",1,false));
            			ingredientes.add(new Ingrediente("pimiento verde",1,false));
            			ingredientes.add(new Ingrediente("aceite de oliva",2,false));
            			ingredientes.add(new Ingrediente("sal",0,false));
            			ingredientes.add(new Ingrediente("hoja de perejil",1,false));

           			tortilla.setIngredientes(ingredientes);
            	
            	// end:Receta Tortilla Patatas
            	
            	// Receta Bacalao al pil pil	
            	Receta bacalao = new Receta("Tortilla Patatas");
	            	bacalao.setComensales(4);
	            	bacalao.setImagen("data:image/jpeg;base64,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");
	            	bacalao.setDescripcion("Pon el aceite en una cazuela baja y amplia. Pela los ajos y dóralos. Cuando estén dorados, pásalos a un plato y resérvalos. Limpia la guindilla y trocéala en 4, saltéalas brevemente y retíralas a un plato.<br>En el mismo aceite, pon a cocinar los trozos de bacalao (primero con la piel hacia arriba). Fríelos cuatro minutos por cada lado y retíralos a un plato. <br>El suero que vayan soltando resérvalo en un bol.<br><b>Para hacer la salsa del pil pil:</b><br>Pasa el aceite a otro bol y espera a que se temple el aceite. Cuando esté templado pon un poco de aceite en la cazuela y un poco del suero del bacalao y lígalo con un colador moviendo suavemente. Añade el resto del aceite poco a poco. Cuando hayas añadido la mitad del aceite incorpora el resto del suero sin dejar de mover con el colador. Incorpora el resto del aceite, sigue moviendo hasta que quede un pil pil espeso. Incorpora las tajadas de bacalao y calienta bien.<br>Sirve en un plato las tajadas y cubre con la salsa. Decora con los ajos y los trozos de guindillas.<br>El bacalao al pil-pil es una de las recetas más tradicionales su elaboración es sencilla pero requiere su practica y su resultado es espectacular.<br><b>Consejo</b><br>Para desalar el bacalao, primero hay que pasar los trozos por el chorro del grifo y a continuación se colocan en un recipiente con abundante agua fresca dentro del frigorífico (para que no sufra alteraciones de temperatura). El agua se renueva cada 8 horas, en el caso que esté finamente cortado, con tres veces será suficiente(24 horas). Si son tajadas muy gruesas hará falta hacerlo 6 veces (48 horas).");
	            	bacalao.setDificultad("media");
	            	bacalao.setTiempo(50);
            		
            		ingredientes = new ArrayList<Ingrediente>();
            			ingredientes.add(new Ingrediente("bacalao salado ",4,false));
            			ingredientes.add(new Ingrediente("ajo",5,false));
            			ingredientes.add(new Ingrediente("guindilla ",0.5f,false));
            			ingredientes.add(new Ingrediente("aceite virgen extra",300,false));

           			bacalao.setIngredientes(ingredientes);
            	
            	// end:Receta Bacalao al pil pil
            	
            	recetas.add(marmitako);
            	recetas.add(tortilla);
            	recetas.add(new Receta ("Solomillo"));
            	recetas.add(new Receta ("Txipirones en su tinta"));
            	recetas.add(bacalao);
            	recetas.add(new Receta ("Mejillones al vapor"));
            	        	
            	Receta receta = null;
            	for (int i = 0; i < recetas.size(); i++){
            		receta = recetas.get(i); // get nombre de las recetas.
 
 
            %>
            	<!-- receta -->
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal<%=i %>" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="<%=receta.getImagen() %>" class="img-responsive" alt="">
                    </a>
                </div>
                
                <!-- end: receta -->   
                          
 			<%
 				}
            %>
            <!-- end:for -->
            
            </div>
            <!-- end:div "row" -->
        </div>
    </section>

    <!-- About Section -->
    <section class="success" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>About</h2>
                    <hr class="star-light">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-lg-offset-2">
                    <p>Freelancer is a free bootstrap theme created by Start Bootstrap. The download includes the complete source files including HTML, CSS, and JavaScript as well as optional LESS stylesheets for easy customization.</p>
                </div>
                <div class="col-lg-4">
                    <p>Whether you're a student looking to showcase your work, a professional looking to attract clients, or a graphic artist looking to share your projects, this template is the perfect starting point!</p>
                </div>
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <a href="#" class="btn btn-lg btn-outline">
                        <i class="fa fa-download"></i> Download Theme
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Contact Me</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
                    <form name="sentMessage" id="contactForm" novalidate>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Name</label>
                                <input type="text" class="form-control" placeholder="Name" id="name" required data-validation-required-message="Please enter your name.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Email Address</label>
                                <input type="email" class="form-control" placeholder="Email Address" id="email" required data-validation-required-message="Please enter your email address.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Phone Number</label>
                                <input type="tel" class="form-control" placeholder="Phone Number" id="phone" required data-validation-required-message="Please enter your phone number.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Message</label>
                                <textarea rows="5" class="form-control" placeholder="Message" id="message" required data-validation-required-message="Please enter a message."></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <br>
                        <div id="success"></div>
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <button type="submit" class="btn btn-success btn-lg">Send</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                        <h3>Location</h3>
                        <p>3481 Melrose Place
                            <br>Beverly Hills, CA 90210</p>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>Around the Web</h3>
                        <ul class="list-inline">
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-google-plus"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-linkedin"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-dribbble"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>About Freelancer</h3>
                        <p>Freelance is a free to use, open source Bootstrap theme created by <a href="http://startbootstrap.com">Start Bootstrap</a>.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        Copyright &copy; Your Website 2016
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll hidden-sm hidden-xs hidden-lg hidden-md">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>
    
    
    <%
		receta = null;
		for (int i = 0; i < recetas.size(); i++){
			receta = recetas.get(i);
	
	%>

    <!-- Ventana Modal-->
    <div class="portfolio-modal modal fade" id="portfolioModal<%=i %>" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2><%=receta.getTitulo() %></h2>
                            <hr class="star-primary">
                            <img src="<%=receta.getImagen() %>" class="img-responsive img-centered" alt="">
                            <p><%=receta.getDescripcion() %></p>
                            <ul class="list-inline item-details">
                                <li>Client:
                                    <strong><a href="http://startbootstrap.com">Start Bootstrap</a>
                                    </strong>
                                </li>
                                <li>Date:
                                    <strong><a href="http://startbootstrap.com">April 2014</a>
                                    </strong>
                                </li>
                                <li>Service:
                                    <strong><a href="http://startbootstrap.com">Web Development</a>
                                    </strong>
                                </li>
                            </ul>
                            <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End:ventana Modal -->
    
    <% } %>
    <!-- end:for -->
  
    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Theme JavaScript -->
    <script src="js/freelancer.min.js"></script>

</body>

</html>
