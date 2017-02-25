class FcmSender
    
    def self.sendMessage( to, message )
        
        fcm = FCM.new(ENV['FCM_KEY'])
            
        resp = fcm.send_with_notification_key("/topics/news",
            data: { msg: "#{message}"})
        
        puts resp
        return resp
    end
    
    def self.sendMessageToGroup( groupId, message )
        
        sendMessage( "/topics#{groupId}", message )
    end
    
    def self.sendMessageToOne( userId, message )
        
        sendMessage( userId, message)
    end
    
end
