<?php
/**
 * The header for our theme.
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Ponta.at
 */

?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="profile" href="http://gmpg.org/xfn/11">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <?php wp_head(); ?>
    <style>
        <?php if(is_user_logged_in()){
            ?>
            .navbar.navbar-default {
                padding-top:32px;
            }

        <?php
        } ?>
    </style>
</head>

<body <?php body_class(); ?>>
<header>

    <!-- Fixed navbar -->
    <nav class="navbar navbar-default  navbar-fixed-top">
        <div class="container clearfix">
            <div class="navbar-header">
                <button class="navbar-toggle collapsed c-hamburger c-hamburger--htx"
                        data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"
                >
                    <span>toggle menu</span>
                </button>
                <a class="navbar-brand1 logo " href="home.html">
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" width="160" height="38" enable-background="new 0 0 1920 1085.79" xml:space="preserve"><rect id="backgroundrect" width="100%" height="100%" x="0" y="0" fill="none" stroke="none"/>

                        <g class="currentLayer"><title>Layer 1</title><g xmlns="http://www.w3.org/2000/svg" id="Logo_1_" class="">
                                <g id="svg_1">
                                    <path d="M22.00300143051146,12.12899872016908 c0,3.375 -0.999,6.178 -2.999,8.407 c-2,2.231 -4.668,3.346 -8.001,3.346 c-3.295,0 -5.9510000000000005,-1.102 -7.971,-3.299 c-2.021,-2.198 -3.032,-5.079 -3.032,-8.643 c0,-3.564 1.011,-6.441 3.032,-8.644 c2.02,-2.198 4.666,-3.2960000000000003 7.938,-3.2960000000000003 c3.333,0 6.006,1.104 8.018,3.313 C21.000001430511475,5.5229987201690705 22.00300143051146,8.459998720169068 22.00300143051146,12.12899872016908 zM10.971001430511478,2.5629987201690625 c-2.419,0 -4.367,0.8570000000000016 -5.846,2.5780000000000003 c-1.48,1.721 -2.218,3.984 -2.218,6.798 c0,2.8120000000000003 0.746000000000003,5.078 2.235,6.797 c1.489,1.7200000000000002 3.441,2.58 5.861,2.58 c2.415,0 4.369,-0.8540000000000006 5.86,-2.563 c1.489,-1.7080000000000002 2.235,-3.938 2.235,-6.689 c0,-2.875 -0.740000000000003,-5.18 -2.219,-6.907 C15.3980014305115,3.426998720169067 13.430001430511481,2.5629987201690625 10.971001430511478,2.5629987201690625 z" id="svg_2"/>
                                    <path d="M27.881001430511446,0.3749987201690743 v22.786 h-2.625 v-22.786 H27.881001430511446 z" id="svg_3"/>
                                    <path d="M34.75700143051148,0.3749987201690743 v3.282 h-2.625 v-3.282 H34.75700143051148 zM34.75700143051148,6.782998720169061 v16.378 h-2.5940000000000003 v-16.378 H34.75700143051148 z" id="svg_4"/>
                                    <path d="M45.915001430511495,23.16099872016906 h-2.845 l-5.75,-16.378 h2.9370000000000003 l4.376,13.284 l4.625,-13.284 h2.938 L45.915001430511495,23.16099872016906 z" id="svg_5"/>
                                    <path d="M57.32500143051146,0.3749987201690743 v3.282 h-2.6270000000000002 v-3.282 H57.32500143051146 zM57.32500143051146,6.782998720169061 v16.378 h-2.596 v-16.378 H57.32500143051146 z" id="svg_6"/>
                                    <path d="M61.60600143051147,11.629998720169056 c0.125,-3.543 2.313,-5.314 6.564,-5.314 c2.02,0 3.553,0.3780000000000015 4.595,1.139 c1.041,0.7600000000000033 1.5630000000000002,1.871 1.5630000000000002,3.331 v9.625 c0,0.8560000000000006 0.4690000000000003,1.2810000000000001 1.405,1.2810000000000001 c0.18800000000000044,0 0.3750000000000015,-0.0200000000000001 0.5630000000000006,-0.06300000000000022 v1.969 c-0.7300000000000006,0.18800000000000044 -1.323,0.2840000000000003 -1.7810000000000001,0.2840000000000003 c-0.8350000000000006,0 -1.464,-0.19300000000000092 -1.8920000000000003,-0.5810000000000006 c-0.4260000000000003,-0.3850000000000017 -0.6920000000000046,-0.994 -0.798,-1.827 c-1.749,1.604 -3.606,2.407 -5.563,2.407 c-1.6460000000000008,0 -2.9530000000000003,-0.4390000000000015 -3.922,-1.3130000000000002 c-0.9690000000000006,-0.877000000000003 -1.455,-2.053 -1.455,-3.533 c0,-0.4800000000000003 0.04800000000000011,-0.916 0.14100000000000001,-1.3130000000000002 c0.09400000000000072,-0.39600000000000196 0.2,-0.746000000000003 0.3140000000000015,-1.049 c0.11200000000000022,-0.3000000000000003 0.3180000000000015,-0.5820000000000006 0.609000000000003,-0.8430000000000006 c0.2920000000000003,-0.26 0.537,-0.4730000000000003 0.734000000000003,-0.6410000000000033 c0.19700000000000092,-0.16600000000000095 0.531,-0.3280000000000017 1,-0.4830000000000003 c0.4690000000000003,-0.15600000000000044 0.8270000000000006,-0.271 1.078,-0.3460000000000023 c0.251,-0.07100000000000002 0.689000000000004,-0.1590000000000008 1.314,-0.264 c0.624000000000003,-0.10500000000000002 1.08,-0.17900000000000021 1.373,-0.2210000000000008 c0.2910000000000003,-0.04100000000000011 0.8140000000000006,-0.11200000000000022 1.564,-0.21700000000000041 c1.021,-0.126 1.7280000000000002,-0.3240000000000017 2.125,-0.5950000000000006 c0.3950000000000019,-0.271 0.5940000000000006,-0.6760000000000039 0.5940000000000006,-1.218 v-0.6900000000000042 c0,-0.79 -0.3180000000000015,-1.3940000000000001 -0.9530000000000006,-1.8130000000000002 c-0.6360000000000033,-0.4140000000000003 -1.538,-0.624000000000003 -2.705,-0.624000000000003 c-1.208,0 -2.124,0.234 -2.749,0.7040000000000006 c-0.625000000000003,0.468 -0.994,1.202 -1.095,2.205 H61.60600143051147 zM66.82700143051147,21.597998720169077 c1.4380000000000002,0 2.614,-0.3800000000000015 3.531,-1.1400000000000001 c0.916,-0.7590000000000033 1.3760000000000001,-1.578 1.3760000000000001,-2.456 v-2.936 c-0.52,0.2470000000000004 -1.307,0.457 -2.36,0.624000000000003 c-1.053,0.167000000000001 -1.965,0.3140000000000015 -2.736,0.4390000000000015 c-0.77,0.12400000000000012 -1.469,0.4200000000000003 -2.095,0.8880000000000033 c-0.623000000000003,0.4710000000000003 -0.936,1.122 -0.936,1.955 c0,0.8340000000000006 0.2820000000000003,1.479 0.8440000000000006,1.9380000000000002 C65.01400143051148,21.36899872016906 65.80400143051145,21.597998720169077 66.82700143051147,21.597998720169077 z" id="svg_7"/>
                                    <path d="M84.01800143051145,23.16099872016906 h-4.6880000000000015 v-22.785 h10.065 c4.75,0 7.344,2.5 7.344,7.064 c0,4.625 -2.689,7.596 -6.876,7.596 h-5.845 V23.16099872016906 zM88.39300143051145,11.12699872016907 c2.5,0 3.6590000000000007,-1.093 3.6590000000000007,-3.407 c0,-2.3440000000000003 -1.158,-3.4370000000000003 -3.6590000000000007,-3.4370000000000003 h-4.375 v6.844 H88.39300143051145 z" id="svg_8"/>
                                    <path d="M114.33700143051146,15.065998720169066 c0,5.407 -3.22,8.815 -8.346,8.815 c-5.188,0 -8.346,-3.3770000000000002 -8.346,-8.94 c0,-5.533 3.158,-8.94 8.313,-8.94 C111.2420014305115,6.000998720169065 114.33700143051146,9.346998720169069 114.33700143051146,15.065998720169066 zM102.02200143051147,14.940998720169066 c0,3.218 1.592,5.407 3.9690000000000003,5.407 c2.3440000000000003,0 3.9699999999999998,-2.189 3.9699999999999998,-5.346 c0,-3.314 -1.564,-5.469 -3.9699999999999998,-5.469 C103.61400143051145,9.53399872016908 102.02200143051147,11.720998720169064 102.02200143051147,14.940998720169066 z" id="svg_9"/>
                                    <path d="M121.05700143051149,6.282998720169061 v2.438 c1.249,-1.8760000000000003 2.782,-2.72 5.063,-2.72 c3.5940000000000003,0 5.657,2.128 5.657,5.847 v11.313 h-4.377 v-10.409 c0,-2 -0.936,-3.031 -2.813,-3.031 c-2.125,0 -3.5300000000000002,1.3130000000000002 -3.5300000000000002,3.313 v10.127 h-4.374 v-16.878 H121.05700143051149 z" id="svg_10"/>
                                    <path d="M142.90500143051145,9.53399872016908 h-2.438 v9.187 c0,1.502 0.2820000000000003,1.8450000000000002 1.4380000000000002,1.8450000000000002 c0.3110000000000015,0 0.562,-0.031000000000000187 1,-0.09300000000000072 v3.064 c-0.782,0.24900000000000044 -1.5630000000000002,0.34400000000000197 -2.533,0.34400000000000197 c-2.875,0 -4.281,-1.3130000000000002 -4.281,-3.971 v-10.376 h-2.156 v-2.907 h2.156 v-4.532 h4.376 v4.532 h2.438 V9.53399872016908 z" id="svg_11"/>
                                    <path d="M144.46900143051147,18.815998720169066 c0,-3.031 1.625,-4.75 4.969,-5.313 l1.75,-0.3130000000000015 c1.439,-0.21700000000000041 3.502,-0.3130000000000015 3.502,-1.969 c0,-1.125 -0.8430000000000006,-1.6870000000000007 -2.534,-1.6870000000000007 c-2.1550000000000002,0 -2.875,0.5630000000000006 -3.093,2.313 h-4.22 c0.28,-3.91 2.656,-5.847 7.22,-5.847 c4.564,0 6.907,1.7510000000000003 6.907,5.189 v9.376 c0,0.877000000000003 0.21800000000000044,1.344 0.999,2.064 v0.53 h-4.75 c-0.406,-0.5 -0.5,-0.8130000000000006 -0.5,-1.6870000000000007 c-1.53,1.592 -3.25,2.407 -5.125,2.407 C146.53000143051145,23.881998720169065 144.46900143051147,21.847998720169073 144.46900143051147,18.815998720169066 zM154.69000143051153,15.189998720169058 c-0.501,0.251 -0.689000000000004,0.3140000000000015 -1.846,0.531 l-1.501,0.2840000000000003 c-1.8130000000000002,0.3750000000000015 -2.498,0.999 -2.498,2.313 c0,1.249 0.905,2.031 2.372,2.031 c2.22,0 3.473,-1.4380000000000002 3.473,-3.9690000000000003 V15.189998720169058 z" id="svg_12"/>
                                </g>
                                <g id="svg_13">
                                    <g id="svg_14">
                                        <path d="M8.500001430511475,38.08099872016908 h-1.202 l-1.9769999999999999,-7.053 l-1.92,7.053 h-1.2 L0.0000014305114744983527,29.498998720169055 h1.224 l1.6150000000000002,6.9670000000000005 l1.9060000000000001,-6.9670000000000005 h1.177 l1.9540000000000002,6.9670000000000005 l1.576,-6.9670000000000005 h1.226 L8.500001430511475,38.08099872016908 z" id="svg_15"/>
                                        <path d="M18.542001430511448,34.17399872016907 v2.942 h5.063 v0.9650000000000006 h-6.156 v-8.582 h5.944 v0.9670000000000006 h-4.851 v2.74 h4.674 v0.9680000000000006 H18.542001430511448 z" id="svg_16"/>
                                        <path d="M36.08100143051149,33.84299872016908 c0.252,0.10900000000000012 0.464,0.2400000000000002 0.6320000000000031,0.3870000000000017 c0.16800000000000104,0.15000000000000024 0.2900000000000003,0.3180000000000015 0.3620000000000003,0.508 c0.07600000000000012,0.18800000000000044 0.126,0.3640000000000003 0.15000000000000024,0.529 c0.023000000000000187,0.16400000000000092 0.03400000000000011,0.3620000000000003 0.03400000000000011,0.5870000000000006 c0,0.07200000000000002 -0.0020000000000000126,0.17200000000000001 -0.005000000000000028,0.3090000000000015 c-0.0030000000000000248,0.133 -0.005000000000000028,0.23 -0.005000000000000028,0.2940000000000003 c0,0.32000000000000167 0.035,0.5910000000000006 0.10500000000000002,0.811 c0.07100000000000002,0.2200000000000008 0.2070000000000002,0.39900000000000196 0.4130000000000003,0.541 v0.271 h-1.331 c-0.1580000000000008,-0.3610000000000003 -0.234,-0.8270000000000006 -0.234,-1.399 v-0.7670000000000033 c0,-0.526 -0.11400000000000043,-0.913 -0.34200000000000197,-1.161 c-0.22800000000000092,-0.2470000000000004 -0.5850000000000006,-0.3690000000000003 -1.073,-0.3690000000000003 h-2.823 v3.696 h-1.095 v-8.582 h3.955 c0.8400000000000006,0 1.486,0.19900000000000104 1.936,0.5930000000000006 c0.453,0.39800000000000196 0.6770000000000039,0.9630000000000006 0.6770000000000039,1.701 c0,0.4870000000000003 -0.10500000000000002,0.8930000000000033 -0.3180000000000015,1.214 C36.90700143051146,33.32899872016907 36.56100143051145,33.605998720169055 36.08100143051149,33.84299872016908 zM36.29300143051148,31.945998720169058 c0,-0.5640000000000006 -0.1460000000000002,-0.9520000000000006 -0.44500000000000167,-1.1640000000000001 c-0.2980000000000003,-0.21100000000000024 -0.7130000000000006,-0.3160000000000015 -1.238,-0.3160000000000015 h-2.6470000000000002 v2.9530000000000003 h2.6470000000000002 c0.5820000000000006,0 1.007,-0.11800000000000054 1.279,-0.3530000000000003 C36.159001430511466,32.82999872016907 36.29300143051148,32.456998720169054 36.29300143051148,31.945998720169058 z" id="svg_17"/>
                                        <path d="M51.139001430511485,35.631998720169065 c0,0.738000000000003 -0.23,1.33 -0.6930000000000046,1.778 c-0.464,0.4460000000000017 -1.076,0.6710000000000039 -1.84,0.6710000000000039 h-3.87 v-8.582 h3.485 c0.4780000000000003,0 0.8920000000000033,0.07 1.246,0.21100000000000024 c0.3530000000000003,0.14300000000000004 0.619000000000003,0.3280000000000017 0.796,0.559 c0.1770000000000002,0.232 0.3050000000000003,0.465 0.3820000000000016,0.6970000000000046 c0.08100000000000022,0.23 0.11800000000000054,0.468 0.11800000000000054,0.7120000000000006 c0,0.878000000000003 -0.39600000000000196,1.502 -1.189,1.868 c0.551,0.2140000000000004 0.9470000000000006,0.4860000000000003 1.197,0.8130000000000006 C51.01700143051147,34.68999872016906 51.139001430511485,35.113998720169064 51.139001430511485,35.631998720169065 zM49.66800143051148,31.828998720169068 c0,-0.91 -0.5730000000000006,-1.363 -1.719,-1.363 h-2.119 v2.728 h2.119 C49.09600143051148,33.19399872016908 49.66800143051148,32.738998720169064 49.66800143051148,31.828998720169068 zM48.50100143051145,37.115998720169074 c0.3860000000000017,0 0.7000000000000006,-0.08400000000000046 0.9430000000000006,-0.255 c0.24400000000000024,-0.167000000000001 0.404,-0.3550000000000003 0.4840000000000003,-0.558 c0.07800000000000012,-0.20400000000000001 0.1160000000000005,-0.4240000000000003 0.1160000000000005,-0.6580000000000037 c0,-0.4490000000000017 -0.134,-0.808 -0.402,-1.079 c-0.266,-0.271 -0.6460000000000033,-0.4070000000000003 -1.142,-0.4070000000000003 h-2.67 v2.957 H48.50100143051145 z" id="svg_18"/>
                                        <path d="M59.3450014305115,34.17399872016907 v2.942 h5.063 v0.9650000000000006 h-6.156 v-8.582 h5.946 v0.9670000000000006 h-4.853 v2.74 h4.676 v0.9680000000000006 H59.3450014305115 z" id="svg_19"/>
                                        <path d="M75.80500143051148,35.500998720169065 h-3.308 l-0.909,2.58 h-1.1640000000000001 l3.06,-8.582 h1.411 l3.017,8.582 h-1.226 L75.80500143051148,35.500998720169065 zM75.49500143051148,34.58299872016906 l-1.318,-3.907 l-1.411,3.907 H75.49500143051148 z" id="svg_20"/>
                                        <path d="M84.75000143051147,33.81899872016908 c0,0.2990000000000003 0.02600000000000016,0.5980000000000006 0.08200000000000043,0.9 c0.05400000000000033,0.3020000000000003 0.15400000000000041,0.617000000000003 0.2960000000000003,0.9480000000000006 c0.14,0.3290000000000017 0.3240000000000017,0.618000000000003 0.547,0.864000000000003 c0.22200000000000084,0.24800000000000041 0.518,0.45 0.8880000000000033,0.613000000000003 c0.3690000000000003,0.16000000000000086 0.789,0.2400000000000002 1.26,0.2400000000000002 c0.785,0 1.4300000000000002,-0.2470000000000004 1.9380000000000002,-0.743000000000003 c0.505,-0.4920000000000003 0.7580000000000032,-1.122 0.7580000000000032,-1.8940000000000001 v-0.234 h-2.612 v-0.9690000000000006 h3.5780000000000003 v4.582 h-0.6950000000000046 l-0.271,-1.141 c-0.8160000000000006,0.909 -1.7930000000000001,1.363 -2.93,1.363 c-1.163,0 -2.108,-0.4130000000000003 -2.838,-1.245 c-0.7290000000000006,-0.8330000000000006 -1.095,-1.908 -1.095,-3.228 c0,-0.3750000000000015 0.035,-0.753000000000003 0.10500000000000002,-1.134 c0.07100000000000002,-0.3810000000000015 0.20500000000000004,-0.779 0.402,-1.197 c0.19500000000000092,-0.4140000000000003 0.4410000000000015,-0.78 0.737000000000003,-1.094 c0.2920000000000003,-0.3140000000000015 0.6900000000000042,-0.5750000000000006 1.187,-0.784 c0.4990000000000015,-0.2070000000000002 1.062,-0.3100000000000015 1.6880000000000006,-0.3100000000000015 c0.98,0 1.788,0.2390000000000002 2.4210000000000003,0.7170000000000006 s1.021,1.154 1.172,2.026 h-1.12 c-0.1160000000000005,-0.549 -0.39800000000000196,-0.983 -0.8400000000000006,-1.303 c-0.4460000000000017,-0.31900000000000156 -0.993,-0.4760000000000003 -1.6440000000000001,-0.4760000000000003 c-0.91,0 -1.6400000000000001,0.32000000000000167 -2.191,0.9600000000000006 C85.02400143051148,31.92099872016908 84.75000143051147,32.76799872016906 84.75000143051147,33.81899872016908 z" id="svg_21"/>
                                        <path d="M99.98500143051149,34.17399872016907 v2.942 h5.062 v0.9650000000000006 h-6.156 v-8.582 h5.943 v0.9670000000000006 h-4.849 v2.74 h4.673 v0.9680000000000006 H99.98500143051149 z" id="svg_22"/>
                                        <path d="M118.82000143051147,29.498998720169055 v8.582 h-1.234 l-4.44,-6.958 v6.958 h-1.036 v-8.582 h1.191 l4.485,7.018 v-7.018 H118.82000143051147 z" id="svg_23"/>
                                        <path d="M129.4150014305115,30.46599872016907 v7.615 h-1.096 v-7.615 h-2.824 v-0.9670000000000006 h6.734 v0.9670000000000006 H129.4150014305115 z" id="svg_24"/>
                                        <path d="M144.4730014305115,29.498998720169055 h1.097 v6.027 c0,0.863000000000003 -0.3020000000000003,1.55 -0.902,2.06 c-0.6000000000000006,0.511 -1.401,0.7630000000000033 -2.407,0.7630000000000033 c-1.02,0 -1.824,-0.25 -2.409,-0.7580000000000032 c-0.5840000000000006,-0.505 -0.875000000000003,-1.196 -0.875000000000003,-2.065 v-6.027 h1.093 v6.027 c0,0.620000000000003 0.19900000000000104,1.086 0.5950000000000006,1.395 c0.39700000000000196,0.3090000000000015 0.929,0.465 1.596,0.465 c0.6900000000000042,0 1.231,-0.16500000000000092 1.624,-0.4960000000000015 c0.3920000000000017,-0.3260000000000017 0.5890000000000006,-0.782 0.5890000000000006,-1.363 V29.498998720169055 z" id="svg_25"/>
                                        <path d="M158.31500143051153,33.84299872016908 c0.254,0.10900000000000012 0.462,0.2400000000000002 0.6320000000000031,0.3870000000000017 c0.16800000000000104,0.15000000000000024 0.2880000000000003,0.3180000000000015 0.3630000000000003,0.508 c0.07600000000000012,0.18800000000000044 0.12300000000000012,0.3640000000000003 0.14800000000000021,0.529 c0.0240000000000001,0.16400000000000092 0.035,0.3620000000000003 0.035,0.5870000000000006 c0,0.07200000000000002 -0.0020000000000000126,0.17200000000000001 -0.005000000000000028,0.3090000000000015 c-0.006000000000000053,0.133 -0.006000000000000053,0.23 -0.006000000000000053,0.2940000000000003 c0,0.32000000000000167 0.035,0.5910000000000006 0.10500000000000002,0.811 c0.07100000000000002,0.2200000000000008 0.2070000000000002,0.39900000000000196 0.4110000000000003,0.541 v0.271 h-1.3290000000000002 c-0.1590000000000008,-0.3610000000000003 -0.23700000000000004,-0.8270000000000006 -0.23700000000000004,-1.399 v-0.7670000000000033 c0,-0.526 -0.11300000000000042,-0.913 -0.34000000000000197,-1.161 c-0.22700000000000092,-0.2470000000000004 -0.5850000000000006,-0.3690000000000003 -1.072,-0.3690000000000003 h-2.826 v3.696 h-1.094 v-8.582 h3.956 c0.8410000000000006,0 1.486,0.19900000000000104 1.937,0.5930000000000006 c0.451,0.39800000000000196 0.6760000000000039,0.9630000000000006 0.6760000000000039,1.701 c0,0.4870000000000003 -0.10700000000000012,0.8930000000000033 -0.3180000000000015,1.214 C159.14000143051146,33.32899872016907 158.79600143051152,33.605998720169055 158.31500143051153,33.84299872016908 zM158.53100143051142,31.945998720169058 c0,-0.5640000000000006 -0.1520000000000004,-0.9520000000000006 -0.4490000000000017,-1.1640000000000001 c-0.2980000000000003,-0.21100000000000024 -0.7100000000000006,-0.3160000000000015 -1.237,-0.3160000000000015 h-2.649 v2.9530000000000003 h2.649 c0.5820000000000006,0 1.007,-0.11800000000000054 1.279,-0.3530000000000003 C158.39200143051153,32.82999872016907 158.53100143051142,32.456998720169054 158.53100143051142,31.945998720169058 z" id="svg_26"/>
                                    </g>
                                </g>
                            </g></g></svg>
                </a>
            </div>
            <div id="navbar" class="mainMenu navbar-collapse collapse">
                <ul id="menu-test" class="menu">
                    <li id="menu-item-6" class="">
                        <a href="agentur.html">AGENTUR</a>
                    </li>
                    <li id="menu-item-7" class="">
                        <a href="warwirtun.html">WAS WIR TUN</a></li>
                    <li id="menu-item-8" class="current_page_item">
                        <a href="kontakt.html">KONTAKT</a></li>
                </ul>
                <div class="pull-right wrapLang">
                    <a href="">EN</a>/
                    <a href="">DE</a>
                </div>
            </div><!--/.nav-collapse -->

        </div>
    </nav>
</header>