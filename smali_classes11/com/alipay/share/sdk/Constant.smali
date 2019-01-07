.class public Lcom/alipay/share/sdk/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static ACTION_APP_REGISTER:Ljava/lang/String; = null

.field public static ACTION_APP_UNREGISTER:Ljava/lang/String; = null

.field public static EXTRA_AP_OBJECT_DESCRIPTION:Ljava/lang/String; = null

.field public static EXTRA_AP_OBJECT_IDENTIFIER:Ljava/lang/String; = null

.field public static EXTRA_AP_OBJECT_SDK_VERSION:Ljava/lang/String; = null

.field public static EXTRA_AP_OBJECT_THUMB_DATA:Ljava/lang/String; = null

.field public static EXTRA_AP_OBJECT_THUMB_URL:Ljava/lang/String; = null

.field public static EXTRA_AP_OBJECT_TITLE:Ljava/lang/String; = null

.field public static EXTRA_BASEREQ_ERROR_CODE:Ljava/lang/String; = null

.field public static EXTRA_BASEREQ_ERROR_STRING:Ljava/lang/String; = null

.field public static EXTRA_BASEREQ_TRANSACTION:Ljava/lang/String; = null

.field public static EXTRA_COMMAND_TYPE:Ljava/lang/String; = null

.field public static EXTRA_FUND_CODE:Ljava/lang/String; = null

.field public static EXTRA_FUND_EXTRA_DESC1:Ljava/lang/String; = null

.field public static EXTRA_FUND_EXTRA_DESC2:Ljava/lang/String; = null

.field public static EXTRA_FUND_EXTRA_VALUE1:Ljava/lang/String; = null

.field public static EXTRA_FUND_EXTRA_VALUE2:Ljava/lang/String; = null

.field public static EXTRA_FUND_IMAGE:Ljava/lang/String; = null

.field public static EXTRA_FUND_PRICE:Ljava/lang/String; = null

.field public static EXTRA_FUND_TAG:Ljava/lang/String; = null

.field public static EXTRA_FUND_TIME:Ljava/lang/String; = null

.field public static EXTRA_FUND_TITLE:Ljava/lang/String; = null

.field public static EXTRA_IMAGE_OBJECT_IMAGE_DATA:Ljava/lang/String; = null

.field public static EXTRA_IMAGE_OBJECT_IMAGE_PATH:Ljava/lang/String; = null

.field public static EXTRA_IMAGE_OBJECT_IMAGE_URL:Ljava/lang/String; = null

.field public static EXTRA_MESSAGE_APP_PACKAGE_NAME:Ljava/lang/String; = null

.field public static EXTRA_MESSAGE_CHECK_SUM:Ljava/lang/String; = null

.field public static EXTRA_MESSAGE_CONTENT:Ljava/lang/String; = null

.field public static EXTRA_MESSAGE_SDK_VERSION:Ljava/lang/String; = null

.field public static EXTRA_SEND_MESSAGE_SCENE:Ljava/lang/String; = null

.field public static EXTRA_STOCK_OBJECT_CODE:Ljava/lang/String; = null

.field public static EXTRA_STOCK_OBJECT_NAME:Ljava/lang/String; = null

.field public static EXTRA_STOCK_OBJECT_PRICE:Ljava/lang/String; = null

.field public static EXTRA_STOCK_OBJECT_PRICE_CHANGE:Ljava/lang/String; = null

.field public static EXTRA_STOCK_OBJECT_PRICE_CHANGE_RATIO:Ljava/lang/String; = null

.field public static EXTRA_STOCK_OBJECT_STATUS:Ljava/lang/String; = null

.field public static EXTRA_STOCK_OBJECT_TIME:Ljava/lang/String; = null

.field public static EXTRA_STOCK_OBJECT_URL:Ljava/lang/String; = null

.field public static EXTRA_TAOBAO_TAG1:Ljava/lang/String; = null

.field public static EXTRA_TAOBAO_TAG2:Ljava/lang/String; = null

.field public static EXTRA_TEXT_OBJECT_TEXT:Ljava/lang/String; = null

.field public static EXTRA_UI:Ljava/lang/String; = null

.field public static EXTRA_WEB_PAGE_OBJECT_URL:Ljava/lang/String; = null

.field public static PERMISSION_ACTION_HANDLE_APP_REGISTER:Ljava/lang/String; = null

.field public static PERMISSION_ACTION_HANDLE_APP_UNREGISTER:Ljava/lang/String; = null

.field public static final SDK_VERSION:I = 0x1337966

.field public static SEND_REQUEST_CONTENT_APPID:Ljava/lang/String; = null

.field public static final ZFB_PACKAGE_NAME:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field public static final ZFB_SHARE_ENTRY:Ljava/lang/String; = "com.alipay.mobile.socialwidget.ui.ShareDispenseActivity"

.field public static final ZFB_TAG:Ljava/lang/String; = "APSDK."

.field public static final ZFB_VERSION_SHARE:I = 0x4d

.field public static final ZFB_VERSION_TIMELINE:I = 0x54


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "alipay_command_type"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_COMMAND_TYPE:Ljava/lang/String;

    .line 13
    const-string/jumbo v0, "alipay_basereq_transaction"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_BASEREQ_TRANSACTION:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, "alipay_baseresp_errcode"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_BASEREQ_ERROR_CODE:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, "alipay_baseresp_errstr"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_BASEREQ_ERROR_STRING:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "alipay_sendmessag_req_scene"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_SEND_MESSAGE_SCENE:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "ui"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_UI:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "alipay_imageobject_imageData"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_IMAGE_OBJECT_IMAGE_DATA:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "alipay_imageobject_imagePath"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_IMAGE_OBJECT_IMAGE_PATH:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "alipay_imageobject_imageUrl"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_IMAGE_OBJECT_IMAGE_URL:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "alipay_textobject_text"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_TEXT_OBJECT_TEXT:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "alipay_webpageobject_webpageUrl"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_WEB_PAGE_OBJECT_URL:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "alipay_stockobject_name"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_STOCK_OBJECT_NAME:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "alipay_stockobject_code"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_STOCK_OBJECT_CODE:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "alipay_stockobject_price"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_STOCK_OBJECT_PRICE:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "alipay_stockobject_price_change"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_STOCK_OBJECT_PRICE_CHANGE:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "alipay_stockobject_price_change_ratio"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_STOCK_OBJECT_PRICE_CHANGE_RATIO:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "alipay_stockobject_time"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_STOCK_OBJECT_TIME:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "alipay_stockobject_status"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_STOCK_OBJECT_STATUS:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "alipay_stockobject_url"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_STOCK_OBJECT_URL:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "taobao_tag1"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_TAOBAO_TAG1:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "taobao_tag2"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_TAOBAO_TAG2:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "fund_tag"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_FUND_TAG:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "fund_code"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_FUND_CODE:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "fund_img"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_FUND_IMAGE:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "fund_title"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_FUND_TITLE:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "fund_price"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_FUND_PRICE:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "fund_subtxt1"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_FUND_EXTRA_DESC1:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "fund_subtxt2"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_FUND_EXTRA_DESC2:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "fund_day_increase"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_FUND_EXTRA_VALUE1:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "fund_week_increase"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_FUND_EXTRA_VALUE2:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "fund_time"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_FUND_TIME:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "alipay_message_sdkVersion"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_MESSAGE_SDK_VERSION:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "alipay_message_appPackage"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_MESSAGE_APP_PACKAGE_NAME:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "alipay_message_content"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_MESSAGE_CONTENT:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "alipay_message_checksum"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_MESSAGE_CHECK_SUM:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "alipay_object_sdkVer"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_AP_OBJECT_SDK_VERSION:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "alipay_object_title"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_AP_OBJECT_TITLE:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "alipay_object_description"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_AP_OBJECT_DESCRIPTION:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "alipay_object_thumb_data"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_AP_OBJECT_THUMB_DATA:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "alipay_object_thumb_url"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_AP_OBJECT_THUMB_URL:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "alipay_object_identifier"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->EXTRA_AP_OBJECT_IDENTIFIER:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "com.alipay.plugin.openapi.Intent.ACTION_HANDLE_APP_REGISTER"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->PERMISSION_ACTION_HANDLE_APP_REGISTER:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "alipays://registerapp?appid="

    sput-object v0, Lcom/alipay/share/sdk/Constant;->ACTION_APP_REGISTER:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "com.alipay.plugin.openapi.Intent.ACTION_HANDLE_APP_UNREGISTER"

    sput-object v0, Lcom/alipay/share/sdk/Constant;->PERMISSION_ACTION_HANDLE_APP_UNREGISTER:Ljava/lang/String;

    .line 67
    const-string/jumbo v0, "alipays://unregisterapp?appid="

    sput-object v0, Lcom/alipay/share/sdk/Constant;->ACTION_APP_UNREGISTER:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "alipays://sendreq?appid="

    sput-object v0, Lcom/alipay/share/sdk/Constant;->SEND_REQUEST_CONTENT_APPID:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
