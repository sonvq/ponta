<?php
/**
 * Template Name: Page Contact
 */
get_header();
while (have_posts()): the_post();
    ?>
    <main id="kontakt">
        <div class="banner">
            <?php $image = get_field('page_image'); ?>
            <img class="img-responsive" src="<?php echo $image['url'] ?>" alt="<?php echo $image['alt'] ?>">
        </div>
        <div class="container">

            <section class="text-contact font16 fontLight">
                <h2><?php the_title() ?></h2>

                <p class="text-contact font16 fontLight">
                    <?php the_field('first_content') ?>
                </p>
            </section>

            <section class="kontakt">
                <div class="row">
                    <div class="col-md-4 text-center item">
                        <img src="<?php echo get_template_directory_uri() ?>/images/phone.png">
                        <h3><a href="" class="underline colorLink"><?php the_field('mobile'); ?></a></h3>
                    </div>
                    <div class="col-md-4 text-center item">
                        <img src="<?php echo get_template_directory_uri() ?>/images/maker.png">
                        <h3><a href="" class="underline colorLink"><?php the_field('address'); ?></a></h3>
                    </div>
                    <div class="col-md-4 text-center item">
                        <img src="<?php echo get_template_directory_uri() ?>/images/inbox.png">
                        <h3><a href="" class="underline colorLink"><?php the_field('email'); ?></a></h3>
                    </div>
                </div>
            </section>

            <section class="text-contact font16 fontLight">
                <?php the_content() ?>
            </section>
        </div>
    </main>
    <?php
endwhile;
get_footer();
