import PackagePlugin
import Foundation

@main
struct CapstoneEnumGenerateCommandPlugin: CommandPlugin {
    func performCommand(context: PluginContext, arguments: [String]) async throws {
        let tool = try context.tool(named: "capstone-enums-generator")
        

        
        let process = Process()
        
        
        
    }
}
