
import SwiftUI


// CUSTOM RATING SLIDER FOR DISCRETE VALUES
//
public struct RatingSlider : View {
    
    @Binding var selectedVote : Int
    var ratingToAvoid : Int
    var circleHighlighterColor : Color = .green
    @Namespace var circleHighlight
    
    public init(selectedVote : Binding<Int>, ratingToAvoid : Int, circleHighlighterColor : Color = .green) {
        self._selectedVote = selectedVote
        self.ratingToAvoid = ratingToAvoid
        self.circleHighlighterColor = circleHighlighterColor
    }
    
    public var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 100, style: .continuous)
                .fill(Color.gray.opacity(0.2))
                .frame(height : 26)
            
            HStack {
                
                Spacer()
                
                ForEach(1..<11) { id in
                    ZStack {
                        if selectedVote == id {
                            Circle()
                                .fill(circleHighlighterColor)
                                .frame(width: 32, height: 32)
                                .overlay(Circle().stroke(Color.white, style: StrokeStyle(lineWidth: 2)))
                                .matchedGeometryEffect(id: "tab", in: circleHighlight)
                            
                        }
                        Text("\(id)")
                            .foregroundColor( selectedVote == id ? .white : .black)
                            .font(.system(size: 10))
                            .fontWeight(selectedVote == id ? .bold : .regular)
                            // Handle Tap Gesture
                            .onTapGesture {
                                withAnimation(.easeOut) {
                                    if id != ratingToAvoid {
                                        selectedVote = id
                                    }
                                }
                            }
                    }
                    if id != 10 {
                        Spacer()
                    }
                }
                Spacer()
            }
            .padding()
        }
        .padding()
    }
}
