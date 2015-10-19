configure :development do
	set :database, "sqlite3:database.sqlite3"
	set :show_exceptions, true
end

configure :production do
	ActiveRecord::Base.establish_connection("ENV['DATABASE_URL']")
	set :show_exceptions, true
end