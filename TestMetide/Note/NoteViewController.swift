//
//  NoteViewController.swift
//  TestMetide
//
//  Created by Marco di Fresco on 09/02/22.
//

import UIKit

class NoteViewController: UIViewController {
    
    @IBOutlet weak var countryName: UILabel!
    @IBOutlet weak var note: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    //var code2l: String?
    var country: CountryTemp?
    override func viewDidLoad() {
        super.viewDidLoad()
        countryName.text = country?.name
        if let code2l = country?.code2l {
            let userDafault = UserDefaults.standard
            self.note.text = userDafault.string(forKey: code2l)
            print("text input="+userDafault.string(forKey: code2l)!)
        }
        textView.delegate = self
    }
    
}


extension NoteViewController: UITextViewDelegate{
    //NON TESTATO
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
            if(text == "\n") {
                textView.resignFirstResponder()
                return false
            }
            return true
        }
}
