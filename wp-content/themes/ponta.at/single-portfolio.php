<?php
get_header();
$gallery_image = get_field('gallery_portfolio');


?>

<div class="container">
    <h1><?php the_title(); ?></h1>
    <div>
        <?php
            foreach ($gallery_image as $image){

                ?>
                <a class="example-image-link"
                   href="<?php echo $image['sizes']['large'] ?>"
                   data-lightbox="example-set" data-title="<?php echo $image['title'] ?>">
                    <img class="example-image" src="<?php echo $image['sizes']['medium'] ?>" alt="<?php echo $image['alt'] ?>"/>
                </a>
                <?php
            }
        ?>

    </div>
</div>

<?php get_footer();


