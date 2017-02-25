class RekognitionHelper
  
    def initialize
      
        credentials = Aws::Credentials.new(ENV['A_KEY'],ENV['S_KEY'])
        
        @client = Aws::Rekognition::Client.new(
          region: 'us-west-2',
          credentials: credentials
        )

    end
    
    def compareFaces
        
        resp = @client.compare_faces({
          source_image: {
            s3_object: {
              bucket: "jbnucapstone2", 
              name: "resource.jpg", 
            }, 
          }, 
          target_image: {
            s3_object: {
              bucket: "jbnucapstone2", 
              name: "target.jpg", 
            }, 
          }, 
        })
  
        return resp
    end
    
    def createCollection( collectionId )
      
        resp = @client.create_collection({
          collection_id: "#{collectionId}", 
        })
        
        
        puts resp.to_h
    end
    
    def deleteCollection( collectionId )
        
        resp = @client.delete_collection({
          collection_id: "#{collectionId}", 
        })

       puts resp.to_h
    end
    
    def addFace( collectionId ,imageName, imageId )
      
       resp = @client.index_faces({
          collection_id: "#{collectionId}", 
          detection_attributes: [
          ], 
          external_image_id: "#{imageId}", 
          image: {
            s3_object: {
              bucket: "jbnucapstone2", 
              name: "#{imageName}", 
            }, 
          }, 
        })
      
      puts resp.to_h
      
    end
    
    def searchFace( collectionId, imageName )
      
        resp = @client.search_faces_by_image({
          collection_id: "#{collectionId}", 
          face_match_threshold: 95, 
          image: {
            s3_object: {
              bucket: "jbnucapstone2", 
              name: "#{imageName}", 
            }, 
          }, 
          max_faces: 5, 
        })
      
        puts "test"
        resp.to_h[:face_matches].each do |a|
          puts a
        end
    end
    
    
    
end
    
        
    