# require dependencies
Bundler.require :web
Bundler.require :development if development?

# serve static content
set :public_folder, File.dirname(__FILE__) + '/public'

# our basic route which renders the index view
get '/' do
  @envVariables = ENV.sort
  @headers = env.inject({}){|acc, (k,v)| acc[$1.downcase] = v if k =~ /^http_(.*)/i; acc}.sort
  @params = params.sort
  haml :index
end

# our not-found route which serves the 404 view
not_found do
  haml :'404'
end
