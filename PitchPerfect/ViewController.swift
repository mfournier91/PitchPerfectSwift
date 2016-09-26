//
//  ViewController.swift
//  PitchPerfect
//
//  Created by General Assembly on 9/25/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: AnyObject) {
        print("Record button pressed")
        recordingLable.text = "Recording in Progress"
        stopRecordingButton.enabled = true
        recordButton.enabled = false
    }

    @IBAction func stopRecording(sender: AnyObject) {
        print("Recording stopped")
        recordButton.enabled = true
        stopRecordingButton.enabled = false
        recordingLable.text = "Tap to Record"
    }
    override func viewWillAppear(animated: Bool) {
        stopRecordingButton.enabled = false
    }
    @IBOutlet weak var recordButton: UIButton!
    
    @IBOutlet weak var stopRecordingButton: UIButton!
}

