source :rubygems

gemspec

gem 'travis-support',      :git => 'git://github.com/travis-ci/travis-support.git'

platform :mri do
  gem 'amq-client',    '>= 0.9.0'
  gem 'amqp',          '>= 0.9.0'
  gem 'pg',                '~> 0.11.0'
  gem 'silent-postgres',   '~> 0.1.1'
end

platform :jruby do
  gem 'jruby-openssl',     '~> 0.7.4'
  gem 'hot_bunnies',       '~> 1.3.3'
  gem 'activerecord-jdbcpostgresql-adapter', '1.2.0' # see https://github.com/bmabey/database_cleaner/pull/83
  gem 'activerecord-jdbc-adapter',           '1.2.0'
end

group :development do
  gem 'standalone_migrations', '~> 1.0.5'
end

group :test do
  gem 'rspec',             '~> 2.8.0'
  gem 'factory_girl',      '~> 2.3.2'
  # 0.7.1 has updated PG gem or something, breaks JRuby
  gem 'database_cleaner',  '= 0.7.0'
  gem 'mocha',             '~> 0.10.0'
  gem 'webmock',           '~> 1.7.7'
end
