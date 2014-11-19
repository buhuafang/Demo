require 'sinatra'

get '/hello/:name' do
	# 匹配 "GET /hello/foo" 和 "GET /hello/bar"
	# params[:name] 的值是 'foo' 或者 'bar'
	"Hello #{params[:name]}!"
end