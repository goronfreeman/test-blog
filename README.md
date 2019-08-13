# Setup Instructions

1. Install Ruby 2.6.3: `rvm install 2.6`
2. Install Postgresql: `brew install postgresql`
3. Start Postgres: `brew services start postgresql`
4. Create DB: `rails db:create`
5. Run migrations: `rails db:migrate`