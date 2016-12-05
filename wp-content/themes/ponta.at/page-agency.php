<?php
/**
 * Template Name: Page Agency
 */
get_header();
while (have_posts()): the_post();
    ?>
    <main id="wws">
        <div class="container">
            <?php $items = get_field('items');
            foreach ($items as $item):
                ?>
                <section>
                    <h2 class="text-center"><?php echo $item['title'] ?></h2>
                    <figure>
                        <?php $img = $item['image'] ?>
                        <img class="imgWwsNormal img-responsive" src="<?php echo $img['url'] ?>">

                        <figcaption class="font16 fontLight">
                            <div class="row">
                                <div class="col-md-offset-2 col-md-8">
                                    <?php echo $item['content']; ?>
                                </div>
                            </div>
                        </figcaption>
                    </figure>
                </section>

            <?php endforeach; ?>
            <section>

                <p class="text-center textHome fontLight">
                    Sie sind interessiert mit uns zusammen zu arbeiten? So können Sie uns erreichen:
                </p>
                <div class="row">
                    <div class="col-md-4 text-center">
                        <a href="mailto:<?php echo get_field('email') ?>"
                           class="font36 underline"><?php the_field('email') ?></a>
                    </div>
                    <div class="col-md-4 text-center">
                        <a href="call:<?php echo get_field('phone') ?>"
                           class="font36 underline"><?php the_field('phone') ?></a>
                    </div>
                    <div class="col-md-4 text-center">
                        <a href="skype:<?php echo get_field('skype') ?>"
                           class="font36 underline"><?php the_field('skype') ?></a>
                    </div>
                </div>

            </section>
            <section id="commentShow">
                <h2 class="text-center">WAS UNSERE KUNDEN AN UNS SCHÄTZEN</h2>
                <div class="row">
                    <?php $customers = get_field('customer');
                    foreach ($customers as $customer):
                        ?>
                        <div class="col-md-4 col-sm-6">
                            <figure class="font16">
                                <div class="circularWrap imgWwsNormal">
                                    <?php $img = $customer['image'] ?>
                                    <img class=""
                                         src="<?php echo $img['url'] ?>">
                                </div>
                                <figcaption class="font16 fontLight">
                                    <?php echo $customer['comment']; ?>
                                </figcaption>
                            </figure>
                        </div>

                    <?php endforeach; ?>


                </div>
            </section>
        </div>
    </main>
    <?php
endwhile;
get_footer();
