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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'paradisesignature.com' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'wS$y!xSHppquV UC&evLCt,fP]]{!VU*^C^JB]MnYx6!FGb+*^PMY^M1CELdv80u' );
define( 'SECURE_AUTH_KEY',  'zOaM.56}Fp>9uJVDu6d!^3=aC/>n9oEJU1]#RRMI={N4@8QdqAP0ay^?;w[lO>)Q' );
define( 'LOGGED_IN_KEY',    '4*jOyE=;%rry[WS!kgnH!c[`eMO26(e<*uoXV%oYqD]OiS|@4:=WiNZH?yMpR&+*' );
define( 'NONCE_KEY',        'GPCx{97&=aWGL>~)FURQ;vO96[b;61Y$fn80}w:];Ddu,05MuG}9<Rt$)WfWuqgF' );
define( 'AUTH_SALT',        'pJCL!x%><w;tBEdj|@`z5ahb(g5G`VAf.Q-w6I`@zQ$6tZwF~dlmVqoSID?p;Af(' );
define( 'SECURE_AUTH_SALT', 'gfQIeAp mL?a&lLR+9heZxDEf>^=F?KYWe Yv{AnmjO1@?`vNxrR][Q,vnQBCt{a' );
define( 'LOGGED_IN_SALT',   'O8/=XwJl{If*:w+G`{(]xj=??r$#hO[gLdH&L&<0&zJeOoV/6Dch;]D{usu]*uC~' );
define( 'NONCE_SALT',       'B^+=eOs*laI*5o)XZ*EgeH,fR!2?39rDc-[GZW>)D>zqEu;]#WLn(O/I:Nvs-k,$' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
