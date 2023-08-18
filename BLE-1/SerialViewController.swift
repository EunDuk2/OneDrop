import UIKit

class SerialViewController: UIViewController, BluetoothSerialDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
                // 해당 뷰가 가장 먼저 로드되기 때문에 여기서 serial을 초기화합니다.
        // BluetoothSerial.swift 파일에 있는 Bluetooth Serial인 serial을 초기화합니다.
        serial = BluetoothSerial.init()
    }
    
    // scan 버튼이 클릭되면 호출되는 메서드입니다.
    @IBAction func scanButton(_ sender: Any) {
        // 세그웨이를 호출하여 Scan 뷰를 로드합니다.
        performSegue(withIdentifier: "ScanViewController", sender: nil)
    }
}
