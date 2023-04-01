import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "location")
                .accessibilitySortPriority(/*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .accessibilityAddTraits([.isButton, .isHeader])
                .imageScale(.large)
                .foregroundColor(.accentColor)
                
            Text("Little lemon!")
        }
    }
}

import SwiftUI

struct ReservationCalendar: View {

    @State var reservationDate = Date()

    var body: some View {
        Form {
            HStack {
                DatePicker(
                    selection: $reservationDate, in: Date()...,
                    displayedComponents: [.date, .hourAndMinute]
                ) {}
                Button(action: { print("do something!") }) {
                    HStack {
                        Image(systemName: "arrow.right.circle")
                        Text("Done")
                    }
                }.padding(20)
            }
            Text("Date is \(reservationDate.formatted(date: .long, time: .complete))")
        }
    }
}

struct ReservationCalendar_Previews: PreviewProvider {
    static var previews: some View {
        ReservationCalendar()
    }
}

class LocalFile {
  let name: String
  let fileExtension: String

  init(name: String, fileExtension: String) {
    self.name = name
    self.fileExtension = fileExtension
  }

  var fullFileName: String {
    return name + "." + fileExtension
  }
}

struct contentView : View {
    @ObservedObject private var model = Model()
    
    var body: some View {
        VStack {
            List {
                ForEach(model.meals) { item in
                    Text(item.name)
                }
            }
        }
    }
}

struct item : Identifiable {
    let id = UUID()
    let name: String
}
class Model: ObservableObject {
@Published var meals: [item] = menuItems()

static func menuItems() -> [item] {
return [
 item(name: "Lasagna"),
            item(name: "Fettuccini Alfredo"),
            item(name: "Spaghetti"),
            item(name: "Avocado Toast"),
            item(name: "Tortellini"),
            item(name: "Pizza")
]
}
}

