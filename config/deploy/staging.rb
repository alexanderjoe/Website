server '158.69.208.119', user: 'deploy', roles: %w{web app db}
set :stage, :staging
set :branch, :'staging-branch' # FIXME: Update to YOUR staging
set :deploy_to, '/var/www'
set :tmp_dir, '/tmp'

set :unicorn_rack_env, 'staging'

namespace :deploy do
  # task :something_cool do
  #   on roles(:web) do
  #
  #   end
  # end
end
