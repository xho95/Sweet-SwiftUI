//
//  Popup.swift
//  FruitMartMe
//
//  Created by Min Ho Kim on 2022/11/08.
//

import SwiftUI

enum PopupStyle {
    case none
    case blur
    case dimmed
}

fileprivate struct Popup<Message>: ViewModifier where Message: View {
    let size: CGSize?
    let style: PopupStyle
    let message: Message
    
    init(size: CGSize? = nil, style: PopupStyle = .none, message: Message) {
        self.size = size
        self.style = style
        self.message = message
    }
    
    func body(content: Content) -> some View {
        content
            .blur(radius: style == .blur ? 2 : 0)
            .overlay(
                Rectangle().fill(Color.black.opacity(style == .dimmed ? 0.4 : 0))
            )
            .overlay(popupContent)
    }
    
    private var popupContent: some View {
        GeometryReader { geometry in
            VStack {
                self.message
            }
            .frame(width: self.size?.width ?? geometry.size.width * 0.6, height: self.size?.height ?? geometry.size.height * 0.25)
            .background(Color.primary.colorInvert())
            .cornerRadius(12)
            .shadow(color: .primaryShadow, radius: 15, x: 5, y: 5)
            .overlay(self.checkCircleMark)
            .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
        }
    }
    
    private var checkCircleMark: some View {
        GeometryReader { geometry in
            Symbol("checkmark.circle.fill", color: .peach)
                .font(Font.system(size: 60).weight(.semibold))
                .background(Color.white.scaleEffect(0.5))
                .position(x: geometry.size.width / 2, y: 0)     // .offset(x: 0, y: -35)
        }
    }
}

fileprivate struct PopupToggle: ViewModifier {
    @Binding var isPresented: Bool
    
    func body(content: Content) -> some View {
        content
            .disabled(isPresented)
            .onTapGesture {
                self.isPresented.toggle()
            }
    }
}

fileprivate struct PopupItem<Item>: ViewModifier where Item: Identifiable {
    @Binding var item: Item?
    
    func body(content: Content) -> some View {
        content
            .disabled(item != nil)
            .onTapGesture {
                self.item = nil
            }
    }
}

extension View {
    func popup<Content> (isPresented: Binding<Bool>, size: CGSize? = nil, style: PopupStyle = .none,
                         @ViewBuilder content: () -> Content) -> some View
    where Content: View {
        if isPresented.wrappedValue {
            let popup = Popup(size: size, style: style, message: content())
            let popupToggle = PopupToggle(isPresented: isPresented)
            let modifiedContent = self.modifier(popup).modifier(popupToggle)
            
            return AnyView(modifiedContent)
        } else {
            return AnyView(self)
        }
    }
    
    func popup<Content, Item> (item: Binding<Item?>, size: CGSize? = nil, style: PopupStyle = .none,
                               @ViewBuilder content: (Item) -> Content) -> some View
    where Content: View, Item: Identifiable {
        if let selectedItem = item.wrappedValue {
            let content = content(selectedItem)
            let popup = Popup(size: size, style: style, message: content)
            let popupItem = PopupItem(item: item)
            let modifiedContent = self.modifier(popup).modifier(popupItem)
            
            return AnyView(modifiedContent)
        } else {
            return AnyView(self)
        }
    }
    
    func popupOverContext<Content, Item> (item: Binding<Item?>, size: CGSize? = nil, style: PopupStyle = .none, ignoringEdges edges: Edge.Set = .all,
                                          @ViewBuilder content: (Item) -> Content) -> some View
    where Content: View, Item: Identifiable {
        let isNonNil = item.wrappedValue != nil
        
        return ZStack {
            self
                .blur(radius: isNonNil && style == .blur ? 2 : 0)
            
            if isNonNil {
                Color.black
                    .luminanceToAlpha()
                    .popup(item: item, size: size, style: style, content: content)
                    .edgesIgnoringSafeArea(edges)
            }
        }
    }
}
