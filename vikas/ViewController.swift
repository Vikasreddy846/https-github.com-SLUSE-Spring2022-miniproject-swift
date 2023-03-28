import UIKit


public class ViewController: UIViewController {

    public var coinToss: CoinToss?

    @IBOutlet var pole: UIView!

    override public func viewDidLoad() {
        super.viewDidLoad()

        coinToss = CoinToss()
        coinToss?.delegate = self
    }

  @IBAction func onButtonClick(_ sender: Any) {
        coinToss?.tossCoin()
    }
}

extension ViewController: CoinTossDelegate {
    public func didTossCoin(_ coinToss: CoinToss) {
        DispatchQueue.main.async {
            self.pole.text = coinToss.coin == .heads ? "HEADS" : "TAILS"
        }
    }
}


