//
//  ContentView.swift
//  SwiftUI_menu_tutorial_#13
//
//  Created by 우럭mac on 2021/11/18.
//

import SwiftUI

let myPets = ["멍멍이🐶", "야옹이🐱", "찍찍이🐰"]

struct ContentView: View {
    
    @State private var shoudlShowAlert : Bool = false
    @State private var myText : String = ""
    @State private var selected : Int = 0
    
    var body: some View {
        NavigationView{
            VStack(spacing : 20) {
                Spacer()
                Text("\(myPets[selected])")
                    .font(.system(size: 60))
                    .bold()
                
                Text("우측 상단에 땡땡땡을 눌러주세요!")
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
                Spacer()
            }
                .padding()
                .navigationTitle("HI")
                .toolbar {
                    ToolbarItem(placement: .primaryAction) {
                        Menu { // 메뉴의 갯수
                            
                            Button {
                                print("빡코딩 버튼클릭!")
                                shoudlShowAlert = true
                                myText = "오늘도 빡코딩!"
                            } label: {
                                Label("오늘도 빡코딩!", systemImage: "flame.fill")
                            }
                            
                            Section {
                               
                                Button {
                                    print("쉬는 날 버튼클릭!")
                                    shoudlShowAlert = true
                                    myText = "오늘은 쉬는날!"
                                } label: {
                                    Label("오늘은 쉬는 날!", systemImage: "house.fill")
                                }

                            }
                            
                            Section {
                               
                                Button {
                                } label: {
                                    Label("새 파일 만들기!", systemImage: "doc")
                                }
                                
                                Button {
                                } label: {
                                    Label("새 폴더 만들기!", systemImage: "folder")
                                }
                            }
                            
                            Section {
                                Button{
                                    
                                } label: {
                                    Label("파일 모두 삭제", systemImage: "trash")
                                }
                            }
                            Picker(selection: $selected, label: Text("애완동물 선택")) {
                                ForEach(myPets.indices, id:\.self, content: {
                                    index in
                                    Text("\(myPets[index])").tag(index)
                                })
                            }
                         
                            
                        } label: { // 메뉴버튼 자체
                            Circle().foregroundColor(Color.purple)
                                .frame(width: 50, height: 50)
                                .overlay(
                                    Label ("더보기", systemImage: "ellipsis")
                                        .font(.system(size: 30))
                                        .foregroundColor(Color.white)
                                )
                             } // MENU

                    }
                } // toolbar
                .alert(isPresented: $shoudlShowAlert) {
                    Alert(title: Text("알림"), message: Text("\(myText)"), dismissButton: .default(Text("확인")))
                }
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
