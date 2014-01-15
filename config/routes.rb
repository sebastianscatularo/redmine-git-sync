# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get  'bitbucketsync/sync', :to => 'bitbucketsync#sync'
post 'bitbucketsync/sync', :to => 'bitbucketsync#sync'
