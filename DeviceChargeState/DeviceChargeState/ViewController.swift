//
//  ViewController.swift
//  DeviceChargeState
//
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        label.frame = view.frame
        UIDevice.current.isBatteryMonitoringEnabled = true
        super.viewDidLoad()
        if UIDevice.current.batteryState == .unplugged {
            label.text = "The Device is Unplugged and the battery is \(Int(UIDevice.current.batteryLevel * 100))% \n and the Name is \(UIDevice.current.name). Also your version is \(UIDevice.current.systemVersion)"
        }
        if UIDevice.current.batteryState == .charging {
            label.text = "The Device is Charging and the battery is \(Int(UIDevice.current.batteryLevel * 100))% \n and the Name is \(UIDevice.current.name). Also your version is \(UIDevice.current.systemVersion)"
        }
        if UIDevice.current.batteryState == .full {
            label.text = "The Device is Full and the battery is \(Int(UIDevice.current.batteryLevel * 100))% \n and the Name is \(UIDevice.current.name). Also your version is \(UIDevice.current.systemVersion)"
        }
        if UIDevice.current.batteryState == .unknown {
            label.text = "The Device is Unknown and the battery is \(Int(UIDevice.current.batteryLevel * 100))% \n  and the Name is \(UIDevice.current.name). Also your version is \(UIDevice.current.systemVersion)"
        }
        view.addSubview(label)
    }

    private var label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()

}

