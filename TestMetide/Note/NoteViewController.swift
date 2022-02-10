//
//  NoteViewController.swift
//  TestMetide
//
//  Created by Marco di Fresco on 09/02/22.
//

import UIKit

class NoteViewController: UIViewController {
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var countryName: UILabel!
    @IBOutlet weak var textView: UITextView!
    
  
    var placeholder = "Insert here your note..."
    var country: CountryTemp?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countryName.text = country?.name
        self.textView.returnKeyType = .done
        self.textView.text = placeholder
        if let code2l = country?.code2l {
            let userDafault = UserDefaults.standard
            self.textView.text = userDafault.string(forKey: code2l)
        }
        self.textView.delegate = self
        //self.backButton.addTarget(self, action: #selector(buttonAction), for: UIControl.Event.touchUpInside)
    }
    
    @IBAction func buttonAction(sender: UIButton!) {
        self.backButton = sender
        self.navigationController?.popViewController(animated: true)
    }
}


extension NoteViewController: UITextViewDelegate{
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if(text == "\n") {
            if let code2l = country?.code2l {
                let userDefault = UserDefaults.standard
                userDefault.set(self.textView.text, forKey: code2l)
            }
            textView.resignFirstResponder()
            return false
        }
        return true
    }
}
