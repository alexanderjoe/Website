server '158.69.208.119', user: 'deploy', roles: %w{web app db}
set :stage, :production
set :branch, :master
set :deploy_to, '/var/www'
set :tmp_dir, '/tmp'

set :unicorn_rack_env, 'production'

namespace :deploy do
  # task :something_cool do
  #   on roles(:web) do
  #
  #   end
  # end

  after :published, 'deploy:daemons'
end
