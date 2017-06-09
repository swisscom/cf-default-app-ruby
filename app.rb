require 'sinatra'

# our basic route which renders the index view
get '/' do
  @env_variables = ENV.sort
  @req_headers = env.inject({}){|acc, (k,v)| acc[$1.downcase] = v if k =~ /^http_(.*)/i; acc}.sort
  @req_params = params.sort
  erb :index
end

# serve static content
set :public_folder, File.dirname(__FILE__) + '/public'
