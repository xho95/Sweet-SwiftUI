//
//  TextView.swift
//  ViewConfiguration
//
//  Created by Min Ho Kim on 2022/06/10.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Font and Font Weight")
                .font(.title)
                .fontWeight(.black)
            
            Text("Font's foreground, and background")
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
            
            Text("Custom Font, Bold, Italic, Underline, Strikethrough")
                .font(.custom("Menlo", size: 16))
                .bold()
                .italic()
                .underline()
                .strikethrough()
            
            Text("Line limit and \n alignment. \n This text isn't visible.")
                .lineLimit(2)
                .multilineTextAlignment(.trailing)
                .fixedSize()
            
            Group {
                Text("Kerning and Baseline")
                    .kerning(4) +
                Text("can be ajusted.")
                    .baselineOffset(10)
            }
            .font(.system(size: 16))
        }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
