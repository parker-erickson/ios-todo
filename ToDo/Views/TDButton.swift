//
//  TDButton.swift
//  ToDo
//
//  Created by Parker on 9/27/23.
//

import SwiftUI

struct TDButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
        .padding()
    }
}

struct TDButton_Previews: PreviewProvider {
    static var previews: some View {
        TDButton(title: "button", background: Color.blue) {
            
        }
    }
}
