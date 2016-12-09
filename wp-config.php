<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'ponta');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

define('WP_HOME','http://localhost/ponta/');
define('WP_SITEURL','http://localhost/ponta/');
/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'gUeS<VuW:oVE.E*>bZF}4f:XH^RW3u$Z GNwspLqLj2q/GA8Oz`8K{@J](M5[=.t');
define('SECURE_AUTH_KEY',  '{L`Wh2bzkMSc7ZABVmK^4`))szKSA877Ni>]cj8~xMh+YncuMdjJ<GH`lg:+g*=1');
define('LOGGED_IN_KEY',    '!?FOfwFBv=,|g~e9?kKPM.1yDsV=O&f!uV=yhc&[9@jm{V&`NyEj{_@K)Vr @C`C');
define('NONCE_KEY',        ' BPlF%wP0kJ:3N|4u=n-+OKP$eQiGK%oNi!RgQkHYcv X,U=8%;` ko&b|!g/[z?');
define('AUTH_SALT',        '@cv@mq]BhyUPRo1g7Y:w~m[>smOnyL$YMl&AKc!%=iS3&Xi5O^S6V2*3+|+l`d62');
define('SECURE_AUTH_SALT', 'U!3@:7hMS5273dZtRP}]; F_!.@19rAwrI:oT}mH|S>A}SpdP2[s[C7>MAKH6Cx0');
define('LOGGED_IN_SALT',   'Y&Mk|XJf83%)pLLgL]A40E_w-Zo4?@Ww%+B,Le5S,C|!,NxFzTOtp=S%teDY3d#y');
define('NONCE_SALT',       '*`p)[j.,?+pn%NM!u=6jbm^E%S? ^P-Mk&Z*kpz2.-sY-q]^Z8cvAb#(c!zC8x,a');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'ponta_at_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', true);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
