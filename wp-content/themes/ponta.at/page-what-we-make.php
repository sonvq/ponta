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
            $childTaxs = get_terms('portfolio_category', array('parent' => 2,));

            foreach ($taxs as $tax):
                ?>
                <div>
                    <h3><?php echo $tax->name ?></h3>
                    <p class="font16">
                        <?php
                        $childTaxs = get_terms('portfolio_category', array('parent' => $tax->term_id, 'hide_empty' => 0));
                        if (count($childTaxs) > 0) {
                        foreach ($childTaxs as $childTax):?>
                            <a href="<?php echo get_term_link($childTax) ?>" class="underline red">
                                <?php echo $childTax->name ?>
                            </a>
                        <?php endforeach;
                        } else {
                            echo '---';

                        } ?>
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
