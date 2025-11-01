<?php

#================================#
#       TorrentTrader 3.8.3      #
#  http://torrenttrader.uk       #
#--------------------------------#
#       Created by M-Jay         #
#       Modified by MicroMonkey, #
#       Coco, Botanicar          #
#================================#



//Access control
if (php_sapi_name() !== 'cli' && !isset($_SERVER['HTTP_HOST'])) {
    http_response_code(403);
    exit('Access denied.');
}

//Filesize stuff. DO NOT CHANGE THIS SECTION
define('KB', 1024);
define('MB', 1024 * KB);
define('GB', 1024 * MB);

$site_config = [];
// File size limits
$site_config['image_max_filesize'] = 512 * KB;  // 512 kB (kilobytes). Change as you need
$site_config['avatar_max_filesize'] = 4 * MB;   // 1 MB (megabyte). Change as you need

// Version number and stuff
$site_config['ttversion'] = '3.8.3'; //DONT CHANGE THIS!

// CLOUDFLARE TURNSTILE RECAPTCHA
$site_config['CLOUDSITEKEY'] = ''; // Cloudflare turnstile captcha Sitekey
$site_config['CLOUDSECRET'] = ''; // Cloudflare turnstile captcha Secretkey

// NEW MEMEBER UPLOAD RATIO AND INVITES
$site_config['new_member_upload_ratio'] = 10 * GB; // change the 2 for whatever you want in GB upload
$site_config['new_member_invites'] = 1 ; // Every new user will get 0 invites to start with as a default. Change as you need

// UPLOAD AVATAR
$site_config['AVATARUPLOAD'] = true;      // Enable / Disable upload avatar
$site_config['avatar_dir'] = '/avatars';   // Dir where avatars are stored. chmod 777

$site_config['SITENAME'] = 'Torrent Trader v 3.8.3';					//Site Name
$site_config['SITEEMAIL'] = 'max@max.org';		//Emails will be sent from this address
$site_config['SITEURL'] = 'https://max.org';	//Main Site URL
$site_config['default_language'] = "1";						//DEFAULT LANGUAGE ID
$site_config['default_theme'] = "1";						//DEFAULT THEME ID
$site_config['CHARSET'] = "utf-8";						//Site Charset
$site_config['announce_list'] = "$site_config[SITEURL]/announce.php"; //seperate via comma
$site_config['MEMBERSONLY'] = true;							//MAKE MEMBERS SIGNUP
$site_config['MEMBERSONLY_WAIT'] = false;					//ENABLE WAIT TIMES FOR BAD RATIO
$site_config['ALLOWEXTERNAL'] = true;		//Enable Uploading of external tracked torrents
$site_config['UPLOADERSONLY'] = false;		//Limit uploading to uploader group only
$site_config['INVITEONLY'] = false;			//Only allow signups via invite
$site_config['ENABLEINVITES'] = false;		// Enable invites regardless of INVITEONLY setting
$site_config['CONFIRMEMAIL'] = false;		//Enable / Disable Signup confirmation email
$site_config['ACONFIRM'] = false;			//Enable / Disable ADMIN CONFIRM ACCOUNT SIGNUP
$site_config['ANONYMOUSUPLOAD'] = false;		//Enable / Disable anonymous uploads
$site_config['PASSKEYURL'] =  "$site_config[SITEURL]/announce.php?passkey=%s"; // Announce URL to use for passkey
$site_config['UPLOADSCRAPE'] = true; // Scrape external torrents on upload? If using mega-scrape.php you should disable this
$site_config['FORUMS'] = true; // Enable / Disable Forums
$site_config['FORUMS_GUESTREAD'] = false; // Allow / Disallow Guests To Read Forums
$site_config["OLD_CENSOR"] = false; // Use the old change to word censor set to true otherwise use the new one.   

$site_config['maxusers'] = 500; // Max # of enabled accounts
$site_config['maxusers_invites'] = $site_config['maxusers'] + 5000; // Max # of enabled accounts when inviting

$site_config['currency_symbol'] = '&euro;'; // Currency symbol (HTML allowed)

//AGENT BANS (MUST BE AGENT ID, USE FULL ID FOR SPECIFIC VERSIONS)
$site_config['BANNED_AGENTS'] = "-AZ21, -BC, LIME";

//PATHS, ENSURE THESE ARE CORRECT AND CHMOD TO 777 (ALSO ENSURE TORRENT_DIR/images is CHMOD 777)
$site_config['torrent_dir'] = getcwd().'/uploads';
$site_config['nfo_dir'] = getcwd().'/uploads';
$site_config['blocks_dir'] = getcwd().'/blocks';

// Allowed image types
$site_config['allowed_image_types'] = [
    "image/gif" => ".gif",    // GIF format
    "image/jpeg" => ".jpg",   // Standard JPEG format
    "image/png" => ".png",    // PNG format
    "image/webp" => ".webp"   // Modern WebP format
];

$site_config['SITE_ONLINE'] = true;									//Turn Site on/off
$site_config['OFFLINEMSG'] = 'Site is down for a little while';	

$site_config['WELCOMEPMON'] = true;			//Auto PM New members
$site_config['WELCOMEPMMSG'] = 'Thank you for registering at our tracker! Please remember to keep your ratio at 1.00 or greater :)';

$site_config['SITENOTICEON'] = true;
$site_config['SITENOTICE'] = "Welcome To TorrentTrader v{$site_config['ttversion']}";

$site_config['UPLOADRULES'] = 'You should also include a .nfo file wherever possible<br />Try to make sure your torrents are well-seeded for at least 24 hours<br />Do not re-release material that is still active';

//Setup Site Blocks
$site_config['LEFTNAV'] = true; //Left Column Enable/Disable
$site_config['RIGHTNAV'] = true; // Right Column Enable/Disable
$site_config['MIDDLENAV'] = true; // Middle Column Enable/Disable
$site_config['SHOUTBOX'] = true; //enable/disable shoutbox
$site_config['NEWSON'] = false;
$site_config['DONATEON'] = true;
$site_config['DISCLAIMERON'] = false;

// Class Colors
$site_config["CLASS_USER"] = 'true';                          // Enable class colors in catalog
$site_config['siteowner_color'] = 'coral';                    // Site Owner color
$site_config['administrator_color'] = 'red';                  // Administrator color
$site_config['super_moderator_color'] = '#009AFF';            // Super Moderator color
$site_config['moderator_color'] = 'pink';                     // Moderator color
$site_config['uploader_color'] = 'yellow';                    // Uploader color
$site_config['vip_color'] = 'dimgray';                        // VIP color
$site_config['power_user_color'] = 'brown';                   // Power User color
$site_config['user_color'] = 'green';                         // User color
$site_config['system_color'] = 'red';                         // System color

//WAIT TIME VARS
$site_config['WAIT_CLASS'] = '1,2';		//Classes wait time applies to, comma seperated
$site_config['GIGSA'] = '1';			//Minimum gigs
$site_config['RATIOA'] = '0.50';		//Minimum ratio
$site_config['WAITA'] = '24';			//If neither are met, wait time in hours

$site_config['GIGSB'] = '3';			//Minimum gigs
$site_config['RATIOB'] = '0.65';		//Minimum ratio
$site_config['WAITB'] = '12';			//If neither are met, wait time in hours

$site_config['GIGSC'] = '5';			//Minimum gigs
$site_config['RATIOC'] = '0.80';		//Minimum ratio
$site_config['WAITC'] = '6';			//If neither are met, wait time in hours

$site_config['GIGSD'] = '7';			//Minimum gigs
$site_config['RATIOD'] = '0.95';		//Minimum ratio
$site_config['WAITD'] = '2';			//If neither are met, wait time in hours

//CLEANUP AND ANNOUNCE SETTINGS
$site_config['PEERLIMIT'] = '10000';			//LIMIT NUMBER OF PEERS GIVEN IN EACH ANNOUNCE
$site_config['autoclean_interval'] = '600';		//Time between each auto cleanup (Seconds)
$site_config['LOGCLEAN'] = 28 * 86400;			// How often to delete old entries. (Default: 28 days)
$site_config['announce_interval'] = '900';		//Announce Interval (Seconds)
$site_config['signup_timeout'] = '259200';		//Time a user stays as pending before being deleted(Seconds)
$site_config['maxsiteusers'] = '10000';			//Maximum site members
$site_config['max_dead_torrent_time'] = '21600';//Time until torrents that are dead are set invisible (Seconds)

//AUTO RATIO WARNING
$site_config["ratiowarn_enable"] = false; //Enable/Disable auto ratio warning
$site_config["ratiowarn_minratio"] = 0.4; //Min Ratio
$site_config["ratiowarn_mingigs"] = 5;  //Min GB Downloaded
$site_config["ratiowarn_daystowarn"] = 14; //Days to ban

// category = Category Image/Name, name = Torrent Name, dl = Download Link, uploader, comments = # of comments, completed = times completed, size, seeders, leechers, health = seeder/leecher ratio, external, wait = Wait Time (if enabled), rating = Torrent Rating, added = Date Added, nfo = link to nfo (if exists)
$site_config["torrenttable_columns"] = "category,name,size,seeders,leechers,comments,external";
// size, speed, added = Date Added, tracker, completed = times completed
$site_config["torrenttable_expand"] = "";

// Caching settings
$site_config["cache_type"] = "disk"; // disk = Save cache to disk, memcache = Use memcache, apc = Use APC, xcache = Use XCache
$site_config["cache_memcache_host"] = "localhost"; // Host memcache is running on
$site_config["cache_memcache_port"] = 11211; // Port memcache is running on
$site_config['cache_dir'] = getcwd().'/cache'; // Cache dir (only used if type is "disk"). Must be CHMOD 777


// Mail settings
// php to use PHP's built-in mail function. or pear to use http://pear.php.net/Mail
// MUST use pear for SMTP
$site_config["mail_type"] = "php";
$site_config["mail_smtp_host"] = "localhost"; // SMTP server hostname
$site_config["mail_smtp_port"] = "25"; // SMTP server port
$site_config["mail_smtp_ssl"] = false; // true to use SSL
$site_config["mail_smtp_auth"] = false; // true to use auth for SMTP
$site_config["mail_smtp_user"] = ""; // SMTP username
$site_config["mail_smtp_pass"] = ""; // SMTP password

//Gmail settings
// $site_config["mail_type"] = "pear";
// $site_config["mail_smtp_host"] = "smtp.gmail.com"; // SMTP server hostname
// $site_config["mail_smtp_port"] = "465"; // SMTP server port
// $site_config["mail_smtp_ssl"] = true; // true to use SSL
// $site_config["mail_smtp_auth"] = true; // true to use auth for SMTP
// $site_config["mail_smtp_user"] = ""; // SMTP username/gmail address
// $site_config["mail_smtp_pass"] = ""; // SMTP password


// Password hashing - Once set, cannot be changed without all users needing to reset their passwords
$site_config["passhash_method"] = "sha1"; // Hashing method (sha1, md5 or hmac). Must use what your previous version of TT did or all users will need to reset their passwords
// Only used for hmac.
$site_config["passhash_algorithm"] = "sha1"; // See http://php.net/hash_algos for a list of supported algorithms.
$site_config["passhash_salt"] = "b0c1d2e3f4a5b6c7d8e9f0a1b2c3d4e5f6a7b8c9d0e1f2g3h4i5j6k7l8m9n0o1p2q3r4s5t6u7v8w9x0y1z2A3B4C5"; // Use a 64 character base64 string

// TODO: Password hashing - UPDATE ALL PASSWORD BULLSHIT IN THE REST OF THE CODE TO USE ARGON
//$site_config["passhash_method"] = "argon2"; // argon2. Modern hashing
