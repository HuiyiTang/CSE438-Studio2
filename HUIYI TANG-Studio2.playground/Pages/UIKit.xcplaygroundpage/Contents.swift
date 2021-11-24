//: ## UIKit
//: Learning Swift is fun, but printing strings to the console isn't all that exciting. Real apps have user interfaces with buttons, text, images, colors, and animations. All of these features are built with the `UIKit` framework.
//:
//: In lab 1, you built a shopping calculator mostly with the storyboard, Xcode's visual layout tool. All elements created in the storyboard can be created and modified in code as well. In this page of the playground, we will be exploring various common user interface elements. If you get stuck, consult the UIKit documentation online or just guess and auto-complete your way to victory.
//:
//: Remember the `Quick Look` icon from the first page of this playground? It will actually render most UIKit elements, so you can see the effects of your code immidiately as you type it.
import UIKit
let sampleView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
sampleView.backgroundColor = UIColor.red
//: ### Core Graphics Basics
//: Create and initialize variables of type `CGPoint` and `CGSize`. Next, create a `CGRect` with the point and size you just created.
let View1 = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
//: ### Views
//: Create a `UIView` using the `CGRect` you created above, and set the background color of the view to blue. (Use the Quick Look and Show Result buttons to see your view!)
//:
//: ![view](view.png)
View1.backgroundColor = UIColor.blue
//: ### Subviews
//: Create another view of a different color and size, and add it as a subview to your first view. You should be able to see a colored square inside another colored square.
//:
//: ![subview](subview.png)
let View2 = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
View2.backgroundColor = UIColor.red
View1.addSubview(View2)
//: ### Colors
//: Create a `UIColor` by specifying your own custom RGB values. Try to create a magenta color. (If you are having trouble finding the right values for magenta, find an online color picker that gives RBG values.)
//:
//: ![color](color.png)
let View3 = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
View3.layer.cornerRadius = View3.frame.size.width/2
View3.clipsToBounds = true
View3.backgroundColor = UIColor.init(red: 128, green: 0, blue: 128, alpha: 1)
//: ### Labels
//: Create a `UILabel` and set its text to your name. Set the text color to the magenta color you previously created. Also center the text within its frame.
//:
//: ![label](label.png)
let View4 = UILabel(frame: CGRect(x: 0, y: 0, width: 80, height: 80))
View4.text = "Huiyi Tang"
View4.textColor = UIColor.init(red: 128, green: 0, blue: 128, alpha: 1)
View4.textAlignment = .center
//: ### Buttons
//: Create a `UIButton` and set its title to “Press Here” (for the normal control state). Round the corners of the button, and change the background color of the button to a color of your choice.
//:
//: ![button](button.png)
let View5 = UIButton(frame: CGRect(x: 0, y: 0, width: 120, height: 60))
View5.backgroundColor = UIColor.gray
View5.layer.cornerRadius = 30.0
View5.setTitle("Press Here", for: .normal)
//: ### Sliders
//: Create a `UISlider` and set the max value to 100 and the min value to -100. Change the color of the circle value indicator to red.
//:
//: ![slider](slider.png)
let View6 = UISlider(frame: CGRect(x: 0, y: 0, width: 120, height: 50))
View6.maximumValue = 100
View6.minimumValue = -100
View6.thumbTintColor = UIColor.red
//: ### Images
//: Create a `UIImage` from a url string. You can use a url from any image you find online. To do this, use the `data` initializer of the `UIImage` object, the `contentsOf` initializer of the `Data` object, and the `string` initializer of the `URL` object. Unwrap optionals as needed.
//:
//: ![image](image.png)
let imageUrlString = "https://preppykitchen.com/wp-content/uploads/2019/08/Pancakes-recipe-1200.jpg"
let imageUrl = URL(string: imageUrlString)!
let imageData = try! Data(contentsOf: imageUrl)
let View7 = UIImage(data: imageData)

//: ### Image Views
//: Create a `UIImageView` and set its image to the image you just created. Set the opacity (alpha) of the image view to 50%.
//:
//: ![imageview](imageview.png)
let View8 = UIImageView(frame: CGRect(x: 0, y: 0, width: 150, height: 150))
View8.image = View7
View8.alpha = 0.5
//: ### Subclassing UIKit Objects
//: Create a custom subclass of the `UIView` object. Make every instance of your subclass have a red background color and rounded corners. To do this, you will need to override an existing initializer or create your own and set the modified properties inside.
//:
//: ![subclass](subclass.png)
class redView : UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setupview() {
        backgroundColor = .red
        layer.cornerRadius = 10
    }
}

let View9 = redView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
//: ### Custom Layout Practice
//: Create the following image using what you’ve learned so far. Try to avoid hardcoding values and duplicating code.
//:
//: ![challenge](challenge.png)
let View10 = UIView(frame: CGRect(x: 185, y: 15, width: 50, height: 50))
View10.backgroundColor = UIColor.red

let View11 = UIView(frame: CGRect(x: 185, y: 15, width: 50, height: 50))
View11.backgroundColor = UIColor.orange

let View12 = UIView(frame: CGRect(x: 185, y: 15, width: 50, height: 50))
View12.backgroundColor = UIColor.yellow

let View13 = UIView(frame: CGRect(x: 185, y: 15, width: 50, height: 50))
View13.backgroundColor = UIColor.green

let View14 = UIView(frame: CGRect(x: 185, y: 15, width: 50, height: 50))
View14.backgroundColor = UIColor.blue

let View15 = UILabel(frame: CGRect(x: 15, y: 15, width: 150, height: 50))
View15.text = "Red"

let View16 = UILabel(frame: CGRect(x: 15, y: 15, width: 150, height: 50))
View16.text = "Orange"

let View17 = UILabel(frame: CGRect(x: 15, y: 15, width: 150, height: 50))
View17.text = "Yellow"

let View18 = UILabel(frame: CGRect(x: 15, y: 15, width: 150, height: 50))
View18.text = "Green"

let View19 = UILabel(frame: CGRect(x: 15, y: 15, width: 150, height: 50))
View19.text = "Blue"
    
let totalView1 = UIView(frame: CGRect(x: 15, y: 5, width: 250, height: 80))
totalView1.backgroundColor = UIColor.white
totalView1.addSubview(View15)
totalView1.addSubview(View10)

let totalView2 = UIView(frame: CGRect(x: 15, y: 90, width: 250, height: 80))
totalView2.backgroundColor = UIColor.white
totalView2.addSubview(View16)
totalView2.addSubview(View11)

let totalView3 = UIView(frame: CGRect(x: 15, y: 175, width: 250, height: 80))
totalView3.backgroundColor = UIColor.white
totalView3.addSubview(View17)
totalView3.addSubview(View12)

let totalView4 = UIView(frame: CGRect(x: 15, y: 260, width: 250, height: 80))
totalView4.backgroundColor = UIColor.white
totalView4.addSubview(View18)
totalView4.addSubview(View13)

let totalView5 = UIView(frame: CGRect(x: 15, y: 345, width: 250, height: 80))
totalView5.backgroundColor = UIColor.white
totalView5.addSubview(View19)
totalView5.addSubview(View14)

let totalView = UIView(frame: CGRect(x: 0, y: 0, width: 280, height: 430))
totalView.addSubview(totalView1)
totalView.addSubview(totalView2)
totalView.addSubview(totalView3)
totalView.addSubview(totalView4)
totalView.addSubview(totalView5)
//:
//: [Previous](@previous) | [Next](@next)
//:
//: [Welcome](Welcome) - [Variables](Variables) - [Collections](Collections) - [Control Flow](Control%20Flow) - [Optionals](Optionals) - [Functions](Functions) - [Objects](Objects) - [Enums](Enums) - [Closures](Closures) - [Protocols](Protocols) - [Errors](Errors) - [Extensions](Extensions) - UIKit
//: - - -
