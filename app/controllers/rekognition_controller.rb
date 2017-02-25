require 'RekognitionHelper'

class RekognitionController < ApplicationController
  
  # test
  def test
    test_val = params[:test]
    
     rekognitionHelper = RekognitionHelper.new
    # rekognitionHelper.createCollection( test_val )
     rekognitionHelper.deleteCollection( test_val )
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
  end

  # GET /rekognition/search
  def searchFace
  end
  
end
