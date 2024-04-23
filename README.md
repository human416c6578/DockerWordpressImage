# Installation Steps

1. **Run the Docker Compose File**: 
   - Compose the `docker-compose.yml` file.

2. **Run WordPress Installation Script**: 
   - Execute `wordpress-install.sh`.

3. **Access WordPress Setup**: 
   - Open your web browser and navigate to `localhost` to complete the WordPress installation.

4. **Update WordPress Configuration File**: 
   - Add the following line to `/var/www/html/cfm/wp_config.php`:
     ```php
     define('FS_METHOD', 'direct');
     ```
- **Ip for database is** `db` **from inside docker.**

# Configuration Options

- **Modify Database Settings**:
  - Edit the `docker-compose.yml` file.
  - Locate the `mariadb` service.
  - Update the environment variables for MariaDB:
    - `MARIADB_USER`: `wordpress`
    - `MARIADB_PASSWORD`: `wordpress`
    - `MARIADB_DATABASE`: `wordpress`
    - `MYSQL_ROOT_PASSWORD`: `wordpress_pass`

- **Database init file**:
  - `mysql/init.sql` is run at the start of the container.

- **NGINX Settings**:
  - `nginx-conf` is located inside the nginx container at `/etc/nginx/conf.d`.
    There you can modify the sites configuration files.