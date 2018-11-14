

import UIKit

class MessageCell: UITableViewCell {
    
    private var ready = false
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(configuration: MessageListConfiguration, message: Message) {
        
        if !ready {
            ready = true
            selectionStyle = .none

            contentView.backgroundColor = .gray
            create(configuration: configuration)
        }
        
        update(configuration: configuration, message: message)
        
    }
    
    func create(configuration: MessageListConfiguration) {
        
    }
    
    func update(configuration: MessageListConfiguration, message: Message) {
        
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
        print("onMessageClick")
    }
    
    @objc func onUserNameClick() {
        print("onUserNameClick")
    }
    
    @objc func onUserAvatarClick() {
        print("onUserAvatarClick")
    }
    
    @objc func onContentClick() {
        print("onContentClick")
    }
    
    @objc func onContentLongPress() {
        print("onContentLongPress")
    }
    
}
