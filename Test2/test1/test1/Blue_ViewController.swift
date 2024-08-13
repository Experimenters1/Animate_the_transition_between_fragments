//
//  Blue_ViewController.swift
//  test1
//
//  Created by Huy vu on 13/8/24.
//

import UIKit

class Blue_ViewController: UIViewController {
    
    var is_Audio_Converter: Bool = false
    var is_check_VideoCompress: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("is_Audio_Converter : " ,is_Audio_Converter)
        print("is_check_VideoCompress : ",is_check_VideoCompress)
    }
    
    static func makeSelf(withAlbumName is_Audio_Converter:Bool,is_check_VideoCompress: Bool) -> Blue_ViewController{
        let storybroad: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let All_filesViewController = storybroad.instantiateViewController(withIdentifier: "Blue_ViewController") as! Blue_ViewController
        
        All_filesViewController.is_Audio_Converter = is_Audio_Converter
        All_filesViewController.is_check_VideoCompress = is_check_VideoCompress
        return All_filesViewController
    }
    
    @IBAction func Back(_ sender: Any) {
        print("test huy")
        self.navigationController?.popViewController(animated: true)
        //Điều này sẽ pop view controller hiện tại ra khỏi ngăn xếp và quay lại view controller trước đó.

    }
    
    
    
}
