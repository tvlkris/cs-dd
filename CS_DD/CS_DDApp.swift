//
//  CS_DDApp.swift
//  CS_DD
//
//  Created by Christianto Budisaputra on 06/05/25.
//

import DatadogCore
import DatadogLogs
import DatadogRUM
import DatadogTrace
import FirebaseCore
import SwiftUI
import UIKit

let logger: LoggerProtocol = Logger.create(
    with: Logger.Configuration(
        name: #fileID.components(separatedBy: "/").first,
        networkInfoEnabled: true,
        remoteLogThreshold: .info,
        consoleLogFormat: .shortWith(prefix: "[Datadog Logs] ")
    )
)

final class AppDelegate: NSObject, UIApplicationDelegate {
    private let kDatadogDevAppID: String = "6b3c5da9-7484-4a47-8f8c-85dc6e88ef06"
    private let kDatadogDevClientToken: String = "pub452f43743acd01ca1d226b04f1a0693e"
    private let kDatadogDevServiceName: String = "ios-staging"
    private let kDatadogDevEnvironment: String = "staging"

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        FirebaseApp.configure()

        initializeDatadogWithLog()

        let config = RUM.Configuration(
            applicationID: kDatadogDevAppID,
            onSessionStart: { [weak self] sessionID, isSessionDiscarded in
                if sessionID != "00000000-0000-0000-0000-000000000000", !isSessionDiscarded {
                    self?.initializeDatadogTrace()
                }
            }
        )
        let attributes: [String: Encodable] = [
            "isRealmFinished": true,
            "emailCount": 1,
            "phoneCount": 1,
        ]
        let pattern1 = try! NSRegularExpression(pattern: "[^a-zA-Z0-9 -]+")
        logger.log(level: .warn, message: "ODM Initializing", error: nil, attributes: attributes)

        return true
    }

    private func initializeDatadogTrace() {
        Trace.enable(with: Trace.Configuration(networkInfoEnabled: true))
    }

    private func initializeDatadogWithLog() {
        Datadog.initialize(
            with: Datadog.Configuration(
                clientToken: kDatadogDevClientToken,
                env: kDatadogDevEnvironment,
                service: kDatadogDevServiceName
            ),
            trackingConsent: .granted
        )

        #if DEBUG
            Datadog.verbosityLevel = .debug
        #endif

        Logs.enable()
    }
}

@main
struct CS_DDApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    let attributes: [String: Encodable] = [
                        "isRealmFinished": true,
                        "emailCount": 1,
                        "phoneCount": 1,
                    ]
                    logger.log(level: .warn, message: "ODM Initializing", error: nil, attributes: attributes)
                }
        }
    }
}

@objcMembers
public final class MUIColor: UIColor {
    /// Returns a color object whose hex value is #FFFFFF
    public static let lightPrimary: UIColor = UIColor(white: 1.0, alpha: 1.0)
    /// Returns a color object whose hex value is #1BA0E2
    public static let godwitBlue: UIColor = UIColor(red: 27.0 / 255.0, green: 160.0 / 255.0, blue: 226.0 / 255.0, alpha: 1.0)
}
