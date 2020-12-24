# CustomRatingSlider
Custom Rating Slider in SwiftUI

![RatingSlider](https://user-images.githubusercontent.com/24572733/103080822-aa874900-45fc-11eb-9ef8-5aeeca82cfd7.png)

![rating-slider](https://user-images.githubusercontent.com/24572733/103082192-8d07ae80-45ff-11eb-8c35-adc59199ab38.gif)
# Features

- Select Discrete Values for the rating
- Customise the Slider Highlighter
- Prevent selection of any value from 1 to 10

# How to use

- Install the package: Goto Xcode > File > SwiftPackage > Add Package Dependency > SelectTarget > Enter this git repo url
- Simply call the CustomRatingSlider view and pass an integer @State value(1 ... 10) 

```swift
import CustomRatingSlider
import SwiftUI

struct ContentView: View {
    @State var selectedRating = 4
    
    var body: some View {
        RatingSlider(selectedVote: $selectedRating, ratingToAvoid: 5)
    }
}
```
