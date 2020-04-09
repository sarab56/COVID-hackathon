//
//  TimerHostingController.swift
//  iCovid WatchKit Extension
//
//  Created by Kyle Ip on 4/7/20.
//  Copyright © 2020 Emmanuel Salcedo. All rights reserved.
//

import WatchKit

import UIKit
import SwiftUI

struct SecondView: View {
  var body: some View {
      VStack {
          Text("Second View").font(.system(size: 36))
          Text("Loaded by SecondView").font(.system(size: 14))
      }
  }
}

class TimerHostingController: WKHostingController<ContentView> {

    required init?(coder: NSCoder) {
        super.init();
    }
}
