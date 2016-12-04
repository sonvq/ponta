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
        'add_new_item' => _x( 'Add New Portfolio', 'ponta' ),
    );
    $args = array(
        'labels' => $labels,
        'hierarchical' => true,
        'description' => 'portfolio',
        'supports' => array( 'title', 'editor', 'excerpt', 'author', 'thumbnail', 'comments', 'revisions', 'custom-fields'),
        'show_ui' => true,
        'show_in_menu' => true,
        'menu_position' => 5,
        'menu_icon' => 'dashicons-building',
        'show_in_nav_menus' => true,
        'publicly_queryable' => true,
        'has_archive' => true,
        'query_var' => true,
        'can_export' => true,
        'rewrite' => true,
        'capability_type' => 'post'
    );
    register_post_type( 'portfolio', $args );
}
add_action( 'init', 'register_cpt_portfolio' );

add_action( 'init', 'create_portfolio_tax' );

function create_portfolio_tax() {
    // Add new taxonomy, make it hierarchical (like categories)
    $labels = array(
        'name'              => _x( 'Portfolio Category', 'ponta' ),
        'singular_name'     => _x( 'Portfolio Category', 'ponta' ),
        'search_items'      => __( 'Search Categories', 'ponta' ),
        'all_items'         => __( 'All Categories ', 'ponta' ),
        'parent_item'       => __( 'Parent Category', 'ponta' ),
        'parent_item_colon' => __( 'Parent Category:', 'ponta' ),
        'edit_item'         => __( 'Edit Category', 'ponta' ),
        'update_item'       => __( 'Update Category', 'ponta' ),
        'add_new_item'      => __( 'Add New Category', 'ponta' ),
        'new_item_name'     => __( 'New Category Name', 'ponta' ),
        'menu_name'         => __( 'Category', 'ponta' ),
    );

    $args = array(
        'hierarchical'      => true,
        'labels'            => $labels,
        'show_ui'           => true,
        'show_admin_column' => true,
        'query_var'         => true,
        'rewrite'           => array( 'slug' => 'portfolio_category' ),
        'show_in_nav_menus' => true,
        'publicly_queryable' => true,
        'exclude_from_search' => false,
        'has_archive' => true,
    );

    register_taxonomy( 'portfolio_category', array( 'portfolio' ), $args );
}