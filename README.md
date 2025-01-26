# Fancy Index

This is a fork of the [glen-cheney/fancy-index](https://github.com/glen-cheney/fancy-index) with modifications to allow automated setups.
Refer to the original [README](https://github.com/glen-cheney/fancy-index/blob/main/README.md)

## Setup

1. Clone or download the files to your directory (in this example clone under /var/www/foo)
2. Go to the `fancy-index` dir and execute the script `./setup.sh /foo`, this will setup all the paths required and copy the `.htaccess` file in the `/var/www/foo` dir

This is example conf for the site `/foo`:
```apache
Alias /foo "/var/www/foo"

<Directory "/var/www/foo">
    AllowOverride All
    Options Indexes MultiViews FollowSymLinks
    Require all granted
</Directory>

```

Now reload apache `sudo systemctl reload apache2` (or for Red hat based distro `sudo systemctl reload httpd`).


## Customizing hidden files and directories

If you want to hide some files or directories, for example the `fancy-index` directory, there is a `IndexIgnore` directive in `.htaccess` file.

1. Edit `.htaccess` file in root directory.
2. Look for the "IGNORE THESE FILES" section.
3. Update the `IndexIgnore` directive with the path of files and directories to hide, separated by spaces.
	* For example: `IndexIgnore .ftpquota .DS_Store .git /fancy-index`
4. Save the changes.
5. Reload the index page.
