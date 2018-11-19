
import UIKit

class TimeLabel: UILabel {
    
    var contentInsets: UIEdgeInsets!
    
    public override var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize
        return CGSize(width: size.width + contentInsets.left + contentInsets.right, height: size.height + contentInsets.top + contentInsets.bottom)
    }
    
    override func drawText(in rect: CGRect) {
        super.drawText(in: UIEdgeInsetsInsetRect(rect, contentInsets))
    }
    
}
