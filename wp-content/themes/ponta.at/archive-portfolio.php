<?php
get_header();
?>

    <div id="info">
        <div class="info-wrapper">
            <p>Demo for Robert</a></p>
        </div>
    </div>

    <div class="container">
        <?php

        $taxonomy = 'portfolio_category';
        $terms = get_terms(
            array(
                'taxonomy' => $taxonomy,
                'hide_empty' => false,
                'parent' => 0
            )
        ); // Get all top level terms of a taxonomy

        if ($terms && !is_wp_error($terms)) :
            ?>
            <ul id="filters" class="clearfix">
                <?php
                    $filter_all = "";
                    foreach ($terms as $key => $term) {
                        if($key === (count($terms) - 1)){
                            $filter_all .= "." . $term->term_id;
                        }else{
                            $filter_all .= "." . $term->term_id . ", ";
                        }

                    }
                ?>
                <li><span class="filter active" data-filter="<?php echo $filter_all; ?>">All</span></li>
                <?php foreach ($terms as $term) { ?>
                    <li>
                        <span class="filter" data-filter=".<?php echo $term->term_id ?>"><?php echo $term->name; ?></span>
                    </li>
                <?php } ?>
            </ul>

        <?php endif; ?>


        <div id="portfoliolist">
            <?php
                while(have_posts()){
                    the_post();
                    $data_filter = get_the_terms(get_the_ID(), $taxonomy);
                    $data_filter_id = $data_filter[0]->term_id;

                    ?>
                    <div class="portfolio <?php echo $data_filter_id; ?>" data-cat="<?php echo $data_filter_id; ?>">
                        <div class="portfolio-wrapper">
                            <a href="<?php the_permalink() ?>"><?php the_post_thumbnail()?></a>
                            <div class="label">
                                <div class="label-text">
                                    <a class="text-title"><?php the_title() ?></a>
                                    <span class="text-category"><?php echo $data_filter[0]->name ?></span>
                                </div>
                                <div class="label-bg"></div>
                            </div>
                        </div>
                    </div>
                    <?php
                }
            ?>
        </div>

    </div><!-- container -->
    <script type="text/javascript">
        $(function () {

            $(document).ready(function () {
                var filterList = {

                    init: function () {

                        // MixItUp plugin
                        // http://mixitup.io
                        $('#portfoliolist').mixItUp({
                            selectors: {
                                target: '.portfolio',
                                filter: '.filter'
                            },
                            load: {
                                filter: '<?php echo $filter_all; ?>'
                            }
                        });

                    }

                };

                // Run the show!
                filterList.init();
            });


        });
    </script>
<?php

get_footer();