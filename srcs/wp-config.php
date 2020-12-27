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
define( 'DB_NAME', 'wp_DB' );

/** MySQL database username */
define( 'DB_USER', 'abelarif' );

/** MySQL database password */
define( 'DB_PASSWORD', 'abelarif' );

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
define( 'AUTH_KEY',         'Z$kU_sw];pS~/aqIByr}MMs=bkxVR@2RakOKyD/;9@FSAl@Z%R6QC=>ZnB$7T~$E' );
define( 'SECURE_AUTH_KEY',  'UQ,m);$8rozkX:W~t!herY$Q@j#b?:A2_:Cd}!JH~Qm,Mtqx7$Ca*J$F[qKyWM@s' );
define( 'LOGGED_IN_KEY',    '5Q XsV-*5YYJH0&tq<q*<fW#<)9_r_@rfgT<S(o%g$-9.SbD0Pz>A]!r%8Om76;o' );
define( 'NONCE_KEY',        '{vPQ *F}`xQ06wdf LI .vzD^oO=%;1lKH5gF/np@?nQ=F$ql89x5XO<hP->$`EC' );
define( 'AUTH_SALT',        '9Dri0=;O>tm,A^,2DUBE.S*|CGJ2W-}Gk|!cffFbo=i2Q,_<v_K0^m.x6M3FFt/r' );
define( 'SECURE_AUTH_SALT', 'UpEoHESUJ-D8d=S*W; T;!(!.d0h(!~W2I{^[xH-L;K|}$!cS(/IeZGZ(43ZI`u.' );
define( 'LOGGED_IN_SALT',   'n})[*wP%N(K&WsOJs:Fl0|Eic^TAtTKA1-jZ:>E#meQjK)=vvVX)I|tz!B.;!:IS' );
define( 'NONCE_SALT',       'Fj&7Ihoj?reO?yy,oH|J(9?I0A4 %dx5FX!fS&=J[1Ti0vct0A?Hfyk!&m2`!uu,' );

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
