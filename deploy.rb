set :user, "albumexposure"
set :application, "api.albumexposure.com"
set :repository,  "ssh://#{user}@yourelevation.com/home/albumexposure/git/#{application}.git"

set :deploy_to, "/home/albumexposure/api.albumexposure.com"
set :deploy_via, :export

set :scm, :git
set :shared_children, []
set :use_sudo, false

role :web, "yourelevation.com"
role :app, "yourelevation.com"

namespace :deploy do
  task :update do
    transaction do
      update_code
      build_code
      symlink
    end
  end
 
  task :build_code, :except => { :no_release => true } do
    run "cd #{latest_release} && /usr/bin/middleman build"
  end
end

