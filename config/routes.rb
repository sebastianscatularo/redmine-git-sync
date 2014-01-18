# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get  'gitsync/sync', :to => 'gitsync#sync'
post 'gitsync/sync', :to => 'gitsync#sync'
