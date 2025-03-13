# URL Shortener

A simple and efficient URL shortener application built with Ruby on Rails and Tailwind CSS.

## Features
- Shorten long URLs
- Retrieve original URLs
- Responsive UI with Tailwind CSS

## Technologies Used
- **Backend:** Ruby on Rails
- **Database:** Sqlite3
- **Frontend:** Tailwind CSS

## Installation

### Prerequisites
- Ruby (>=3.0)
- Rails (>=7.x)

### Steps
1. Clone the repository:
   ```sh
   git clone https://github.com/charith0901/URL_SHORTNER.git
   cd URL_SHORTNER
   ```
2. Install dependencies:
   ```sh
   bundle install
   ```
3. Set up database:
   ```sh
   rails db:create db:migrate
   ```
4. Build Tailwindcss:
    ```sh
     rails tailwindcss:build
    ```
5. Run the application:
   ```sh
   rails server
   ```

## Usage
- Open `http://localhost:3000` in your browser.
- Use the provided input box to shorten URLs.

## Author
[Charith](https://github.com/charith0901)

