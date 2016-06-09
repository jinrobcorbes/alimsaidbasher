<!DOCTYPE html>

<html lang="en">
    <head>
        <!-- Basic Page Needs
        ================================================== -->
        <meta charset="utf-8">
        <!--[if IE]><meta http-equiv="x-ua-compatible" content="IE=9" /><![endif]-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alimsaidbasher</title>
        <meta name="description" content="Spirit8 is a Digital agency one page template built based on bootstrap framework. This template is design by Robert Berki and coded by Jenn Pereira. It is simple, mobile responsive, perfect for portfolio and agency websites. Get this for free exclusively at ThemeForces.com">
        <meta name="keywords" content="bootstrap theme, portfolio template, digital agency, onepage, mobile responsive, spirit8, free website, free theme, themeforces themes, themeforces wordpress themes, themeforces bootstrap theme">
        <meta name="author" content="ThemeForces.com">

        <!-- Favicons
        ================================================== -->
        <link rel="shortcut icon" href="bash/img/favicon.ico" type="image/x-icon">
        <link rel="apple-touch-icon" href="bash/img/apple-touch-icon.png">
        <link rel="apple-touch-icon" sizes="72x72" href="bash/img/apple-touch-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="114x114" href="bash/img/apple-touch-icon-114x114.png">

        <!-- Bootstrap -->
        <link rel="stylesheet" type="text/css"  href="bash/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="bash/fonts/font-awesome/css/font-awesome.css">

        <!-- Slider
        ================================================== -->
        <link href="bash/css/owl.carousel.css" rel="stylesheet" media="screen">
        <link href="bash/css/owl.theme.css" rel="stylesheet" media="screen">

        <!-- Stylesheet
        ================================================== -->
        <link rel="stylesheet" type="text/css"  href="bash/css/style.css">
        <!--<link rel="stylesheet" type="text/css"  href="bash/css/style_1.css">-->
        <link rel="stylesheet" type="text/css" href="bash/css/responsive.css">

        <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,700,300,600,800,400' rel='stylesheet' type='text/css'>

        <script type="text/javascript" src="bash/js/modernizr.custom.js"></script>
        <script type="text/javascript" src="bash/js/jquery.1.11.1.js"></script>

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        
        <style>
        
         
        <![endif]-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script type="text/javascript" src="bash/js/bootstrap.js"></script>
        <script type="text/javascript" src="bash/js/SmoothScroll.js"></script>
        <script type="text/javascript" src="bash/js/jquery.isotope.js"></script>

        <script src="bash/js/owl.carousel.js"></script>

        <!-- Javascripts
        ================================================== -->
        <script type="text/javascript" src="bash/js/main.js"></script>


    </head>


    <body>
        <!-- Navigation
        ==========================================-->
        <nav id="tf-menu" class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp">Alimsaidbasher</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#tf-home" class="page-scroll" onclick="click_me()">Home</a></li>
                        <li><a href="#tf-about" class="page-scroll">About</a></li>
                        <li><a href="#tf-team" class="page-scroll">Team</a></li>
                        <li><a href="#tf-gallery" class="page-scroll">Gallery</a></li>
                        <li><a href="#tf-services" class="page-scroll">Services</a></li>
                        <li><a href="#tf-contact" class="page-scroll">Contact</a></li>
                        <li><a href="#tf-programs" class="page-scroll">Program</a></li>
                        <li><a href="#tf-blog" class="page-scroll">Blog</a></li>
                        <li><a href="#tf-files" class="page-scroll">File</a></li>
                        <li><a href="#tf-lastAcknowledge" class="page-scroll">Acknowledgement</a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>



        <!-- Home Page
        ==========================================-->
        <div id="tf-home" class="text-center">
            <div class="overlay">
                <div class="content">

                    <h1>Welcome on <strong><span class="color">Spirit8</span></strong></h1>
                    <!--<p class="lead">We are a digital agency with <strong>years of experience</strong> and with <strong>extraordinary people</strong></p>-->
                    <p class="lead">We are a digital agency withyears of experience and with extraordinary people We are a digital agency withyears of experience and with extraordinary people </p>
                    <a href="#tf-about" class="fa fa-angle-down page-scroll"></a>
                </div>
            </div>
        </div>

        <!-- About Us Page
        ==========================================-->


        <script>


            function load_data() {
                console.log("success load load_data");
                $.ajax({
                    type: "get", // GET or POST
                    url: 'Data_table_about', // Path to file


                    beforeSend: function () {                                // Before Ajax 

                    },
                    complete: function () {

                        //$success.show();
                    },
                    success: function (response) {
// Show content
                        //                alert(response.toString());
//about-list
                        $.each(response, function (index, value) {


                            console.log(value.id + " " + value.title + " " + value.article + " " + value.date_modified);
                            var about_list_content = '<li>'
                                    + '<span class="fa fa-dot-circle-o"></span>'
                                    + '<strong>' + value.title + '</strong> - <em > <p align="justify">' + value.article + ' </p></em>'
                                    + ' </li>';
                            $("#about_data_here").append(about_list_content);
                        });
                    },
                    error: function (xhr) {

                    }
                });
            }
            $(document).ready(function () {
                console.log("ready!");
                //append_about_here

                load_data();
                load_data_gallery();
                load_filter_gallery();
            });</script>


        <div id="tf-about">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <img src="bash/img/02.png" class="img-responsive">
                        <nav id="thisthisocial">
                            <div class="pull-right fnav">
                                <ul class="social-social_icon">
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                                </ul>
                            </div>
                        </nav>
                        <div class="space"></div>

                    </div>
                    <div class="col-md-6">
                        <div class="about-text">
                            <div id="append_about_here" class="section-title">
                                <h4>About </h4>
                                <h2> Aleem <strong> Said Ahmad Basher </strong></h2>
                                <hr>
                                <div class="clearfix"></div>
                            </div>
                            <!--                            <p class="intro"> <strong>Aleem Said Ahmad Basher (Arabic: ??? ???? ????? ) </strong> born on August 3, 1951) is a Filipino-Muslim Alim, an active Islamic preacher, broadcaster, lecturer and Islamic consultant (an expert / resource person). He is the current chairman of the Imam Council of the Philippines. A Muslim leader and Imam, who tends to the community development, social needs and spiritual guidance of Muslim citizenry specifically those who are living in the Islamic communities in Metro Manila areas, and its nearby provinces in Luzon. Because of his sincerity to serve well the Filipino Muslims, his chairmanship in IMAM - Integrated Movement Access on Moonsighting, an organization that discusses the moon sighting issues among Muslims in the country during the months of Ramadan and Dhu al-Hijjah for the respective rituals and Islamic traditions; inspired him to apply membership in a reputed international moonsighting group the Moonsighting Committee Worldwide - MCW.
                                                            Aleem Said is known to be grateful and deferent even to dissimilar in faith. His active participation on various groups nationwide made him recognized in many organizations. He was quoted saying that the "ulama conference would resolve the problem of disunity among the ranks of the ulama" during the recent first National Ulama Consultative Conference, which was held in Cebu organized by the National Commission on Muslim Filipinos. He was also one of the 32 of the country?s top Islamic clerics (ulamas) who support the administration of President Benigno S. Aquino III?s peace processes with Muslim rebel organizations..</p>-->
                            <ul id="about_data_here" class="about-list">

                                <!--                                <li>
                                                                    <span class="fa fa-dot-circle-o"></span>
                                                                    <strong>PERSONAL LIFE AND EDUCATION</strong> - <em>In 1951, Aleem Said was born, in Makkah, to Sheikh Ahmad and Zinab of Maranao ethnic group. He was the second child and son among five children of Sheikh Ahmad to his first wife. Because of his passion for the Islamic way of life, like his father, Aleem Said decided to pursue a bachelor's degree in Islamic Propagation at Al-Azhar University in Cairo, Egypt which he graduated in 1994. He also has master's degree in business administration and a bachelor's degree in commerce both completed at the Manuel L. Quezon University (MBA-1983 & B.Sc.-1975) respectively.</em>
                                                                </li>-->

                                <!--
                                                                <li>
                                                                    <span class="fa fa-dot-circle-o"></span>
                                                                    <strong>STUDENTRY AND LEADERSHIP</strong> - <em>During his stay at Al-Azhar University, Aleem Said was intensively immersed to great responsibilities when he was nominated and was elected by his fellow students, as founding President to the Federation of Foreign Students' Association, in Cairo, Egypt in the year 1996 - 1998. Being the former President of the Philippines Students' Association in Cairo, Cairo, Egypt from 1995?1996; made him an effective leader in heading the federation in two years successively. Because of his intense exposure to being a cause oriented and a discipline leader, Aleem Said was inducted to KBP, a prestigious association of broadcasters in the Philippines in 2006. In 2004, he was elected as member to the Board of Directors at the Agama Islam Society, up-to-present.</em>
                                                                </li>-->
                                <!--
                                                                <li>
                                                                    <span class="fa fa-dot-circle-o"></span>
                                                                    <strong>ISLAMIC VIEWPOINT</strong> - <em>Aleem Said adhered to the Sunni form of Islam. He is a pro-life and a peace advocator. He denounces terrorism, and describes violence in every form as un-Islamic that a real and true Muslim does not hurt innocent people.</em>
                                                                </li>-->

                                <!--                                <li>
                                                                    <span class="fa fa-dot-circle-o"></span>
                                                                    <strong>INTERFAITH DIALOGUE</strong> - <em>In 2005, a group of Maranao entrepreneurs living in Manila has elected Aleem Said as its Vice-President to their Manila Muslim Chamber of Commerce, though, he is not involved in any such businesses. In 2010, Aleem Said, being a peace advocator for more than a decade, has successfully convened the Philippines Interfaith Leaders Forum; an innovative step he perceived as an interfaith initiative expert, during his tenure as member of the board of directors at Peacemakers' Circle Foundation. The Peacemakers? Circle was founded in July 1998 by Marites Guingona-Africa, niece of former Philippines Vice-President Teofisto Guingona.[citation needed] He is actively involved in interfaith dialogue, whether in private or public sector. He's quoted saying ?our collective prayers are the best thing that we can do as a nation to bolster the diplomatic efforts and representation of our government before the Government of China to save the lives of the three Filipinos,? as a response to the President's appeal during the wake of the conviction of jailed workers. Aleem Said also served as spiritual consultant during the recent National Forum on Zakat held at the SMX Convention Center. Paying zakat is one of Five Pillars of Islam. He explains that Quran has named the eight kinds of persons who should receive zakah, such as the Masako (destitute); fuqaraa (the needy or poor); amil' Zakah (the alms collectors); VI sabi `Tillah (in the path of God); gharimun (people burdened with debt); ibn as-Sabi l (the wayfarers); Riyadh (people in bondage or slavery); and mu'Allaf (those who have inclined towards Islam).He also gives spiritual guidance on every before, during, and after of the two Eids. In Ramadan, he cited the importance of adhering to the Sunnah of Islam's prophet. He also emphasized that Eid?l Fitr was also a day for visiting relatives and friends and for making reconciliation. In Dhu al-Hijjah, Aleem Said explained that Eid al-Adha symbolizes to the obedience of Prophet Ibrahim and his son Ismail as commanded by Allah, it represents the prayer for peace not only among Muslims but in unity and love of mankind that worship God. The eid means festival and adha means sacrifice.</em>
                                                                </li>-->

                                <!--                                <li>
                                                                    <span class="fa fa-dot-circle-o"></span>
                                                                    <strong>ACHIEVEMENT AND REWARDS</strong> - <em>Aleem Said has attended numerous activities which were hosted either by a governmental and NGO such as: conference, workshop, seminar, symposium, course, training, forum, meetings etc. in international, national and local levels. These agencies include but not limited to Muslim World League, DepEd-ARMM, World Federation of International Arab-Islamic Schools, Department Of Health?ARMM, International Islamic Federation of Student Organizations (IIFSO) and Islamic Universities League. (I.U.L.)
                                                                        He also received plaques, certificates etc. both from government and NGO for his achievements, contribution to the community development and humanitarian activities.</em>
                                                                </li>-->
                                <!--
                                                                <li>
                                                                    <span class="fa fa-dot-circle-o"></span>
                                                                    <strong>VISIT WIKIPEDIA</strong> - <em>  <strong>Said Ahmad Basher </strong>  https://en.wikipedia.org/wiki/Aleem_Said_Ahmad_Basher</em>
                                                                </li>-->

                                <!--                                <li>
                                                                    <span class="fa fa-dot-circle-o"></span>
                                                                    <strong>VISIT WIKIPEDIA</strong> - <em> <strong> Sheikh Ahmad Bashir </strong>  https://en.wikipedia.org/wiki/Sheikh_Ahmad_Bashir</em>
                                                                </li>-->
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Team Page
        ==========================================-->

        <script>


            function load_team() {

                $.ajax({
                    type: "get", // GET or POST
                    url: 'Data_table_team', // Path to file


                    beforeSend: function () {                                // Before Ajax

                    },
                    complete: function () {

                        //$success.show();
                    },
                    success: function (response) {

                        $.each(response, function (index, value) {


                            console.log("The value for the team members" + value.id + " " + value.title + " " + value.article + " " + value.date_modified);
                            var table_name = "team";
                            var id_pic = value.id.toString();
                            var about_list_team = '<div class="owl-item" style="width: 285px;">'
                                    + ' <div class="thumbnail">'
                                    + '<img src="Picture_view?id=' + id_pic + '&set_table=' + table_name + '" alt = "User Image"  class="img-circle team-img" />'
                                    + '  <div class="caption">'
                                    + '  <h3>' + value.title + '</h3>'
                                    + '   <p>' + value.article + ' </p>'
                                    + '  </div>'
                                    + '  </div>'
                                    + ' </div> ';
                            setTimeout(function () {

                                $("#team").append(about_list_team);
                            }, 200);
                        });
                    },
                    error: function (xhr) {

                    }
                });
            }
            $(document).ready(function () {
                console.log("ready!");
                //append_about_here


                var sample_data = '<div class="item" id="team1" style="display:none">'
                        + ' <div class="thumbnail">'
                        + '  <img src="bash/img/team/01.jpg" alt="..." class="img-circle team-img">'
                        + ' <div class="caption">'
                        + '    <h3>Kycen Magoyag</h3>'
                        + '   <p> Developer / Web Designer / IT Support /Photographer  </p>'
                        + '    <p>Do not seek to change what has come before. Seek to create that which has not.</p>'
                        + '  </div>'
                        + '  </div>'
                        + ' </div>';
                $("#team").append(sample_data);
                setTimeout(function () {

                    load_team();
                    // $("#team1").hide();


                }, 200);
            });</script>



        <div id="tf-team" class="text-center">
            <div class="overlay">
                <div class="container">
                    <div class="section-title center">
                        <h2>Meet <strong>our team</strong></h2>
                        <div class="line">
                            <hr>
                        </div>
                    </div>

                    <div id="team" class="owl-carousel owl-theme row">




                        <!--
                                                <div class="item">
                                                    <div class="thumbnail">
                                                        <img src="bash/img/team/01.jpg" alt="..." class="img-circle team-img">
                                                        <div class="caption">
                                                            <h3>Kycen Magoyag</h3>
                                                            <p> Developer / Web Designer / IT Support /Photographer  </p>
                                                            <p>Do not seek to change what has come before. Seek to create that which has not.</p>
                                                        </div>
                                                    </div>
                                                </div>-->

                        <!--                        <div class="item">
                                                    <div class="thumbnail">
                                                        <img src="bash/img/team/02.jpg" alt="..." class="img-circle team-img">
                                                        <div class="caption">
                                                            <h3>Jamalodin M.Samsodin</h3>
                                                            <p>IT / Tech Support / Phil Post Support</p>
                                                            <p>Do not seek to change what has come before. Seek to create that which has not.</p>
                                                        </div>
                                                    </div>
                                                </div>-->



                    </div>
                </div>
            </div>
        </div>




        <!-- Clients Gallery
                ==========================================-->
        <div id="tf-gallery">


            <div class="container"> <!-- Container -->
                <div class="section-title text-center center">
                    <h2>Take a look at <strong>our gallery</strong></h2>
                    <div class="line">
                        <hr>
                    </div>
                    <div class="clearfix"></div>
                    <!--<small><em>Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</em></small>-->


                    <div id="draw_filter" class="categories">

                        <!--                        <ul class="cat">
                                                    <li class="pull-left"><h4>Filter by Type:</h4></li>
                                                    <li class="pull-right">
                                                        <ol class="type">
                                                            <li><a href="#" data-filter="*" class="active">All</a></li>
                                                            <li><a href="#" data-filter=".May242016">Web Design</a></li>
                                                            <li><a href="#" data-filter=".photography">Photography</a></li>
                                                            <li><a href="#" data-filter=".app" >Mobile App</a></li>
                                                            <li><a href="#" data-filter=".branding" >Branding</a></li>
                                                        </ol>
                                                    </li>
                                                </ul>
                                                <div class="clearfix"></div>-->
                    </div>
                </div>
                <div id="lightbox" class="row ">
                    <!--<div id="lightbox"></div>-->
                    <!--                                        <div class="col-sm-6 col-md-3 col-lg-3 web">
                                                                <div class="portfolio-item">
                                                                    <div class="hover-bg">
                                                                        <a href="#">
                                                                            <div class="hover-text">
                                                                                <h4>Logo Design</h4>
                                                                            </div>
                                                                            <img src="Picture_view?id=2&set_table=gallery" class="img-responsive" alt="...">
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                        
                                                            <div class="col-sm-6 col-md-3 col-lg-3 photography app">
                                                                <div class="portfolio-item">
                                                                    <div class="hover-bg">
                                                                        <a href="#">
                                                                            <div class="hover-text">
                                                                                <h4>Logo Design</h4>
                                                                            </div>
                                                                            <img src="bash/img/portfolio/02.jpg" class="img-responsive" alt="...">
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                        
                                                            <div class="col-sm-6 col-md-3 col-lg-3 branding">
                                                                <div class="portfolio-item">
                                                                    <div class="hover-bg">
                                                                        <a href="#">
                                                                            <div class="hover-text">
                                                                                <h4>Logo Design</h4>
                                                                            </div>
                                                                            <img src="bash/img/portfolio/03.jpg" class="img-responsive" alt="...">
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                        
                                                            <div class="col-sm-6 col-md-3 col-lg-3 branding">
                                                                <div class="portfolio-item">
                                                                    <div class="hover-bg">
                                                                        <a href="#">
                                                                            <div class="hover-text">
                                                                                <h4>Logo Design</h4>
                                                                            </div>
                                                                            <img src="bash/img/portfolio/04.jpg" class="img-responsive" alt="...">
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                        
                                                            <div class="col-sm-6 col-md-3 col-lg-3 web">
                                                                <div class="portfolio-item">
                                                                    <div class="hover-bg">
                                                                        <a href="#">
                                                                            <div class="hover-text">
                                                                                <h4>Logo Design</h4>
                                                                            </div>
                                                                            <img src="bash/img/portfolio/05.jpg" class="img-responsive" alt="...">
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                        
                                                            <div class="col-sm-6 col-md-3 col-lg-3 app">
                                                                <div class="portfolio-item">
                                                                    <div class="hover-bg">
                                                                        <a href="#">
                                                                            <div class="hover-text">
                                                                                <h4>Logo Design</h4>
                                                                            </div>
                                                                            <img src="bash/img/portfolio/06.jpg" class="img-responsive" alt="...">
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                        
                                                            <div class="col-sm-6 col-md-3 col-lg-3 photography web">
                                                                <div class="portfolio-item">
                                                                    <div class="hover-bg">
                                                                        <a href="#">
                                                                            <div class="hover-text">
                                                                                <h4>Logo Design</h4>
                                                                            </div>
                                                                            <img src="bash/img/portfolio/07.jpg" class="img-responsive" alt="...">
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                        
                                                            <div class="col-sm-6 col-md-3 col-lg-3 web">
                                                                <div class="portfolio-item">
                                                                    <div class="hover-bg">
                                                                        <a href="#">
                                                                            <div class="hover-text">
                                                                                <h4>Logo Design</h4>
                                                                            </div>
                                                                            <img src="bash/img/portfolio/08.jpg" class="img-responsive" alt="...">
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>-->

                </div>
            </div>
        </div>

        <!-- Team Page
      ==========================================-->

        <script>
            function load_data_services() {

                $.ajax({
                    type: "get", // GET or POST
                    url: 'Data_table_services', // Path to file
                    beforeSend: function () {                                // Before Ajax 

                    },
                    complete: function () {
                    },
                    success: function (response) {

                        $.each(response, function (index, value) {
                            console.log(value.id + " " + value.title + " " + value.article + " " + value.date_modified);
                            var about_list_services = ' <div class="col-md-3 col-sm-6 service">'
                                    + '' + value.title + ' '
                                    + '<p> ' + value.article + '</p>'
                                    + ' </div>';
                            $("#basher_services").append(about_list_services);
                        });
                    },
                    error: function (xhr) {
                    }
                });
            }
            $(document).ready(function () {
                load_data_services();
            });</script>


        <div id="tf-services" class="text-center">
            <div class="overlay">
                <div class="container">
                    <div class="section-title center">
                        <h2>Take a look at <strong>our services</strong></h2>
                        <div class="line">
                            <hr>
                        </div>
                        <div class="clearfix"></div>
                        <small><em>Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</em></small>
                    </div>

                    <!--<div id="team" class="owl-carousel owl-theme row">-->
                    <div class="space"></div>
                    <div id="basher_services" class="row">
                        <!--                        <div class="col-md-3 col-sm-6 service">
                                                    <i class="fa fa-desktop"></i>
                                                    <h4><strong>Web design</strong></h4>
                                                    <p>The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>
                                                </div>-->

                        <!--                        <div class="col-md-3 col-sm-6 service">
                                                    <i class="fa fa-mobile"></i>
                                                    <h4><strong>Mobile Apps</strong></h4>
                                                    <p>The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>
                                                </div>-->

                        <!--                        <div class="col-md-3 col-sm-6 service">
                                                    <i class="fa fa-camera"></i>
                                                    <h4><strong>Photography</strong></h4>
                                                    <p>The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>
                                                </div>-->
                        <!--
                                                <div class="col-md-3 col-sm-6 service">
                                                    <i class="fa fa-bullhorn"></i>
                                                    <h4><strong>Marketing</strong></h4>
                                                    <p>The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>
                                                </div>-->
                    </div>
                    <!--</div>-->

                </div>
            </div>
        </div>
        <!-- Contact Section
        ==========================================-->
        <script>
            function load_data_contact_us() {

                $.ajax({
                    type: "get", // GET or POST
                    url: 'Data_table_Contact', // Path to file
                    beforeSend: function () {                                // Before Ajax 

                    },
                    complete: function () {
                    },
                    success: function (response) {

                        $.each(response, function (index, value) {

                            var about_list_contact = '<li>'
                                    + '<span class="fa fa-phone"> </span>'
                                    + '<strong>' + value.title + '</strong>'
                                    + '<p>' + value.contact_info + '</p>'
                                    + '</li>';

                            $("#basher_contact_in_here").append(about_list_contact);
                        });
                    },
                    error: function (xhr) {
                    }
                });
            }
            $(document).ready(function () {
                load_data_contact_us();
            });</script>




        <div id="tf-contact" class="text-center">
            <div class="container">

                <div class="row">
                    <div class="col-md-8 col-md-offset-2">

                        <div class="section-title center">
                            <h2>Feel free to <strong>contact us</strong></h2>
                            <div class="line">
                                <hr>
                            </div>
                            <div class="clearfix"></div>
                            <!--                            <small><em>Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</em></small>            -->

                            <ul class="about-list"  id="basher_contact_in_here" style="column-count: 3;">
                                <!--                                <li>
                                                                    <span class="fa fa-phone"></span>
                                                                    <strong>PERSONAL LIFE AND EDUCATION</strong>  
                                                                </li>-->
                                <!--                                <li>
                                                                      <span class="fa fa-phone"></span>
                                                                    <strong>PERSONAL LIFE AND EDUCATION</strong>  
                                                                </li>
                                                                <li>
                                                                     <span class="fa fa-phone"></span>
                                                                    <strong>PERSONAL LIFE AND EDUCATION</strong>  
                                                                </li>
                                                                
                                                                 <li>
                                                                     <span class="fa fa-phone"></span>
                                                                    <strong>PERSONAL LIFE AND EDUCATION</strong>  
                                                                </li>
                                                                <li>
                                                                    <span class="fa fa-phone"></span>
                                                                    <strong>PERSONAL LIFE AND EDUCATION</strong>  
                                                                </li>
                                -->


                            </ul>


                        </div>
                        <div class="clearfix"></div>
                        <small><em>You can also reach us through email by filling up  and submitting the form below.</em></small>            


                        <form>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="Name">Name</label>
                                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Your name">
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Message</label>
                                <textarea class="form-control" rows="3"></textarea>
                            </div>

                            <button type="submit" class="btn tf-btn btn-default">Submit</button>
                        </form>





                    </div>
                </div>

            </div>
        </div>

        <!-- Clients Program Section
        ==========================================-->

        <script>
            function load_data_Program() {

                $.ajax({
                    type: "get", // GET or POST
                    url: 'Data_table_Program', // Path to file
                    beforeSend: function () {                                // Before Ajax 

                    },
                    complete: function () {
                    },
                    success: function (response) {

                        $.each(response, function (index, value) {
<<<<<<< HEAD


=======
>>>>>>> 990ff75eb9dc5841d54709c75c4a261137efb230



                            console.log(value.id + "Thrones of inaarw araw " + value.title + " " + value.article + " " + value.date_modified);
                            var program_list = ' <li>'
                                    + '    <span class="fa fa-star-o"></span>'
                                    + '  <strong>' + value.title + '</strong>  '
                                    + '<p>' + value.article + ' </p>'
                                    + '</li>';
                            $("#basher_program").append(program_list);
                        });
                    },
                    error: function (xhr) {
                    }
                });
            }
            $(document).ready(function () {
                load_data_Program();
            });</script>


        <div id="tf-programs" class="text-center">
            <div class="overlay">
                <div class="container">
                    <div class="section-title center">
                        <h2><strong>our Programs</strong></h2>
                        <div class="line">
                            <hr>
                        </div>
                        <div class="clearfix"></div>
                        <small><em>Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</em></small>
                    </div>
                    <div class="row">
                        <ul class="about-list" style="column-count: 3;" id="basher_program">
                            <!--                            <li>
                                                            <span class="fa fa-star-o"></span>
                                                            <strong>PERSONAL LIFE AND EDUCATION</strong>  
                                                        </li>-->
                            <!-- 
                            <li>
                                <span class="fa fa-star-o"></span>
                                <strong>PERSONAL LIFE AND EDUCATION</strong>  
                            </li>
                            <li>
                                <span class="fa fa-star-o"></span>
                                <strong>PERSONAL LIFE AND EDUCATION</strong>  
                            </li>
                            <li>
                                <span class="fa fa-star-o"></span>
                                <strong>PERSONAL LIFE AND EDUCATION</strong>  
                            </li>
                            <li>
                                <span class="fa fa-star-o"></span>
                                <strong>PERSONAL LIFE AND EDUCATION</strong>  
                            </li>
                            <li>
                                <span class="fa fa-star-o"></span>
                                <strong>PERSONAL LIFE AND EDUCATION</strong>  
                            </li>
                            <li>
                                <span class="fa fa-star-o"></span>
                                <strong>PERSONAL LIFE AND EDUCATION</strong>  
                            </li>
                            <li>
                                <span class="fa fa-star-o"></span>
                                <strong>PERSONAL LIFE AND EDUCATION</strong>  
                            </li>
                            <li>
                                <span class="fa fa-star-o"></span>
                                <strong>PERSONAL LIFE AND EDUCATION</strong>  
                            </li>-->
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!-- Blog Section ==========================================-->



        <script>


            function clcik_me(elem) {

                var id = $(elem).attr("id");
                var the_id = $('#' + id + '').text();
                var title = $('#' + id + '').text();
//                alert(id);
                //  alert(title);

                console.log("title :" + the_id);
                $.ajax({
                    type: "get", // GET or POST
                    url: 'BlogViewSingleData', // Path to file
                    data: {title: title},
                    beforeSend: function () {                                // Before Ajax 
                        $("#basher_blog_content").remove();
                    },
                    complete: function () {
                    },
                    success: function (response) {

                        var the_ul = '  <ul class="about-list" id="basher_blog_content">'
                                + '<ul>';
                        $("#ul_content_data").append(the_ul);
                        $.each(response, function (index, value) {


                            var blog_content = ' <li>  '
                                    + '<h4><strong>' + value.title + '</strong></h4>'
                                    + ' <iframe width="620px" height="600"'
                                    + ' src="' + value.video_link + '">'
                                    + '</iframe>'
                                    + ' <p class="text-justify">' + value.article + '</p>'
                                    + '</li>';
                            $("#basher_blog_content").append(blog_content);
                        });
                    },
                    error: function (xhr) {

                    }
                });
            }
            function load_data_Blog_title() {


                var counting = 0;
                $.ajax({
                    type: "get", // GET or POST
                    url: 'Data_table_Blog', // Path to file
                    beforeSend: function () {                                // Before Ajax 

                    },
                    complete: function () {
                    },
                    success: function (response) {

                        $.each(response, function (index, value) {



                            counting++;
                            var blog_title = '<li>'
                                    + ' <span  class="fa fa-angle-double-right" ></span>'
                                    + '  <span  id="list' + counting + '"   onclick="clcik_me(this)">  <a href="#tf-blog">' + value.title + '</a></span>'
                                    + '</li>';
                            $("#blog_title").append(blog_title);
                        });
                    },
                    error: function (xhr) {
                    }
                });
            }



            function load_data_Blog_title_first_data() {
                var counting = 0;
                $.ajax({
                    type: "get", // GET or POST
                    url: 'BlogFirstView', // Path to file
                    beforeSend: function () {                                // Before Ajax 

                    },
                    complete: function () {
                    },
                    success: function (response) {
                        var the_ul = '  <ul class="about-list" id="basher_blog_content">'
                                + '<ul>';
                        $("#ul_content_data").append(the_ul);
                        $.each(response, function (index, value) {


                            var blog_content = ' <li>  '
                                    + '<h4><strong>' + value.title + '</strong></h4>'
                                    + ' <iframe width="620px" height="600"'
                                    + ' src="' + value.video_link + '">'
                                    + '</iframe>'
                                    + ' <p class="text-justify">' + value.article + '</p>'
                                    + '</li>';
                            $("#basher_blog_content").append(blog_content);
                        });
                    },
                    error: function (xhr) {
                    }
                });
            }



            $(document).ready(function () {

                load_data_Blog_title();
                load_data_Blog_title_first_data();
            });</script>


        <div id="tf-blog">
            <div class="container"> <!-- Container -->
                <div class="section-title text-center center">
                    <h2> <strong>our blogs</strong></h2>
                    <div class="line">
                        <hr>
                    </div>
                    <div class="clearfix"></div>
                    <small><em>Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</em></small>
                </div>
                <div class="row">
                    <div class="col-md-4 pull-right">
                        <div class="categories">
                            <h3><strong>Categories</strong></h3>
                            <ul class="about-list" style="column-count: 1;" id="blog_title">
                                <!--                                <li>
                                                                    <a href="#">
                                                                        <span class="fa fa-angle-double-right"></span>
                                                                        <strong>Duis autem vel eum iriure dolor</strong>  
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <span class="fa fa-angle-double-right"></span>
                                                                        <strong>Hendrerit in vulputate velit esse molestie</strong>  
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">
                                                                        <span class="fa fa-angle-double-right"></span>
                                                                        <strong>Praesent luptatum zzril delenit augue</strong>  
                                                                    </a>
                                                                </li>
                                
                                                                <li>
                                                                    <a href="#">
                                                                        <span class="fa fa-angle-double-right"></span>
                                                                        <strong>Praesent luptatum zzril delenit augue</strong>  
                                                                    </a>
                                                                </li>-->

                            </ul>
                        </div>
                    </div>
                    <div class="col-md-8" id="ul_content_data">



                        <!--                        <ul class="about-list" id="basher_blog_content">
                        
                        
                                                </ul>-->
                        <!--                        <ul class="about-list" id="basher_blog_content">-->
                        <!--                            <li>  
                                                        <h4><strong>Duis autem vel eum iriure dolor</strong></h4>
                                                                                        <img src="bash/img/portfolio/03.jpg" class="img-responsive" alt="...">                   
                                                        <iframe width="620px" height="600"
                                                                src="http://www.youtube.com/embed/dJzWCo-21UY">
                                                        </iframe>
                        
                                                        <p class="text-justify">Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum delenit augue duis dolore te feugait nulla facilisi.</p>
                        
                                                    </li>  -->

                        <!--                            <li>  
                                                        <h4><strong>Hendrerit in vulputate velit esse molestie</strong></h4>    
                                                        <div class="clear"></div>            
                                                                                        <img src="bash/img/portfolio/08.jpg" class="img-responsive" alt="...">                             
                                                        <iframe width="620px" height="600"
                                                                src="https://www.youtube.com/embed/Zws0w7aUpW0">
                                                        </iframe>
                        
                                                        <p class="text-justify">Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum delenit augue duis dolore te feugait nulla facilisi.</p>
                        
                                                    </li> -->

                        <!--
                                                    <li>  
                                                        <h4><strong>Hendrerit in vulputate velit esse molestie</strong></h4>    
                                                        <div class="clear"></div>            
                                                           0WVRXklAMFo                             <img src="bash/img/portfolio/08.jpg" class="img-responsive" alt="...">                             
                                                        <iframe width="620px" height="600"
                                                                src="https://www.youtube.com/embed/RqbYLAdIBkg">
                                                        </iframe>
                        
                                                        <p class="text-justify">Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum delenit augue duis dolore te feugait nulla facilisi.</p>
                        
                                                    </li> -->

                        <!--
                        
                                                    <li>  
                                                        <h4><strong>Hendrerit in vulputate velit esse molestie</strong></h4>    
                                                        <div class="clear"></div>            
                                                                                        <img src="bash/img/portfolio/08.jpg" class="img-responsive" alt="...">                             
                                                        <iframe width="620px" height="600"
                                                                src="https://www.youtube.com/embed/0WVRXklAMFo">
                                                        </iframe>
                        
                                                        <p class="text-justify">Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum delenit augue duis dolore te feugait nulla facilisi.</p>
                        
                                                    </li> -->

                        <!--                        </ul>-->
                    </div>
                    <div class="space"></div>
                </div>
            </div>

        </div>

        <!-- File Section ==========================================-->

        <script>
            function load_data_files() {
                var counting = 0;
                $.ajax({
                    type: "get", // GET or POST
                    url: 'Data_table_files', // Path to file
                    beforeSend: function () {                                // Before Ajax 

                    },
                    complete: function () {
                    },
                    success: function (response) {

                        $.each(response, function (index, value) {
                            counting++;
                            //  alert(response.toString());
                            console.log(value.id + " " + value.title + " " + value.article + " " + value.date_modified);
                            var about_list_acknowledgment = '<li>'
                                    + ' <a href="FileDownloadDB?id=' + value.id.toString() + '"> <span class="fa fa-chain-broken"></span>'
                                    + '<strong>' + value.file_name + ' </strong>'
                                    + '  </a> </li>';
                            $("#basher_files").append(about_list_acknowledgment);
                        });
                    },
                    error: function (xhr) {
                    }
                });
            }
            $(document).ready(function () {
                load_data_files();
            });</script>




        <div id="tf-files">
            <div class="container"> <!-- Container -->
                <div class="section-title text-center center">
                    <h2> Check <strong>our files</strong></h2>
                    <div class="line">
                        <hr>
                    </div>
                    <div class="clearfix"></div>
                    <small><em>Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</em></small>
                </div>
                <div class="row">
                    <div class="col-md-12 col-md-offset-2">
                        <ul id="basher_files" class="about-list" style="column-count: 2;">
                            <!--                            <li>
                                                            <a href="#">
                                                                <span class="fa fa-chain-broken"></span>
                                                                <strong>Duis autem vel eum iriure dolor</strong>  
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <span class="fa fa-chain-broken"></span>
                                                                <strong>Hendrerit in vulputate velit esse molestie</strong>  
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <span class="fa fa-chain-broken"></span>
                                                                <strong>Praesent luptatum zzril delenit augue</strong>  
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <span class="fa fa-chain-broken"></span>
                                                                <strong>Praesent luptatum zzril delenit augue</strong>  
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <span class="fa fa-chain-broken"></span>
                                                                <strong>Praesent luptatum zzril delenit augue</strong>  
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <span class="fa fa-chain-broken"></span>
                                                                <strong>Praesent luptatum zzril delenit augue</strong>  
                                                            </a>
                                                        </li>-->
                        </ul>
                    </div>
                </div>
            </div>
            <br/><br/><br/>
        </div>

        <!-- Contact Section
        ==========================================-->

        <script>
            function load_data_acknowledgement() {
                $.ajax({
                    type: "get", // GET or POST
                    url: 'Data_table_acknowledgement', // Path to file
                    beforeSend: function () {                                // Before Ajax 

                    },
                    complete: function () {
                    },
                    success: function (response) {

                        $.each(response, function (index, value) {

                            //  alert(response.toString());
                            console.log(value.id + " " + value.title + " " + value.article + " " + value.date_modified);
                            var about_list_acknowledgment = '<li>'
                                    + ' <a href="#"> <span class="fa fa-user"></span>'
                                    + '<strong>' + value.title + ' - ' + value.article + ' </strong>'
                                    + '  </a> </li>';
                            $("#basher_acknowledgement").append(about_list_acknowledgment);
                        });
                    },
                    error: function (xhr) {

                    }
                });
            }
            $(document).ready(function () {

                load_data_acknowledgement();

            });</script>



        <div id="tf-lastAcknowledge" class="text-center">
            <div class="container">
                <div class="section-title text-center center">
                    <h2><strong>Acknowledgement</strong></h2>
                    <div class="line">
                        <hr>
                    </div>
                    <div class="clearfix"></div>
                    <small><em>Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</em></small>
                </div>
                <div class="row">
                    <div class="col-md-12 col-md-offset-2">
                        <ul  id="basher_acknowledgement" class="about-list" style="column-count: 3;">
                            <!--                            <li>
                                                            <a href="#">
                                                                <span class="fa fa-user"></span>
                                                                <strong>Robie Hilario</strong>  
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <span class="fa fa-user"></span>
                                                                <strong>Jean Michael Sagadal</strong>  
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="#">
                                                                <span class="fa fa-user"></span>
                                                                <strong>Melvin Corbes</strong>  
                                                            </a>
                                                        </li>-->
                        </ul>
                        <div class="space"></div>
                    </div>
                </div>

            </div>
        </div>


        <nav id="footer">
            <div class="container">
                <div class="pull-left fnav">
                    <p>ALL RIGHTS RESERVED. COPYRIGHT © 2014. Designed by <a href="https://dribbble.com/shots/1817781--FREEBIE-Spirit8-Digital-agency-one-page-template">Robert Berki</a> and Coded by <a href="https://dribbble.com/jennpereira">Jenn Pereira</a></p>
                </div>
            </div>
        </nav>


        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->



    </body>
</html>

<script>

<<<<<<< HEAD
    $(document).ready(function () {
//        load_data_gallery();
//        load_filter_gallery();

    });
=======
            $(document).ready(function () {
>>>>>>> 990ff75eb9dc5841d54709c75c4a261137efb230

    function click_me() {
        console.log("detect");
        var imageUrl = "/img/01.jpg";
        $('#tf-home').css("background-image", "url(bash/img/01.jpg)");

    }

<<<<<<< HEAD

    function load_data_gallery() {

        var counting = 0;
        console.log("success load load_data gallery");
        $.ajax({
            type: "get", // GET or POST
            url: 'Data_table_gallery', // Path to file
            cache: false,
            data: {
//                empno:${emp.empNo}
            },
            beforeSend: function () {                                // Before Ajax 

            },
            complete: function () {

                //$success.show();
            },
            success: function (response) {
// Show content
//                alert(response.toString());

//                $('#example1').DataTable().clear().draw();

                var text = "";
                var monthNames = ["January", "February", "March", "April", "May", "June",
                    "July", "August", "September", "October", "November", "December"
                ];
                $.each(response, function (index, value) {

                    var str = value.date_only_string;
                    var split = str.split("-");
                    var set_month_name = parseFloat(split[0]) - parseFloat("1");
                    var get_month_name = monthNames[set_month_name] + "-" + split[1];
                    var get_id = "";
                    console.log("HERE " + value.id + " " + value.title);
                    console.log("date_only_string " + value.date_only_string);
                    get_id = value.id;
                    counting++;
                    text = text + '<div class="col-sm-6 col-md-3 col-lg-3 ' + get_month_name + '">';
                    text = text + '<div class="portfolio-item">';

                    text = text + '<div class="hover-bg">';
//                    text = text + '<a href="#">';
                    text = text + '<div class="hover-text">';
                    text = text + '<h4>' + value.title + '</h4>';
                    text = text + '<h6>' + value.article + '</h6>';
                    text = text + ' </div>';
                    text = text + '<img src="Picture_view?id=' + get_id + '&set_table=gallery" class="img-responsive" alt="...">';
//                    text = text + '</a>';
                    text = text + ' </div>';
                    text = text + ' </div>';
                    text = text + ' </div>';

                });
                document.getElementById("lightbox").innerHTML = text;
            },
            error: function (xhr) {
                console.log("error " + xhr.toString());
            }
        });
    }


    function load_filter_gallery() {

        var counting = 0;
        console.log("success load load_filter_gallery");
        $.ajax({
            type: "get", // GET or POST
            url: 'Draw_filter_by_gallery', // Path to file
            cache: false,
            data: {
//                empno:${emp.empNo}
            },
            beforeSend: function () {                                // Before Ajax 

            },
            complete: function () {

                //$success.show();
            },
            success: function (response) {
// Show content
//                alert(response.toString());

//                $('#example1').DataTable().clear().draw();
                var monthNames = ["January", "February", "March", "April", "May", "June",
                    "July", "August", "September", "October", "November", "December"
                ];

                var text = "";
                text = text + '<ul class="cat">';
                text = text + '<li class="pull-left"><h4>Filter by Type:</h4></li>';
                text = text + '<li class="pull-right">';
                text = text + '<ol class="type">';
                text = text + '<li><a href="#" data-filter="*" class="active">All</a></li>';
                $.each(response, function (index, value) {
                    var str = value.date_only_string;
                    var split = str.split("-");
                    var set_month_name = parseFloat(split[0]) - parseFloat("1");
                    var get_month_name = monthNames[set_month_name] + "-" + split[1];
                    counting++;



//                    text = text + '<a href="#">';

                    text = text + '<li><a href="#" data-filter=".' + get_month_name + '" class="active">' + get_month_name + '</a></li>';






                });
                text = text + '</ol>';
                text = text + '</li>';
                text = text + ' </ul>';
                text = text + ' <div class="clearfix"></div>';
                text = text + ' </div>';
                document.getElementById("draw_filter").innerHTML = text;
            },
            error: function (xhr) {
                console.log("error " + xhr.toString());
            }
        });
    }
=======
            });
            function click_me() {
//                                $('#myDiv').css('background', 'path/to/image.jpg');

                console.log("detect");
                var imageUrl = "/img/01.jpg";
//                                $('#tf-home').css('background', 'url("imageUrl' + imageUrl + '")');
//                                $('#tf-home').css('background-image', 'url(' + encodeURIComponent(imageUrl) + ')');
//                                $('#tf-home').css('background-image', 'url("../img/01.jpg")');
//                                 $('#tf-home').parent().css("background", "url('bash/img/01.jpg') no-repeat");
//                                  $(this).parent().css("backgroundImage", "url('../images/r-srchbg_white.png') no-repeat");
                $('#tf-home').css("background-image", "url(bash/img/01.jpg)");
//                                $('selector').css('backgroundImage', 'url(images/example.jpg)');
//                                $('selector').css({'background-image': 'url(..img/01.jpg)'});
//                                document.getElementById("tf-home").style.backgroundImage = "url('../img/01.jpg')";
//                                document.getElementById("tf-home").style.backgroundImage = imageUrl;
            }
>>>>>>> 990ff75eb9dc5841d54709c75c4a261137efb230

</script>