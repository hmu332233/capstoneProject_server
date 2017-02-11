require 'net/http'
require 'uri'
require 'json'

class FCM
    
    def initialize
    end  
    
    def sendMessage(message)
        
        uri = URI.parse("https://fcm.googleapis.com/fcm/send")

        header = {'Content-Type': 'text/json','Authorization': ENV['FCM_KEY']}
        body =  {   data:{
                            message: 'test'
                    },
                    to:"/topics/news"
                }
        
        # Create the HTTP objects
        http = Net::HTTP.new(uri.host, uri.port)
        request = Net::HTTP::Post.new(uri.request_uri, header)
        request.body = body.to_json
        
        # Send the request
        response = http.request(request)

        return response
    end
    
end