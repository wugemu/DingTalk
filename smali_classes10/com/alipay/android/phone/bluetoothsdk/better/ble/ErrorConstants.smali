.class public Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;
.super Ljava/lang/Object;
.source "ErrorConstants.java"


# static fields
.field public static final BLUETOOTH_STATE_STR:[Ljava/lang/String;

.field public static final ERROR_BEACON_ALREADY_DISCOVERING:[Ljava/lang/String;

.field public static final ERROR_BEACON_BLUETOOTH_UNAVAILABLE:[Ljava/lang/String;

.field public static final ERROR_BEACON_INVALID_UUID:[Ljava/lang/String;

.field public static final ERROR_BEACON_LACK_PARAMS:[Ljava/lang/String;

.field public static final ERROR_BEACON_LOCATION_FORBIDDEN:[Ljava/lang/String;

.field public static final ERROR_BEACON_LOCATION_UNAVAILABLE:[Ljava/lang/String;

.field public static final ERROR_BEACON_SYSTEM_ERROR:[Ljava/lang/String;

.field public static final ERROR_BEACON_UNSUPPORT:[Ljava/lang/String;

.field public static final ERROR_BLUETOOTHADAPTER_NOT_INITIALIZED:[Ljava/lang/String;

.field public static final ERROR_BLUETOOTH_UNAVAILABLE:[Ljava/lang/String;

.field public static final ERROR_CHARACTERISTICID_INVALID:[Ljava/lang/String;

.field public static final ERROR_CHARACTERISTIC_NOT_FOUND:[Ljava/lang/String;

.field public static final ERROR_CHARACTERISTIC_OPERATION_NOT_SUPPORT:[Ljava/lang/String;

.field public static final ERROR_CODE_12:Ljava/lang/String; = "12"

.field public static final ERROR_CODE_13:Ljava/lang/String; = "13"

.field public static final ERROR_CODE_14:Ljava/lang/String; = "14"

.field public static final ERROR_CODE_15:Ljava/lang/String; = "15"

.field public static final ERROR_CODE_ARRAY:[Ljava/lang/String;

.field public static final ERROR_CONNECT_FAIL:[Ljava/lang/String;

.field public static final ERROR_DESCRIPTOR_NOT_FOUND:[Ljava/lang/String;

.field public static final ERROR_DEVICEID_INVALID:[Ljava/lang/String;

.field public static final ERROR_DEVICE_NOT_FOUND:[Ljava/lang/String;

.field public static final ERROR_HEX_DATA_ERROR:[Ljava/lang/String;

.field public static final ERROR_NO_CONNECTION:[Ljava/lang/String;

.field public static final ERROR_PARAM_LACK:[Ljava/lang/String;

.field public static final ERROR_READ_CHARACTERISTIC_FAIL:[Ljava/lang/String;

.field public static final ERROR_SCAN_INVALID_UUID:[Ljava/lang/String;

.field public static final ERROR_SCAN_LOCATION_UNAVAILABLE:[Ljava/lang/String;

.field public static final ERROR_SERVICEID_INVALID:[Ljava/lang/String;

.field public static final ERROR_SERVICE_NOT_FOUND:[Ljava/lang/String;

.field public static final ERROR_SYSTEM_ERROR:[Ljava/lang/String;

.field public static final ERROR_TIMEOUT:[Ljava/lang/String;

.field public static final ERROR_UNSUPPORT_BLE:[Ljava/lang/String;

.field public static final ERROR_WRITE_CHARACTERISTIC_FAIL:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "12"

    aput-object v1, v0, v2

    const-string/jumbo v1, "13"

    aput-object v1, v0, v3

    const-string/jumbo v1, "13"

    aput-object v1, v0, v4

    const-string/jumbo v1, "14"

    aput-object v1, v0, v5

    const-string/jumbo v1, "15"

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_CODE_ARRAY:[Ljava/lang/String;

    .line 14
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "\u84dd\u7259\u672a\u6253\u5f00"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u4e0e\u7cfb\u7edf\u670d\u52a1\u7684\u94fe\u63a5\u6682\u65f6\u4e22\u5931"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u672a\u6388\u6743\u652f\u4ed8\u5b9d\u4f7f\u7528\u84dd\u7259\u529f\u80fd"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u672a\u77e5\u9519\u8bef"

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->BLUETOOTH_STATE_STR:[Ljava/lang/String;

    .line 16
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "10000"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u672a\u521d\u59cb\u5316\u84dd\u7259\u9002\u914d\u5668"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_BLUETOOTHADAPTER_NOT_INITIALIZED:[Ljava/lang/String;

    .line 17
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "10001"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u5f53\u524d\u84dd\u7259\u9002\u914d\u5668\u4e0d\u53ef\u7528"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_BLUETOOTH_UNAVAILABLE:[Ljava/lang/String;

    .line 18
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "10002"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u6ca1\u6709\u627e\u5230\u6307\u5b9a\u8bbe\u5907"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_DEVICE_NOT_FOUND:[Ljava/lang/String;

    .line 19
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "10003"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u8fde\u63a5\u5931\u8d25"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_CONNECT_FAIL:[Ljava/lang/String;

    .line 20
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "10004"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u6ca1\u6709\u627e\u5230\u6307\u5b9a\u670d\u52a1"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_SERVICE_NOT_FOUND:[Ljava/lang/String;

    .line 21
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "10005"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u6ca1\u6709\u627e\u5230\u6307\u5b9a\u7279\u5f81\u503c"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_CHARACTERISTIC_NOT_FOUND:[Ljava/lang/String;

    .line 22
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "10006"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u5f53\u524d\u8fde\u63a5\u5df2\u65ad\u5f00"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_NO_CONNECTION:[Ljava/lang/String;

    .line 23
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "10007"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u5f53\u524d\u7279\u5f81\u503c\u4e0d\u652f\u6301\u6b64\u64cd\u4f5c"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_CHARACTERISTIC_OPERATION_NOT_SUPPORT:[Ljava/lang/String;

    .line 24
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "10008"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u7cfb\u7edf\u5f02\u5e38"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_SYSTEM_ERROR:[Ljava/lang/String;

    .line 25
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "10009"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u4e0d\u652f\u6301\u84dd\u72594.0"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_UNSUPPORT_BLE:[Ljava/lang/String;

    .line 26
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "10010"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u6ca1\u6709\u627e\u5230\u6307\u5b9a\u63cf\u8ff0\u7b26"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_DESCRIPTOR_NOT_FOUND:[Ljava/lang/String;

    .line 27
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "10011"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u8bbe\u5907 id \u4e0d\u53ef\u7528"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_DEVICEID_INVALID:[Ljava/lang/String;

    .line 28
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "10012"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u670d\u52a1 id \u4e0d\u53ef\u7528"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_SERVICEID_INVALID:[Ljava/lang/String;

    .line 29
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "10013"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u7279\u5f81 id \u4e0d\u53ef\u7528"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_CHARACTERISTICID_INVALID:[Ljava/lang/String;

    .line 30
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "10014"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u53d1\u9001\u7684\u6570\u636e\u4e3a\u7a7a\u6216\u683c\u5f0f\u9519\u8bef"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_HEX_DATA_ERROR:[Ljava/lang/String;

    .line 31
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "10015"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u64cd\u4f5c\u8d85\u65f6"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_TIMEOUT:[Ljava/lang/String;

    .line 32
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "10016"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u7f3a\u5c11\u53c2\u6570"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_PARAM_LACK:[Ljava/lang/String;

    .line 33
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "10017"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u5199\u5165\u7279\u5f81\u503c\u5931\u8d25"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_WRITE_CHARACTERISTIC_FAIL:[Ljava/lang/String;

    .line 34
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "10018"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u8bfb\u53d6\u7279\u5f81\u503c\u5931\u8d25"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_READ_CHARACTERISTIC_FAIL:[Ljava/lang/String;

    .line 35
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "10019"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u4f4d\u7f6e\u6743\u9650\u672a\u5f00\u542f"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_SCAN_LOCATION_UNAVAILABLE:[Ljava/lang/String;

    .line 36
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "10020"

    aput-object v1, v0, v2

    const-string/jumbo v1, "UUID\u683c\u5f0f\u9519\u8bef"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_SCAN_INVALID_UUID:[Ljava/lang/String;

    .line 38
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "11000"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u7cfb\u7edf\u6216\u8bbe\u5907\u4e0d\u652f\u6301"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_BEACON_UNSUPPORT:[Ljava/lang/String;

    .line 39
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "11001"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u84dd\u7259\u670d\u52a1\u4e0d\u53ef\u7528"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_BEACON_BLUETOOTH_UNAVAILABLE:[Ljava/lang/String;

    .line 40
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "11002"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u4f4d\u7f6e\u670d\u52a1\u4e0d\u53ef\u7528"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_BEACON_LOCATION_UNAVAILABLE:[Ljava/lang/String;

    .line 41
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "11003"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u4f4d\u7f6e\u6743\u9650\u7981\u6b62"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_BEACON_LOCATION_FORBIDDEN:[Ljava/lang/String;

    .line 42
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "11004"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u5df2\u7ecf\u5f00\u59cb\u641c\u7d22"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_BEACON_ALREADY_DISCOVERING:[Ljava/lang/String;

    .line 43
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "11005"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u7f3a\u5c11\u53c2\u6570"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_BEACON_LACK_PARAMS:[Ljava/lang/String;

    .line 44
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "11006"

    aput-object v1, v0, v2

    const-string/jumbo v1, "UUID\u683c\u5f0f\u9519\u8bef"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_BEACON_INVALID_UUID:[Ljava/lang/String;

    .line 45
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "11007"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u7cfb\u7edf\u9519\u8bef"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/bluetoothsdk/better/ble/ErrorConstants;->ERROR_BEACON_SYSTEM_ERROR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method
