//
//  ViewController.swift
//  L4S_06_MentorBook
//
//  Created by 鍋島 由輝 on 2019/02/05.
//  Copyright © 2019 ValJapan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var mentorActivity: [Mentor] = []

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!

    //表示するメンターの番号
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        mentorActivity.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iPhone"))
        mentorActivity.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Unity"))
        mentorActivity.append(Mentor(name: "たいてぃ", imageName: "taithi.JPG", course: "WebS,WebD"))

        setUI();
    }

    func setUI() {
        imageView.image = mentorActivity[index].getImage()
        nameLabel.text = mentorActivity[index].name
        courseLabel.text = mentorActivity[index].course
    }

    @IBAction func mae() {
        index = index - 1
        setUI()
    }

    @IBAction func tsugi() {
        index = index + 1
        setUI()

    }

}

