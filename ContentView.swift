import SwiftUI

struct ContentView: View {

@State var model = ToggleModel()

var body: some View{
    VStack{
        Toggle(isOn: $model.isDark){
            Text(model.isDark ? "Dark Mode On" : "Dark Mode Off")
            .font(.headline)
        }
        .padding()
        Image("logo-spritekit")
        .resizable()
        .frame(width: 250, height: 250)
        .shadow(radius: 50)
        .padding()

        Button(action: { }, label:{
            Text("Learn SpriteKit")
            .padding()
            .font(.headline)
            .foregroundColor(model.isDark ? Color.black : Color.white)
            .background(model.isDark ? Color.yellow : Color.blue)
            .cornerRadius(8)
        })
        .padding()
        Button(action: { }, label:{
            Text("Choose Different Course")
            .padding()
            .font(.headline)
            .foregroundColor(model.isDark ? Color.black : Color.white)
            .background(model.isDark ? Color.yellow : Color.blue)
            .cornerRadius(8)
        })
        .padding()
        }
    }
}

struct ToggleModel{
    var isDark : Bool = false {
        didSet{
            SceneDelegate.shared?.window!.overrideUserInterfaceStyle = isDark ? .dark : .light
        }
    }
}

struct ContentView_Previews: PreviewProvider {
static var previews: some View{
    ContentView()
}
    
}
