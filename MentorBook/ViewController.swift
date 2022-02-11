//
//  ViewController.swift
//  MentorBook
//
//  Created by Tomomi Hori on 2022/02/12.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArrey: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    var index: Int = 0

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        mentorArrey.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iPhone"))
        mentorArrey.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Unity"))
        mentorArrey.append(Mentor(name: "たいてぃ", imageName: "taithi.jpg", course: "webS,webD"))
        
        setUI()
        // Do any additional setup after loading the view.
    }
    
    func setUI(){
        
        imageView.image = mentorArrey[index].getImage()
        nameLabel.text = mentorArrey[index].name
        courseLabel.text = mentorArrey[index].course
        
    }
    
    @IBAction func previous(){
        
        if index >  0 {
            
            index = index - 1
            setUI()
            
        }
    }
    
    @IBAction func next(){
        
        if index < 2{
            
            index = index + 1
            setUI()
            
        }
    
    }


}

