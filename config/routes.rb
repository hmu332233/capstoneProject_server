Rails.application.routes.draw do

  #rekognition
  #collection
  post 'rekognition/collection' => 'rekognition#createCollection'
  delete 'rekognition/collection' => 'rekognition#deleteCollection'
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
