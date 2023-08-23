//
//  ViewController.swift
//  Test1
//
//  Created by Huy Vu on 8/23/23.
//

import UIKit

class ViewController: UIViewController {
    
    var is_Audio_Converter: Bool = false
    var is_check_VideoCompress: Bool = false


    override func viewDidLoad() {
        super.viewDidLoad()
        
        if is_Audio_Converter && !is_check_VideoCompress {
            print("Audio converter is enabled. bool: \(is_Audio_Converter)")
            print("Rich")
        } else if !is_Audio_Converter && !is_check_VideoCompress {
            print("Audio converter is not enabled. bool: \(is_Audio_Converter)")
            print("Poor")
        } else {
            print("Rich and Poor")
        }
        
        navigationItem.hidesBackButton = true
    }
    
    
    
    static func makeSelf(withAlbumName is_Audio_Converter: Bool,is_check_VideoCompress: Bool) -> ViewController {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let All_filesViewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
      
        All_filesViewController.is_Audio_Converter = is_Audio_Converter
        All_filesViewController.is_check_VideoCompress = is_check_VideoCompress
        print(is_Audio_Converter)
        return All_filesViewController
    }
    
    

    @IBAction func back_home(_ sender: Any) {
        CATransaction.begin()
            CATransaction.setAnimationDuration(0.5) // Độ dài của animation có thể thay đổi

            let transition = CATransition()
            transition.type = CATransitionType(rawValue: "flip")
            transition.subtype = CATransitionSubtype.fromRight
            navigationController?.view.layer.add(transition, forKey: kCATransition)
            
            navigationController?.popViewController(animated: false) // Không sử dụng animated mặc định
            
            CATransaction.commit()
    }
}

