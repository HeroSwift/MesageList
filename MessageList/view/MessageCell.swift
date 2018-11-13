

import UIKit

class MessageCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = false
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func create(configuration: MessageListConfiguration) {
        
    }
    
    func update(message: Message) {
        
    }
    
    func addClickHandler(view: UIView, selector: Selector) {
        
        view.isUserInteractionEnabled = true
        
        let gesture = UITapGestureRecognizer(target: self, action: selector)
        gesture.numberOfTapsRequired = 1
        
        view.addGestureRecognizer(gesture)
        
    }
    
    func addLongPressHandler(view: UIView, selector: Selector) {
        
        view.isUserInteractionEnabled = true
        
        let gesture = UILongPressGestureRecognizer(target: self, action: selector)
        gesture.numberOfTapsRequired = 1
        
        view.addGestureRecognizer(gesture)
        
    }
    
    @objc func onMessageClick() {
        
    }
    
    @objc func onUserNameClick() {
        
    }
    
    @objc func onUserAvatarClick() {
        
    }
    
    @objc func onContentClick() {
        
    }
    
    @objc func onContentLongPress() {
        
    }
    
}
