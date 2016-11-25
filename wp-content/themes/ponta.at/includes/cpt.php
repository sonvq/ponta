<?php
/**
 * Created by PhpStorm.
 * User: dean
 * Date: 11/24/16
 * Time: 4:52 PM
 */

function register_cpt_portfolio() {
    $labels = array(
        'name' => _x( 'Portfolio', 'ponta' ),
        'singular_name' => _x( 'Portfolio', 'ponta' ),
        'menu_name' => _x( 'Portfolio', 'ponta' ),
    );
    $args = array(
        'labels' => $labels,
        'hierarchical' => true,
        'description' => 'portfolio',
        'supports' => array( 'title', 'author', 'custom-fields' ),
        'public' => false,
        'show_ui' => true,
        'show_in_menu' => true,
        'menu_position' => 5,
        'menu_icon' => 'dashicons-building',
        'show_in_nav_menus' => true,
        'publicly_queryable' => true,
        'exclude_from_search' => true,
        'has_archive' => true,
        'query_var' => true,
        'can_export' => true,
        'rewrite' => true,
        'capability_type' => 'post',
        'capabilities' => array(
            'create_posts' => 'do_not_allow',
        ),
        'map_meta_cap' => false,
    );
    register_post_type( 'portfolio', $args );
}
add_action( 'init', 'register_cpt_portfolio' );