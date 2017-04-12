//
//  ViewController.swift
//  Chataroo
//
//  Created by Chase McElroy on 4/12/17.
//  Copyright © 2017 Chase McElroy. All rights reserved.
//

import UIKit

class CameraVC: AVCamCameraViewController {

    @IBOutlet weak var previewView: AVCamPreviewView!
    
    override func viewDidLoad() {
        self._previewView = previewView
        super.viewDidLoad()
    }

    @IBAction func recordBtnPressed(_ sender: Any) {
        toggleMovieRecording()
        print("pressed")
    }
    @IBAction func changeCameraBtnPressed(_ sender: Any) {
        changeCamera()
    }

}

