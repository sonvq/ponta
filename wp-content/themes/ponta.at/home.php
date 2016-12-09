<?php
/**
 * Template Name: home
 */
get_header();
while (have_posts()): the_post();
    ?>
    <main>
        <div class="container">
            <h1>Klein und <span class="dynamicText"></span></h1>
            <p class="space-64 visible-md  visible-lg"></p>
            <p class="space-32 visible-xs visible-sm"></p>
            <div class=" collapseText">
                <p class="textHome">Hi, wir sind OliviaPonta Werbeagentur aus
                    Kärnten und wir konzipieren, gestalten und entwickeln digitale 
                    Kommunikation für unsere Kunden.
                </p>
                <p class="space-64 visible-md  visible-lg"></p>
                <p class="space-32 visible-xs visible-sm"></p>

                <p class="textHome">
                    <a href="#" class="red">Mehr über uns </a>
                </p>
                <p class="textHome ">
                    <a href="#" class="red">Das haben wir bereits gemacht </a>
                </p>
                <p class="textHome red">
                    <a href="#" class="red">Kontakt </a>
                </p>
            </div>
        </div>
    </main>
    <?php
endwhile;
get_footer();
