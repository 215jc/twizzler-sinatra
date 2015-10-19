configure :development do
	set :database, "sqlite3:database.sqlite3"
	set :show_exceptions, true
end

configure :production do
	#ActiveRecord::Base.establish_connection('postgres://ENV['DB_USER']:ENV['DB_PASS']@ENV['DB_HOST']:5432/ENV['DB_NAME']')
	ActiveRecord::Base.establish_connection('postgres://fnkzpuquliqbsf:OIy1CKg74Vl8pJhgUuhKw9l5On@ec2-54-204-15-48.compute-1.amazonaws.com:5432/ddd4prcrti1lul')
	set :show_exceptions, true
end
configure :production do
	ActiveRecord::Base.establish_connection('postgres://ENV['DB_USER']:ENV['DB_PASS']@ENV['DB_HOST']:5432/ENV['DB_NAME']')
	set :show_exceptions, true
end