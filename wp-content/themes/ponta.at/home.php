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
                <?php the_content() ?>
            </div>
        </div>
    </main>
    <?php
endwhile;
get_footer();
