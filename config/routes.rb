# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

get  'gitsync/sync', :to => 'gitsynchronize#sync'
post 'gitsync/sync', :to => 'gitsynchronize#sync'

get  'gitsync/sync/:repo', :to => 'gitsynchronize#repo'
post 'gitsync/sync/:repo', :to => 'gitsynchronize#repo'
