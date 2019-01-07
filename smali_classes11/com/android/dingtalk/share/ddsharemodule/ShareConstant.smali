.class public Lcom/android/dingtalk/share/ddsharemodule/ShareConstant;
.super Ljava/lang/Object;
.source "ShareConstant.java"


# static fields
.field public static ACTION_APP_REGISTER:Ljava/lang/String; = null

.field public static ACTION_APP_UNREGISTER:Ljava/lang/String; = null

.field public static final ACTION_MESSAGE:Ljava/lang/String; = "com.alipay.sdk.channel.Intent.ACTION_MESSAGE"

.field public static final COMMAND_GETMESSAGE_FROM_DD:I = 0x3

.field public static final COMMAND_SENDAUTH:I = 0x1

.field public static final COMMAND_SENDAUTH_V2:I = 0x64

.field public static final COMMAND_SENDMESSAGE_TO_DD:I = 0x2

.field public static final COMMAND_SHOWMESSAGE_FROM_DD:I = 0x4

.field public static final COMMAND_UNKNOWN:I = 0x0

.field public static final DD_APP_PACKAGE:Ljava/lang/String; = "com.alibaba.android.rimet"

.field public static final DD_APP_SIGNATURE:Ljava/lang/String; = "d2cef93010963d9273440efe6a05dd8d"

.field public static final DD_DING_ACTIVITY_SCHEME:Ljava/lang/String; = "dingtalk://qr.dingtalk.com/ding/create"

.field public static final DD_ENTER_ACTIVITY_SCHEME:Ljava/lang/String; = "dingtalk://qr.dingtalk.com/im/forward.html"

.field public static final DD_SDK_VERSION_META_KEY:Ljava/lang/String; = "android.intent.ding.SHARE_SDK_KEY"

.field public static final DD_SEND_AUTH_ACTIVITY_SCHEME:Ljava/lang/String; = "dingtalk://qr.dingtalk.com/im/send_auth.html"

.field public static final DINGDING_SDK_SHARE_VERSION_V1:I = 0x1337ba1

.field public static final DINGDING_SDK_SHARE_VERSION_V2:I = 0x1339e65

.field public static final EXTRA_ACTION_TYPE:Ljava/lang/String; = "android.intent.ding.EXTRA_ACTION_TYPE"

.field public static final EXTRA_AP_OBJECT_DESCRIPTION:Ljava/lang/String; = "android.intent.ding.EXTRA_AP_OBJECT_DESCRIPTION"

.field public static final EXTRA_AP_OBJECT_IDENTIFIER:Ljava/lang/String; = "android.intent.ding.EXTRA_AP_OBJECT_IDENTIFIER"

.field public static final EXTRA_AP_OBJECT_SDK_VERSION:Ljava/lang/String; = "android.intent.ding.EXTRA_AP_OBJECT_SDK_VERSION"

.field public static final EXTRA_AP_OBJECT_THUMB_DATA:Ljava/lang/String; = "android.intent.ding.EXTRA_AP_OBJECT_THUMB_DATA"

.field public static final EXTRA_AP_OBJECT_THUMB_URL:Ljava/lang/String; = "android.intent.ding.EXTRA_AP_OBJECT_THUMB_URL"

.field public static final EXTRA_AP_OBJECT_TITLE:Ljava/lang/String; = "android.intent.ding.EXTRA_AP_OBJECT_TITLE"

.field public static final EXTRA_BASEREQ_ERROR_CODE:Ljava/lang/String; = "android.intent.ding.EXTRA_BASEREQ_ERROR_CODE"

.field public static final EXTRA_BASEREQ_ERROR_STRING:Ljava/lang/String; = "android.intent.ding.EXTRA_BASEREQ_ERROR_STRING"

.field public static final EXTRA_BASEREQ_TRANSACTION:Ljava/lang/String; = "android.intent.ding.EXTRA_BASEREQ_TRANSACTION"

.field public static final EXTRA_COMMAND_TYPE:Ljava/lang/String; = "android.intent.ding.EXTRA_COMMAND_TYPE"

.field public static final EXTRA_IMAGE_OBJECT_IMAGE_DATA:Ljava/lang/String; = "android.intent.ding.EXTRA_IMAGE_OBJECT_IMAGE_DATA"

.field public static final EXTRA_IMAGE_OBJECT_IMAGE_PATH:Ljava/lang/String; = "android.intent.ding.EXTRA_IMAGE_OBJECT_IMAGE_PATH"

.field public static final EXTRA_IMAGE_OBJECT_IMAGE_URL:Ljava/lang/String; = "android.intent.ding.EXTRA_IMAGE_OBJECT_IMAGE_URL"

.field public static final EXTRA_MESSAGE_APP_ID:Ljava/lang/String; = "android.intent.ding.EXTRA_MESSAGE_APP_ID"

.field public static final EXTRA_MESSAGE_APP_PACKAGE_NAME:Ljava/lang/String; = "android.intent.ding.EXTRA_MESSAGE_APP_PACKAGE_NAME"

.field public static final EXTRA_MESSAGE_APP_SIGNATURE:Ljava/lang/String; = "android.intent.ding.EXTRA_MESSAGE_APP_SIGNATURE"

.field public static final EXTRA_MESSAGE_CHECK_SUM:Ljava/lang/String; = "android.intent.ding.EXTRA_MESSAGE_CHECK_SUM"

.field public static final EXTRA_MESSAGE_CONTENT:Ljava/lang/String; = "android.intent.ding.EXTRA_CALLBACK_MESSAGE_CONTENT"

.field public static final EXTRA_MESSAGE_SDK_VERSION:Ljava/lang/String; = "android.intent.ding.EXTRA_MESSAGE_SDK_VERSION"

.field public static final EXTRA_SEND_AUTH_CODE:Ljava/lang/String; = "android.intent.ding.EXTRA_SEND_AUTH_CODE"

.field public static final EXTRA_SEND_AUTH_SCOPE:Ljava/lang/String; = "android.intent.ding.EXTRA_SEND_AUTH_SCOPE"

.field public static final EXTRA_SEND_AUTH_STATE:Ljava/lang/String; = "android.intent.ding.EXTRA_SEND_AUTH_STATE"

.field public static final EXTRA_SEND_MESSAGE_SCENE:Ljava/lang/String; = "android.intent.ding.EXTRA_SEND_MESSAGE_SCENE"

.field public static final EXTRA_TEXT_OBJECT_TEXT:Ljava/lang/String; = "android.intent.ding.EXTRA_TEXT_OBJECT_TEXT"

.field public static final EXTRA_WEB_PAGE_OBJECT_URL:Ljava/lang/String; = "android.intent.ding.EXTRA_WEB_PAGE_OBJECT_URL"

.field public static final EXTRA_ZHIFUBAO_OBJECT_URL:Ljava/lang/String; = "android.intent.ding.EXTRA_ZHIFUBAO_OBJECT_URL"

.field public static final OUT_SHARE_ACTION_TYPE:Ljava/lang/String; = "outShare"

.field public static PERMISSION_ACTION_HANDLE_APP_REGISTER:Ljava/lang/String; = null

.field public static PERMISSION_ACTION_HANDLE_APP_UNREGISTER:Ljava/lang/String; = null

.field public static final SDK_SUPPORT_DING_VERSION:I = 0x1339ed6

.field public static final SDK_VERSION:I = 0x1339e65


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string/jumbo v0, "com.dd.plugin.openapi.Intent.ACTION_HANDLE_APP_REGISTER"

    sput-object v0, Lcom/android/dingtalk/share/ddsharemodule/ShareConstant;->PERMISSION_ACTION_HANDLE_APP_REGISTER:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "dd://registerapp?appid="

    sput-object v0, Lcom/android/dingtalk/share/ddsharemodule/ShareConstant;->ACTION_APP_REGISTER:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "com.dd.plugin.openapi.Intent.ACTION_HANDLE_APP_UNREGISTER"

    sput-object v0, Lcom/android/dingtalk/share/ddsharemodule/ShareConstant;->PERMISSION_ACTION_HANDLE_APP_UNREGISTER:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "dd://unregisterapp?appid="

    sput-object v0, Lcom/android/dingtalk/share/ddsharemodule/ShareConstant;->ACTION_APP_UNREGISTER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
