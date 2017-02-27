require 'RekognitionHelper'

class RekognitionController < ApplicationController
  
  # test
  def test
    test_val = params[:test]
    
     rekognitionHelper = RekognitionHelper.new
    # rekognitionHelper.createCollection( test_val )
    # rekognitionHelper.deleteCollection( test_val )
    # rekognitionHelper.addFace(test_val,params[:imageName],params[:imageId])
    # rekognitionHelper.searchFace( test_val, params[:imageName] )
    # redirect_to controller: 'rekognition', action: 'listFaces'
    
    collectionId = params[:collectionId]
    imageId = params[:imageId]
    
    rekognitionHelper = RekognitionHelper.new
    rekognitionHelper.deleteFace(test_val,imageId)
  end
  
  # GET /rekognition/collections
  def listCollections
    
    rekognitionHelper = RekognitionHelper.new
    collections = rekognitionHelper.listCollection
    
    
    render :json => collections
  end
  
  # POST /rekognition/collection
  def createCollection
    
    collectionId = params[:collectionId]
    
    rekognitionHelper = RekognitionHelper.new
    rekognitionHelper.createCollection( collectionId )
  end

  # DELETE /rekognition/collection
  def deleteCollection
    
    collectionId = params[:collectionId]
    
    rekognitionHelper = RekognitionHelper.new
    rekognitionHelper.deleteCollection( collectionId )
  end
  
  # GET /rekognition/faces
  def listFaces
    
    collectionId = params[:collectionId]
    
    rekognitionHelper = RekognitionHelper.new
    rekognitionHelper.listFaces( collectionId )
    
    #TODO : face DB 리턴
  end

  # POST /rekognition/face
  def addFace
    
    collectionId = params[:collectionId]
    imageName = params[:imageName]
    imageId = params[:imageId]
    
    rekognitionHelper = RekognitionHelper.new
    rekognitionHelper.addFace(collectionId,imageName,imageId)
    
    #TODO : face DB에 정보 저장 id, 한글명
    
  end

  # DELETE /rekognition/face
  def deleteFace
    
    collectionId = params[:collectionId]
    imageId = params[:imageId]
    
    rekognitionHelper = RekognitionHelper.new
    rekognitionHelper.deleteFace(collectionId,imageId)
    
    #TODO : face DB 정보 삭제
    
  end

  # GET /rekognition/search
  def searchFace
    
    collectionId = params[:collectionId]
    imageName = params[:imageName]
    
    rekognitionHelper = RekognitionHelper.new
    rekognitionHelper.searchFace( collectionId, imageName )
    
    #TODO : 검색된 id로 face DB 검색 결과 리턴
  
  end
  
end
