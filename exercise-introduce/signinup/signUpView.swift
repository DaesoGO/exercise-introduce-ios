//
//  signUpView.swift
//  exercise-introduce
//
//  Created by 손민 on 2022/09/29.
//

import SwiftUI

struct signUpView: View {
    @State var id: String = ""
    @State var nickname: String = ""
    @State var password: String = ""
    @State var password2: String = ""
    @State var age:String = ""
   
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image("idIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .padding(.bottom)
                    
                    TextField("ID를 입력하세요", text: $id)
                        .frame(width: 500, height: 20)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                }
                
                HStack {
                    Image(systemName: "person.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .padding(.bottom)
                    
                    TextField("닉네임을 입력하세요", text: $nickname)
                        .frame(width: 500, height: 20)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                }.padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 0))
                
                HStack {
                    Image(systemName: "lock")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .padding(.bottom)
                    
                    TextField("비밀번호를 입력하세요", text: $password)
                        .frame(width: 500, height: 20)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                }.padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 0))
                
                
                HStack {
                    Image(systemName: "lock.rotation")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .padding(.bottom)
                                    
                    TextField("비밀번호를 다시 입력하세요", text: $password2)
                        .frame(width: 500, height: 20)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                }.padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 0))
                
                HStack {
                    Image("ageIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .padding(.bottom)
                                    
                    TextField("나이를 입력하세요", text: $age)
                        .keyboardType(.decimalPad)
                        .frame(width: 500, height: 20)
                        .padding()
                        .background(Color(.systemGray6))
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                }.padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 0))
                HStack {
                    NavigationLink(destination: signUpGenderView(
                        id:$id,
                        nickname:$nickname,
                        password: $password,
                        password2: $password2,
                        age: $age
                    )) { Text("다음")
                            .font(.system(size: 30))
                            .foregroundColor(Color.white)
                            .background(Color.blue)
                            .cornerRadius(15)
                            .frame(width: 300, height: 60)
                            
                    }
                }
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct signUpView_Previews: PreviewProvider {
    static var previews: some View {
        signUpView()
            .previewDevice("iPad mini (6th generation)")
    }
}

