

import UIKit

class MessageCell: UITableViewCell {
    
    var isReady = false
    
    var message: Message!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func bind(configuration: MessageListConfiguration, message: Message) {
        
        self.message = message
        
        if !isReady {
            isReady = true
            selectionStyle = .none
            backgroundColor = .clear
            create(configuration: configuration)
        }
        
        update(configuration: configuration)
        
    }
    
    func create(configuration: MessageListConfiguration) {
        
    }
    
    func update(configuration: MessageListConfiguration) {
        
    }
    
    func getContentMaxWidth(configuration: MessageListConfiguration) -> CGFloat {
        
        let screenWidth = UIScreen.main.bounds.size.width
        
        return screenWidth - 2 * (configuration.messagePaddingHorizontal + configuration.userAvatarWidth) - configuration.leftUserNameMarginLeft - configuration.rightUserNameMarginRight
        
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
    
    @objc func onFailureClick() {
        print("onFailureClick")
    }
    
}
