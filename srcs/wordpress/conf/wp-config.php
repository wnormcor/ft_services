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
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'admin' );

/** MySQL database password */
define( 'DB_PASSWORD', 'admin' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql:3306' );

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
define( 'AUTH_KEY',         'D5K1aNZYI16YIp5+kFJ{j(qQsd-F}LjndI_YdZ:*+P}P JQMHcJ#$w[>lGUuBJfc' );
define( 'SECURE_AUTH_KEY',  'eLM{rouQZ+WX:svbrbV],+)>SuywnjC>Qr,co?Gj{8LHjb_#/rV]@J1_YuJ{vxlQ' );
define( 'LOGGED_IN_KEY',    'O(HLN-?s*I8#)3yQn1Q5=M3*$G!is&K<0~RS_B$^dFp1(B}eEM-d*B9q!oH0/x2Z' );
define( 'NONCE_KEY',        'D=rXE<ZB|C>~#cu2|gE@H{QT:jz4.Es/GNLTM.j4[Jz6-;^BmQmm1unEKDd#0Y>%' );
define( 'AUTH_SALT',        '[yK;ZIG|2a&jzE;a;09/Vc{-KkLL{nJ]bm!?*4tw*[f#s3p(.Y5M-P/[OU+<C$o6' );
define( 'SECURE_AUTH_SALT', 'J(z`bnNp`<X^GZ*9rT7$_h4nt)<`}6m+!(?qHo>:.5*Ucx&c_MI2-[#K]w!.Gim$' );
define( 'LOGGED_IN_SALT',   'cAJl,NAQ2HI!G}Im[ayxf5,Zp:rqPpNC6y}Kk])kEYgF+%Toy=6H-,3}o]2K60>i' );
define( 'NONCE_SALT',       'w#1kC&`?NBD7{L>n0]x<3I}[7/WQ7iT6n2?-XAd|t2e/`[}]}ub@xV^`DcS{`)[b' );

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

