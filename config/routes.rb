Rails.application.routes.draw do
  
  #test
  get 'test/:test' => 'rekognition#test'

  #rekognition
  #collection
  post 'rekognition/collection/:collectionId' => 'rekognition#createCollection'
  delete 'rekognition/collection/:collectionId' => 'rekognition#deleteCollection'
  #face
  post 'rekognition/face' => 'rekognition#addFace'
  delete 'rekognition/face' => 'rekognition#deleteFace'
  #search
  get 'rekognition/search' => 'rekognition#searchFace'

  #FCM
  get 'fcm/send' => 'fcm#sendMessage'
  get 'fcm/group/:id' => 'fcm#sendMessageToGroup'
  get 'fcm/one/:id' => 'fcm#sendMessageToOne'
  get 'fcm/bell' => 'fcm#sendMessageToBell'


end
