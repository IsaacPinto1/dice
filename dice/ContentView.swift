//
//  ContentView.swift
//  dice
//
//  Created by Isaac Pinto on 4/21/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var SignedIn = "Sign In"
    @State var userEmail = ""
    
    @EnvironmentObject var dataManager: DataManager
    
    func changeSignIn(){
        SignedIn = "Home"
    }
    
    
    var body: some View {
        switch SignedIn {
        case "Sign In":
            VStack{
                SignIn(SignedIn: $SignedIn, userEmail: $userEmail)
            }
        case "Home":
                TabView{
                    DeliverPage()
                        .tabItem{
                            Label("Deliver", systemImage: "takeoutbag.and.cup.and.straw.fill")
                        }
                        .environmentObject(dataManager)
                    Restaurant_List(userEmail: $userEmail)
                        .tabItem{
                            Label("Order", systemImage: "fork.knife.circle.fill")
                        }
                        .environmentObject(dataManager)
                    Profile(SignedIn: $SignedIn, userEmail: $userEmail)
                        .tabItem{
                            Label("Profile", systemImage: "person.crop.circle.fill")
                        }
                }
        case "Create Account":
            LogIn(SignedIn: $SignedIn)
        default:
            Text("Shit")
        
    }
    }
}

struct SignIn: View{
    
    @Binding var SignedIn: String
    @Binding var userEmail: String
    
    var body: some View{
        ZStack{
            Rectangle()
                .fill(.green)
                .ignoresSafeArea()
            VStack{
                SignInBottom(SignedIn: $SignedIn, userEmail: $userEmail)
            }
            .padding(.top, 235.0)
        }
    }
}

struct ThirdView: View {
    var body: some View {
        Text("This is third view")
            .navigationBarTitle("ThirdView", displayMode: .inline)
    }
}

struct FourthView: View{
    var body: some View{
        Text("Fourth View")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
        }
    }
}


//API STUFF:


/*import Foundation
import SwiftUI
struct ContentView: View {
    @State var currentWeather: CurrentWeather?
    
    
    var body: some View {
        if let weather = currentWeather {
                        Text("\(weather.temperature)")
                        Text("\(weather.windspeed)")
                    }
        Button{
            Task {
                let url = URL(string: "https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&current_weather=true&hourly=temperature_2m,relativehumidity_2m,windspeed_10m")!
                let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                    guard let data = data else {
                        print("Error: No data")
                        return
                    }
                    do {
                        let current = try JSONDecoder().decode(Current.self, from: data)
                        print(current.currentWeather.temperature)
                        currentWeather = current.currentWeather
                    } catch {
                        print("Error decoding JSON: \(error)")
                    }
                }
                task.resume()
            }
        } label: {
            Text("Fetch")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct Current: Codable {
    let currentWeather: CurrentWeather
    
    private enum CodingKeys: String, CodingKey {
        case currentWeather = "current_weather"
    }
}

struct CurrentWeather: Codable {
    let temperature: Double
    let windspeed: Double
    let winddirection: Double
    let weathercode: Int
    let is_day: Int
    let time: String
}*/
