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
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'lGoeBSw9/QydXnIiUX2sCX3FnGBl6ikiM9MDqcIw4yBV+fK5Lw0w/+uTiL6GbjD6SGOufpjX+5lYLowLWv1/8w==');
define('SECURE_AUTH_KEY',  'Zj09Ublc2mQAezCiJgb3or2PZLq2zI5+YL5e/ye1Z2cZJBzQ54bOx9n+LlulN0aFmjPoVOo1Wda8uvEspY9p/w==');
define('LOGGED_IN_KEY',    '+FT/sjVtqJ9ivRK9pXCm2T6yj4UbUyCv3O92ndDTRrlqdH/YQ0MJbl4cQaRSCDEIguIgA0H+QZgJatkvXSSm6Q==');
define('NONCE_KEY',        '5PiaN2pCkKjopAyK1bS0JP+LYyJ3aZs6OOaVjPAPVvA3CR0caKjAHUNGTgeT8g32pbXC/DH9+sOJPufaWUJB9A==');
define('AUTH_SALT',        'X3xd6sUYd7QDfH64Zk7ZKdEKPn8qZcMOEWcCtbr3p+aH2G7JblMqu4v5jREMFxzUGLKRMTnljvBWURWkD+iPOw==');
define('SECURE_AUTH_SALT', 'P55V39KcLJwc3OwDqneIL90VYmRw8+PwomqlQeAjkBZAwvGCPZJWWOoHLMJVvdTHlwXibsaTsUhLnrgSuTTr7A==');
define('LOGGED_IN_SALT',   'v1EL7mk44NlLdaOdCAOw0/BdMAqNdlk9zaFB8NjjdWw+FLpEXRfwliCGjQfvrWJ7hiCzpTv7bTa5y+D9vlIfxw==');
define('NONCE_SALT',       'UaA7OCZ2JuJScFDo0NblfeZGiuKIIO1UhYzxMr0PbqnhJLAw+X7Wh3VnF4zMEepl5ORvsqwMyK9Hzy4uCFL2ww==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
