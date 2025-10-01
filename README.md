# My Laravel App

## Requirements
- PHP 8.1+
- Composer
- Node.js + npm
- MySQL

## Setup
1. Clone project
2. `composer install`
3. `npm install && npm run build`
4. Copy `.env.example` σε `.env` και ρύθμισε DB στοιχεία
5. Make a new database with name `phpdev`
6. Make the migration to build the tables and fill them with data `php artisan migration --seed`
6. `php artisan key:generate`
7. `php artisan serve`
