//
//  signUpGenderView.swift
//  exercise-introduce
//
//  Created by 손민 on 2022/09/29.
//

import SwiftUI

struct signUpGenderView:View {
    @Binding var id: String
    @Binding var nickname: String
    @Binding var password: String
    @Binding var password2: String
    @Binding var age:String
    @State var iswoman = false
    @State var text = "Man"
    
    var body: some View {
        
        VStack{
            
            NavigationView {
                VStack {
                    Image(iswoman == false ? "manImage" : "womanImage")
                        .resizable()
                        .scaledToFit()
                    
                    Text(iswoman == false ? "Man" : "Woman")
                        .font(.system(size: 40))
                    
                    Toggle("", isOn: $iswoman)
                    .padding()
                    .background(iswoman == false ? .blue : .pink)
                    .cornerRadius(15)
                    .padding()
                    .frame(width: 300, height: 200)
                    
                    NavigationLink(destination: signUpInterestView(
                        id:$id,
                        nickname: $nickname,
                        password: $password,
                        password2: $password2,
                        age: $age,
                        iswoman: $iswoman
                    )) { Text("다음")
                            .font(.system(size: 30))
                            .foregroundColor(Color.white)
                            .background(iswoman == false ? .blue : .pink)
                            .cornerRadius(15)
                            .frame(width: 300, height: 60)
                            
                    }
                }.toggleStyle(SwitchToggleStyle(tint: Color.pink))
                
            }.navigationViewStyle(StackNavigationViewStyle())
                .navigationBarHidden(true)
        }
        
    }
}
