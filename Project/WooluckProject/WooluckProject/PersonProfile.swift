//
//  PersonProfile.swift
//  WooluckProject
//
//  Created by 우럭mac on 2021/11/24.
//

import SwiftUI

struct PersonProfile: View {
    
    @State var heartButton: Bool = false
    
    var body: some View {
        VStack {
            HStack (spacing: 10) {
                Image("rabbit_1")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .cornerRadius(30)
                    .shadow(color: .gray, radius: 10, x: 5, y: 5)
                Text("Woo Luck")
                    .bold()
                Spacer()
                Text("menu")
            } // H
            Rectangle()
                .frame(height:10)
                .foregroundColor(.clear)
            GeometryReader { geometry in
                VStack {
                    Image("rabbit_2")
                        .resizable()
    //                    .aspectRatio(contentMode: .fill)
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.height / 1.8)
                        .cornerRadius(30)
                    
                    HStack (spacing: 10){
                        
                        if heartButton {
                            Image(systemName: "suit.heart.fill")
                                .font(.system(size: 25))
                                .foregroundColor(.red)
                                .onTapGesture {
                            self.heartButton.toggle()
                        }
                        } else {
                        Image(systemName: "suit.heart")
                                .font(.system(size: 25))
                                .onTapGesture {
                            self.heartButton.toggle()
                        }
                        }
//                        Button  {
//                            print("heart_Button")
//                        } label: {
//
//                                .font(.system(size: 25))
//                        }

                        
                            
                        Image(systemName: "message")
                            .font(.system(size: 25))
                        Image(systemName: "paperplane")
                            .font(.system(size: 25))
                        Spacer()
                    }.padding(.top, 5)
                    
                    Text("Woo Luck 's Talk")
                        .fontWeight(.bold)
                    Text("n 44 ABY, an opportunity for Leurm to avenge himself arose when Tahiri Veila, the same Jedi responsible for his own incarceration, was herself subjected to confinement within the walls of the Armand Isard Correctional Facility for her own crimes during the recent civil war. The Hutt was enjoying a time of recess when Veila was mistakenly brought to the same exercise yard occupied by the majority of the prison's male population—Leurm included.")
                }
                }
                
        } // V
        .padding()
    }
}

struct PersonProfile_Previews: PreviewProvider {
    static var previews: some View {
        PersonProfile()
    }
}
