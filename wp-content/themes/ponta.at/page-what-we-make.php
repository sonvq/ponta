<?php
/**
 * Template Name: Page What We Make
 */
get_header();
while (have_posts()): the_post();
    ?>
    <main>
        <div class="container">
            <h2>WIR GEBEN 100%. IMMER.</h2>
            <p class="font16 fontLight">Überzeugen Sie sich selbst.</p>
            <br>
            <br>

            <?php
            $taxs = get_terms('portfolio_category', array('parent' => 0));
            foreach ($taxs as $tax):
                ?>
                <div>
                    <h3><?php echo $tax->name ?></h3>
                    <p class="font16">
                        <?php
                        $childTaxs = get_terms('portfolio_category', array('parent' => $tax->term_id));
                        var_dump($childTaxs);
                        foreach ($childTaxs as $childTax):?>
                            <a href="<?php echo get_permalink($childTax->term_id) ?>" class="underline red">
                                <?php echo $childTax->name ?>
                            </a>
                        <?php endforeach; ?>
                    </p>
                    <br>
                </div>
                <?php
            endforeach;
            ?>
        </div>
    </main>
    <?php
endwhile;
get_footer();
