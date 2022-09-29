//
//  signUpInterestView.swift
//  exercise-introduce
//
//  Created by 손민 on 2022/09/29.
//

import SwiftUI
import Alamofire


struct signUpInterestView:View {
    @Binding var id: String
    @Binding var nickname: String
    @Binding var password: String
    @Binding var password2: String
    @Binding var age:String
    @Binding var iswoman:Bool
    @State var interest = ""
    var interestMan = ["팔","가슴","코어","다리"]
    var interestWoman = ["팔","복근","옆구리","엉덩이","허벅지"]
    
    
    func sendRegister() {
        let url="http://10.80.163.214:8000/api/user/register"
        let param = [
            "id":id,
            "nickname":nickname,
            "password":password,
            "sex":iswoman == false ? "남" : "여",
            "age":age,
            "interest":interest,
            "diary_pu_yn": false
            
        ] as [String : Any]
        AF.request(url, method: .post, parameters: param, encoding: JSONEncoding.default)
            .responseJSON { response in
                   print(response)
            }
    }
    
    
    
    var body: some View {
        NavigationView {
            VStack {
                  Picker("Interest", selection: $interest) {
                      ForEach(iswoman == false ? interestMan : interestWoman, id: \.self) {
                          Text($0)
                              .font(.system(size: 70))
                    }
                  }
                  .frame(width: 400, height: 500)
                  .pickerStyle(.segmented)
                  .background(iswoman == false ? .blue : .pink)
                  .font(.system(size: 30))
                  .cornerRadius(15)
                  .clipped()
                
                Button("회원가입 하기") {
                    sendRegister()
                }
                }
            }.navigationViewStyle(StackNavigationViewStyle())
            .navigationBarHidden(true)
        }
    }



