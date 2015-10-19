configure :development do
	set :database, "sqlite3:database.sqlite3"
	set :show_exceptions, true
end

configure :production do
	ActiveRecord::Base.establish_connection('postgres://ENV['DB_USER']:ENV['DB_PASS']@ENV['DB_HOST']:5432/ENV['DB_NAME']')
	set :show_exceptions, true
end