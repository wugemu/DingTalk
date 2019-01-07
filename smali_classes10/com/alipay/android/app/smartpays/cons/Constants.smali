.class public Lcom/alipay/android/app/smartpays/cons/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final AUTHINFO_TYPE:Ljava/lang/String; = "authInfoType"

.field public static final BROADCAST_FP_VERIFY_CHANGED:Ljava/lang/String; = "com.alipay.android.app.FINGERPRINT_VERIFY_CHANGED"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final FP_CALLBACK_RESULT_CANCELED:I = 0x66

.field public static final FP_CALLBACK_RESULT_CHANGE_TO_PASSWORD:I = 0x79

.field public static final FP_CALLBACK_RESULT_FAILURE:I = 0x65

.field public static final FP_CALLBACK_RESULT_NO_MATCH:I = 0x67

.field public static final FP_CALLBACK_RESULT_SUCCESS:I = 0x64

.field public static final FP_CALLBACK_RESULT_SYSTEM_BLOCK:I = 0x81

.field public static final FP_CALLBACK_RESULT_TIMEOUT:I = 0x71

.field public static final INIT_RESULT_126_SERVICE_INTERCEPT:I = 0x7e

.field public static final INIT_RESULT_130_SERVICE_DISABLED:I = 0x82

.field public static final INIT_RESULT_131_DEVICE_NOT_SUPPORT_AREA:I = 0x83

.field public static final INIT_RESULT_132_NOT_SUPPORT_ROM:I = 0x84

.field public static final INIT_RESULT_133_NOT_SUPPORT_ROM_NEWER:I = 0x85

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final MFAC_DOWNLOAD_URL:Ljava/lang/String; = "mfacDownloadUrl"

.field public static final PHONE_MODEL:Ljava/lang/String; = "phoneModel"

.field public static final PROTOCOL_TYPE:Ljava/lang/String; = "protocolType"

.field public static final PROTOCOL_VERSION:Ljava/lang/String; = "protocolVersion"

.field public static PT_CHECK_UPDATE:I = 0x0

.field public static PT_OPEN_FP_MANAGER:I = 0x0

.field public static PT_REGISTER:I = 0x0

.field public static PT_UNREGISTER:I = 0x0

.field public static final PT_VERIFY:I = 0x3

.field public static final PV_CHECK_UPDATE:I = 0x0

.field public static final PV_OPEN_MANAGER:I = 0x0

.field public static final PV_REGISTER_NEW:I = 0x2

.field public static final PV_REGISTER_OLD:I = 0x1

.field public static final PV_UNREGISTER:I = 0x0

.field public static final PV_VERIFY_NEW:I = 0x2

.field public static final RESULT:Ljava/lang/String; = "result"

.field public static final RESULT_NOT_COMPATIBLE:I = 0x6a

.field public static final RESULT_NOT_INSTALL:I = 0x69

.field public static final RESULT_SERVICE_OLD:I = 0x7f

.field public static final RESULT_SUCCESS:I = 0x64

.field public static final TOKEN_ID:Ljava/lang/String; = "tokenId"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VENDOR:Ljava/lang/String; = "vendor"

.field public static final VERSION:Ljava/lang/String; = "version"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/16 v0, 0x10

    sput v0, Lcom/alipay/android/app/smartpays/cons/Constants;->PT_OPEN_FP_MANAGER:I

    .line 9
    const/16 v0, 0x11

    sput v0, Lcom/alipay/android/app/smartpays/cons/Constants;->PT_CHECK_UPDATE:I

    .line 12
    const/4 v0, 0x2

    sput v0, Lcom/alipay/android/app/smartpays/cons/Constants;->PT_REGISTER:I

    .line 16
    const/4 v0, 0x4

    sput v0, Lcom/alipay/android/app/smartpays/cons/Constants;->PT_UNREGISTER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
