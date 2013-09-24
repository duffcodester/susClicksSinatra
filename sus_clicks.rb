require 'sinatra'

get '/' do 
  @title = 'Sus Clicks'
  erb :home, layout: false
end

post '/upload' do
  if params[:file]
    filename = params[:file][:filename]
    file = params[:file][:tempfile]

    File.open(File.join(Dir.pwd, filename), 'wb') do |f|
      f.write file.read
    end
  end  
end

