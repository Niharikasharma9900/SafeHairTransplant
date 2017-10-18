//
//  ViewController.swift
//  SafeHairTransplant
//
//  Created by Niharika Sharma on 2017-08-05.
//  Copyright © 2017 Niharika Sharma. All rights reserved.
//

import UIKit
import AlamofireImage
import Alamofire

class ViewController: UIViewController {

    var safehair : SafeHair!
    var myImage : UIImage!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      // safehair.downloadPokemonDetails()
        Alamofire.request("http://www.hairtransplantpatiala.com/wp-content/themes/safe/images/appslide1.jpg").responseImage { response in
            debugPrint(response)
            
            print(response.request)
            print(response.response)
            debugPrint(response.result)
            
            if let image = response.result.value {
                print("image downloaded: \(image)")
            }
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
