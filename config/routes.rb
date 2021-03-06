Rails.application.routes.draw do
  
  #test
  get 'test/:test' => 'rekognition#test'

  #rekognition
  #collection
  get 'rekognition/collections' => 'rekognition#listCollections'
  post 'rekognition/collection' => 'rekognition#createCollection'
  delete 'rekognition/collection' => 'rekognition#deleteCollection'
  #face
  get 'rekognition/faces' => 'rekognition#listFaces'
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
