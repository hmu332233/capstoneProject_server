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
  end

  # POST /rekognition/face
  def addFace
    
    collectionId = params[:collectionId]
    imageName = params[:imageName]
    imageId = params[:imageId]
    
    rekognitionHelper = RekognitionHelper.new
    rekognitionHelper.addFace(collectionId,imageName,imageId)
  end

  # DELETE /rekognition/face
  def deleteFace
    
    collectionId = params[:collectionId]
    imageId = params[:imageId]
    
    rekognitionHelper = RekognitionHelper.new
    rekognitionHelper.deleteFace(collectionId,imageId)
    
  end

  # GET /rekognition/search
  def searchFace
    
    collectionId = params[:collectionId]
    imageName = params[:imageName]
    
    rekognitionHelper = RekognitionHelper.new
    rekognitionHelper.searchFace( collectionId, imageName )
  
  end
  
end
