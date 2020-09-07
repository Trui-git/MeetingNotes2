import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var textView: UITextView!
    
   var detailItem: String? {
       didSet {
           configureView()
       }
   }
   
   func configureView() {
       //if let label = textLabel {
       if let view = textView {
           //label.text = detailItem
           view.text = detailItem
       
           textView.translatesAutoresizingMaskIntoConstraints = true
           textView.sizeToFit()
           textView.isScrollEnabled = false
           //label.numberOfLines = 0
           //label.font = UIFont(name: "Courier", size: 14)
           //label.backgroundColor = UIColor.yellow
           //label.preferredMaxLayoutWidth  = 300
           //label.lineBreakMode = NSLineBreakMode.byWordWrapping
       }
   }
    
   override func viewDidLoad() {
          super.viewDidLoad()
          configureView()
          
          //textView = UITextView()
          //textView.sizeThatFits(CGSize(width: textView.frame.size.width, height: textView.frame.size.height))
          /*
          NotificationCenter.default.addObserver(self, selector:
          #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
          NotificationCenter.default.addObserver(self, selector:
          #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
          let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action:
          #selector(self.dismissKeyboard))
          view.addGestureRecognizer(tap)
          */
      }
    
    
}
