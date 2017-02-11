require 'FCM'

class FcmController < ApplicationController
  
  def sendMessage
    
    fcm = FCM.new
    
    fcm.sendMessage("test")
    
  end
  
end
