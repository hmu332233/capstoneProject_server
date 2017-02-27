require 'FcmSender'

class FcmController < ApplicationController
  
  def sendMessage
    
    resp = FcmSender.sendMessageToGroup("0","쯔왑쯔왑")
  
    render json: {
      status: resp[:status_code],
      response: resp[:response]
    }.to_json
    
  end
  
  def sendMessageToGroup
    
    groupId = params[:id]
    #TODO : DB에서 id로 토픽을 뽑아 전송시키기
    FcmSender.sendMessageToGroup( groupId , "땡땡 님이 도착했습니다!")
    
  end
  
  def sendMessageToOne 
    
    privateId = params[:id]
    #TODO : DB에서 id로 개인코드를 뽑아 전송시키기
    
  end
  
  def sendMessageToBell
    message = params[:message]
  end
  
end

#fcm 기본틀 완성 첫번째 merge