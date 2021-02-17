
//ios
//App
//lab05absolute
// storyboard
// UIKit App Delegate
// inside viewController.swift inside a class


class ViewController: UIViewController{

	override func viewDidLoad(){
	super.viewDidLoad()
	let fristFrame = CGRect(x: 160, y: 240, width: 100, height: 150)
	let firstView = UIview(frame: fristFrame)
	firstView.backgroundColor = UIColor.blue
	view.addSubview(firstView)
	
	let secondFrame = CGRect (x : 20 , y : 30 , width : 50 , height : 50)
	let secondView = UIView ( frame : secondFrame )
	secondView . backgroundColor = UIColor . green
	view.addSubview (secondView)

	
		}

	}


