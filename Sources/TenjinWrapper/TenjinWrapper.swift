import Foundation
#if canImport(TenjinSDK) && !targetEnvironment(macCatalyst)
import TenjinSDK
#endif

public enum TenjinWrapper {

    public static func connect(_ apiKey: String) {
        #if canImport(TenjinSDK) && !targetEnvironment(macCatalyst)
        TenjinSDK.getInstance(apiKey)
        TenjinSDK.connect()
        #endif
    }

    public static func debugLogs() {
        #if canImport(TenjinSDK) && !targetEnvironment(macCatalyst)
        TenjinSDK.debugLogs()
        #endif
    }

    public static func transaction(
        withProductName: String,
        andCurrencyCode: String,
        andQuantity: Int,
        andUnitPrice: NSDecimalNumber
    ) {
        #if canImport(TenjinSDK) && !targetEnvironment(macCatalyst)
        TenjinSDK.transaction(
            withProductName: withProductName,
            andCurrencyCode: andCurrencyCode,
            andQuantity: andQuantity,
            andUnitPrice: andUnitPrice
        )
        #endif
    }

    public static func transaction(
        withProductName: String,
        andCurrencyCode: String,
        andQuantity: Int,
        andUnitPrice: NSDecimalNumber,
        andTransactionId: String,
        andReceipt: NSData
    ) {
        #if canImport(TenjinSDK) && !targetEnvironment(macCatalyst)
        TenjinSDK.transaction(
            withProductName: withProductName,
            andCurrencyCode: andCurrencyCode,
            andQuantity: andQuantity,
            andUnitPrice: andUnitPrice,
            andTransactionId: andTransactionId,
            andReceipt: andReceipt
        )
        #endif
    }

    public static func transaction(
        withProductName: String,
        andCurrencyCode: String,
        andQuantity: Int,
        andUnitPrice: NSDecimalNumber,
        andTransactionId: String,
        andBase64Receipt: String
    ) {
        #if canImport(TenjinSDK) && !targetEnvironment(macCatalyst)
        TenjinSDK.transaction(
            withProductName: withProductName,
            andCurrencyCode: andCurrencyCode,
            andQuantity: andQuantity,
            andUnitPrice: andUnitPrice,
            andTransactionId: andTransactionId,
            andBase64Receipt: andBase64Receipt
        )
        #endif
    }
}
