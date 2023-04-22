//
//  ContentView.swift
//  dice
//
//  Created by Isaac Pinto on 4/21/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isVisible = false
    
    func changeSignIn(){
        isVisible = true
    }
    
    
    var body: some View {
            if isVisible == true {
                TabView{
                    SecondView()
                        .tabItem{
                            Label("Second", systemImage: "tray.and.arrow.down.fill")
                        }
                    ThirdView()
                        .tabItem{
                            Label("Third", systemImage: "tray.and.arrow.down.fill")
                        }
                }
            } else {
                VStack{
                    SignIn()
                }
            }
        
    }
}

struct SignIn: View{
    var body: some View{
        ZStack{
            Color.green
                .ignoresSafeArea()
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
        }
    }
}

struct SecondView: View {
    var body: some View {
        VStack{
            VStack {
                Text("This is the second view")
            }
            NavigationView{
                NavigationLink(destination: FourthView()) { Text("Go to fourth") }
                    .frame(width: 100.0, height: 100.0)
            }
            .padding(0.0)
            .frame(width: 400.0, height: 200.0)
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
