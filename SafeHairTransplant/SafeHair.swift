//
//  SafeHair.swift
//  SafeHairTransplant
//
//  Created by Niharika Sharma on 2017-08-05.
//  Copyright © 2017 Niharika Sharma. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireImage

class SafeHair {

    private var _image : UIImage!
    
    init(image : UIImage){
        self._image = image
    }
    
    
    func downloadPokemonDetails(){
        let url : String = "http://hairtransplantpatiala.com/apis/home.php"
        Alamofire.request( URL(string: "url")!, method: .get,
                           parameters: ["include_docs": "true"])
            .validate()
            .responseJSON { (response) -> Void in
                
                let result = response.result
                if let dict = result.value as? Dictionary<String, AnyObject> {
                    if let weight = dict["image1"] as? String{
                     //   self.image = weight
                    }
                   print ("hi")
                }
        }
        Alamofire.request("http://www.hairtransplantpatiala.com/wp-content/themes/safe/images/appslide1.jpg").responseImage { response in
            debugPrint(response)
            
            print(response.request!)
            print(response.response!)
            debugPrint(response.result)
            
            if self._image == response.result.value {
                print("image downloaded: \(self._image)")
            }
        }
    }



}

