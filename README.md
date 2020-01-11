## Installation

Please check the official laravel installation guide for server requirements before you start. [Laravel Documentation](https://laravel.com/docs/6.x)

Clone the repository
```bash
git clone https://github.com/najdovski/minicrm.git
```

Now swtich to the repository folder
```bash
cd minicrm
```

Install all the dependencies using composer
```bash
composer install
```

Copy the example env file and make the required configuration changes in the .env file
```bash
cp .env.example .env
```

Generate a new application key
```bash
php artisan key:generate
```

Set the database connection and the application name as "miniCRM" in the .env file

You can run the migrations
```bash
php artisan migrate
```
and seed the admin credentials,
```bash
php artisan db:seed
```
or you could just import the DB backup (filename "minicrm.sql").
I recommend importing the .sql file, because it contains the admin credentials (admin@admin.com:password), 15 companies and 55 employees.

Start the local development server
```bash
php artisan serve
```