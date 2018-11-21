

import UIKit

class MessageCell: UITableViewCell {
    
    var isReady = false
    
    var configuration: MessageListConfiguration!
    var delegate: MessageListDelegate!
    var message: Message!
    
    var topConstraint: NSLayoutConstraint!
    var bottomConstraint: NSLayoutConstraint!
    
    var count = 0
    
    var index = -1 {
        didSet {
            
            var topValue: CGFloat = 0
            var bottomValue: CGFloat = 0
            
            if index == 0 {
                topValue = configuration.paddingVertical
            }
            else {
                topValue = configuration.messageMarginTop
            }
            if index == count - 1 {
                bottomValue = -configuration.paddingVertical
            }
            
            if topConstraint.constant != topValue || bottomConstraint.constant != bottomValue {
                topConstraint.constant = topValue
                bottomConstraint.constant = bottomValue
                setNeedsLayout()
            }
            
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func bind(configuration: MessageListConfiguration, delegate: MessageListDelegate, message: Message, index: Int, count: Int) {
        
        self.message = message
        
        if !isReady {
            
            isReady = true
            
            self.configuration = configuration
            self.delegate = delegate
            
            selectionStyle = .none
            backgroundColor = .clear
            
            create()
            
        }
        
        self.count = count
        self.index = index
        
        update()
        
    }
    
    func create() {
        
    }
    
    func update() {
        
    }
    
    func updateImageSize(width: Int, height: Int, widthConstraint: NSLayoutConstraint, heightConstraint: NSLayoutConstraint) {
        
        var imageWidth = CGFloat(width)
        var imageHeight = CGFloat(height)
        let imageRatio = imageWidth / imageHeight
        
        // 简单限制下最大和最小尺寸
        // 剩下的外部自由发挥
        let maxWidth = getContentMaxWidth()

        if imageWidth > maxWidth {
            imageWidth = maxWidth
            imageHeight = imageWidth / imageRatio
        }
        
        if imageHeight < configuration.userAvatarHeight {
            imageHeight = configuration.userAvatarHeight
            imageWidth = imageHeight * imageRatio
        }
        
        widthConstraint.constant = imageWidth
        heightConstraint.constant = imageHeight
        
        setNeedsLayout()
        
        
    }
    
    func showTimeView(timeView: UILabel, time: String, avatarView: UIView, avatarTopConstraint: NSLayoutConstraint) {
        
        let oldValue = timeView.text != ""
        let newValue = time != ""
        
        timeView.text = time
        timeView.sizeToFit()

        if newValue != oldValue {
            if newValue {
                avatarTopConstraint.constant = configuration.messageMarginTop
            }
            else {
                avatarTopConstraint.constant = 0
            }
            setNeedsLayout()
        }
        
    }
    
    func showStatusView(spinnerView: UIActivityIndicatorView, failureView: UIView) {
        
        if message.status == .sendIng {
            spinnerView.startAnimating()
        }
        else {
            spinnerView.stopAnimating()
        }
        
        failureView.isHidden = message.status != .sendFailure
        
    }
    
    func getContentMaxWidth() -> CGFloat {
        
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
        delegate.messageListDidClickMessage(message: message)
    }
    
    @objc func onUserNameClick() {
        delegate.messageListDidClickUserName(message: message)
    }
    
    @objc func onUserAvatarClick() {
        delegate.messageListDidClickUserAvatar(message: message)
    }
    
    @objc func onContentClick() {
        delegate.messageListDidClickContent(message: message)
    }
    
    @objc func onContentLongPress() {
        delegate.messageListDidLongPressContent(message: message)
    }
    
    @objc func onFailureClick() {
        delegate.messageListDidClickFailure(message: message)
    }
    
}
