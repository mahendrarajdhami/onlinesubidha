<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'db_onlinesubidha');

/** MySQL database username */
define('DB_USER', 'mi_developers');

/** MySQL database password */
define('DB_PASSWORD', 'mi_developers');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'L=UG<~>rr&%f:|xx4_[)ROt]oe<w?O)?$:!r(634}<H1d}0WQ[| hFB XxoX8A=<');
define('SECURE_AUTH_KEY',  '[:3FGqC)z)p~j][Z(Ne}X}q9|Upv=#gw{MY2Xi@^b6UkqO-Tgkr%EDQzNO_hNthH');
define('LOGGED_IN_KEY',    '_kiGWg9u)2,]y@[b}tZ&uUT.a]qYq&v-IjnPRnfDi0Dy/>v5;tM@Xf1>EUB]$XRX');
define('NONCE_KEY',        'qmO8DRyZC-DdpCTMU{ev%YD{88zq)k,oh >J,a`J0$~.OW#8>B%4NKx`{]{/u&@2');
define('AUTH_SALT',        'Rs#:65A^s#+<vH7=e7cNh?CD}=6#2vVL_uM%:V7Dp[SwXYlKB#-b^C?r:x@x6P*x');
define('SECURE_AUTH_SALT', 'Bz6A~Ct/MlDu:g}csmV;^oLrZW3Aj5M:^ATm3;t2*9kZ)5K+~c1Gqa3$9cdQ|Z!f');
define('LOGGED_IN_SALT',   'J0{a!L^@+ASd|27~r67kfq{w%f(.Q%G}XU:{pnoYA3^-E>gm{57wH[Z!S4*E_q|Q');
define('NONCE_SALT',       '(4``QrQ*]gX`I+:V&cz>;(oJ,RIP8dwP3[|X&_?#!&o-M1 ajH~);Oqf<;-fQPQ`');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_onlinesubidha_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
