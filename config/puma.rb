threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }.to_i
threads threads_count, threads_count
port        ENV.fetch("PORT") { 3000 }
environment ENV.fetch("RAILS_ENV") { "development" }
workers ENV.fetch("WEB_CONCURRENCY") { 0 }
preload_app!

on_worker_boot do
  ApplicationRecord.establish_connection if defined?(ActiveRecord)
end

plugin :tmp_restart
