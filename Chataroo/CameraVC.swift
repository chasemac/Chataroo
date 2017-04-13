//
//  ViewController.swift
//  Chataroo
//
//  Created by Chase McElroy on 4/12/17.
//  Copyright © 2017 Chase McElroy. All rights reserved.
//

import UIKit
import FirebaseAuth

class CameraVC: AVCamCameraViewController, AAPLCameraVCDelegate {
    @IBOutlet weak var cameraBtn: UIButton!
    @IBOutlet weak var recordBtn: UIButton!

    @IBOutlet weak var previewView: AVCamPreviewView!
    
    override func viewDidLoad() {
        delegate = self
        self._previewView = previewView
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        guard FIRAuth.auth()?.currentUser != nil else {
            // load login VC
            performSegue(withIdentifier: "loginVC", sender: nil)
            return
        }
    }

    @IBAction func recordBtnPressed(_ sender: Any) {
        toggleMovieRecording()
        print("pressed")
    }
    @IBAction func changeCameraBtnPressed(_ sender: Any) {
        changeCamera()
    }
    
    func shouldEnableCameraUI(_ enable: Bool) {
        cameraBtn.isEnabled = enable
        print("should enable camera ui: \(enable)")
    }
    
    func shouldEnableRecordUI(_ enable: Bool) {
        recordBtn.isEnabled = enable
        print("should enable record ui: \(enable)")
    }
    
    func recordingHasStarted() {
        print("recording has started")
    }
    
    func canStartRecording() {
        print("can start recording")
    }

}

