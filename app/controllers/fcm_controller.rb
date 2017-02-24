
class FcmController < ApplicationController
  
  def sendMessage
      fcm = FCM.new(ENV['FCM_KEY'])
        
      response = fcm.send_with_notification_key("/topics/news",
            data: {message: "테스트입니다 근데 왜케 늦게와?",title: "이건 타이틀이얌!"})
        
      puts response
  end
  
end

#fcm 기본틀 완성 첫번째 merge