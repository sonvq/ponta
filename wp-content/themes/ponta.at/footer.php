<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Ponta.at
 */
?>

<footer>
    <div class="container">
        <div class="lineFooter"></div>
        <div class="clearfix">
            <div class="contactInfo">
                <a href="#"><i class="fa fa-twitter-square" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-facebook-square" aria-hidden="true"></i></a>
                <span>+43 664 8228888 | </span>
                <a href="mailto:info@ponta.at" target="_top">info@ponta.at</a>
            </div>

            <ul id="menu-test" class="menuFooter">
                <li id="menu-item-6" class="">
                    <a href="http://example.com/">Impressum</a>
                </li>
                <li id="menu-item-7" class=""><a href="http://example.com/demos/">Kontakt</a></li>
            </ul>
        </div>
    </div>
</footer>


<?php wp_footer(); ?>
<?php
if (is_front_page()):
    $str = "";
    if (have_rows('dynamic_text', PAGE_HOME)):
        while (have_rows('dynamic_text', PAGE_HOME)) : the_row();
            $str.= "'" . get_sub_field('text') . "',";
        endwhile;

    else :
        $str = "'leistungsfähig', 'leistungwillig', 'pragmatisch', 'commited',
    'strategisch', 'beweglich', 'kreativ', 'schnell', 'oho'";
    endif;
    ?>
    <script>
        var arrText = [
    <?php echo $str; ?>
        ];
        var dot = ['.', '..', '...'];
        let
        maxLeng = arrText.length
        let
        i = 0;
        let
        j = 0;
        setInterval(function () {
            if (j < 3) {
                jQuery(".dynamicText").html(dot[j])
                j++;
            } else if (i <= maxLeng) {
                jQuery(".dynamicText").html(arrText[i])
                i++;
            } else {
                jQuery('.collapseText').css('opacity', '1')
            }
        }, 500);

    </script>
    <?php
endif;
?>
</body>
</html>
