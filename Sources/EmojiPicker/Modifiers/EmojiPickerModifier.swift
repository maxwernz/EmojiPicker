import SwiftUI

struct EmojiPickerModifier: ViewModifier {
    
    // MARK: - Properties
    
    @Binding private var isDisplayed: Bool
    private let onEmojiSelected: (Emoji) -> Void
    
    // MARK: - Initializers
    
    init(
        isDisplayed: Binding<Bool>,
        onEmojiSelected: @escaping (Emoji) -> Void
    ) {
        _isDisplayed = isDisplayed
        self.onEmojiSelected = onEmojiSelected
    }
    
    // MARK: - Body
    
    public func body(content: Content) -> some View {
        ZStack {
            content
            if isDisplayed {
                EmojiPickerView(
                    isDisplayed: $isDisplayed,
                    onEmojiSelected: onEmojiSelected
                )
//                .transition(.move(edge: .bottom))
                .zIndex(1)
            }
        }
    }
}

