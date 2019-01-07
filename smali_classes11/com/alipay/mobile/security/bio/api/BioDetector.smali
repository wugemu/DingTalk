.class public interface abstract Lcom/alipay/mobile/security/bio/api/BioDetector;
.super Ljava/lang/Object;
.source "BioDetector.java"


# static fields
.field public static final COMMAND_CANCLE:I = 0x1003

.field public static final COMMAND_SERVER_CONTINUE:I = 0x1002

.field public static final COMMAND_SERVER_FAIL:I = 0x2001

.field public static final COMMAND_SERVER_RETRY:I = 0x2002

.field public static final COMMAND_SERVER_SUCCESS:I = 0x1001

.field public static final COMMAND_VALIDATE_FAIL:I = 0x1004

.field public static final EXT_KEY_AMOUNT:Ljava/lang/String; = "amount"

.field public static final EXT_KEY_APDID:Ljava/lang/String; = "APDID"

.field public static final EXT_KEY_APPID:Ljava/lang/String; = "appid"

.field public static final EXT_KEY_APPID_BUNDLE:Ljava/lang/String; = "appid"

.field public static final EXT_KEY_AREA_CODE:Ljava/lang/String; = "areaCode"

.field public static final EXT_KEY_BISCFG_BUNDLE:Ljava/lang/String; = "biscfg"

.field public static final EXT_KEY_BISTOKEN:Ljava/lang/String; = "bis_token"

.field public static final EXT_KEY_BRAND_CODE:Ljava/lang/String; = "brandCode"

.field public static final EXT_KEY_CARD_TYPE:Ljava/lang/String; = "card_type"

.field public static final EXT_KEY_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field public static final EXT_KEY_DEVICE_MAC:Ljava/lang/String; = "deviceMac"

.field public static final EXT_KEY_GEO:Ljava/lang/String; = "geo"

.field public static final EXT_KEY_GOODS_COUNT:Ljava/lang/String; = "goodsCount"

.field public static final EXT_KEY_MACHINE_CODE:Ljava/lang/String; = "machineCode"

.field public static final EXT_KEY_MERCHANT_ID:Ljava/lang/String; = "merchantId"

.field public static final EXT_KEY_MODULE_DATA_BUNDLE:Ljava/lang/String; = "viModuleData"

.field public static final EXT_KEY_PAGENUM:Ljava/lang/String; = "pageNum"

.field public static final EXT_KEY_PARTNER_ID:Ljava/lang/String; = "partnerId"

.field public static final EXT_KEY_REMOTE_LOG_ID:Ljava/lang/String; = "remoteLogID"

.field public static final EXT_KEY_SCENEID:Ljava/lang/String; = "SCENE_ID"

.field public static final EXT_KEY_SCENE_ID_BUNDLE:Ljava/lang/String; = "sceneId"

.field public static final EXT_KEY_STORE_CODE:Ljava/lang/String; = "storeCode"

.field public static final EXT_KEY_TOTAL_PAGE_NUM:Ljava/lang/String; = "total_page_num"

.field public static final EXT_KEY_UID:Ljava/lang/String; = "userid"

.field public static final EXT_KEY_USER_ID_BUNDLE:Ljava/lang/String; = "USER_ID"

.field public static final EXT_KEY_VERIFYID:Ljava/lang/String; = "verifyid"

.field public static final EXT_KEY_VTOKENID:Ljava/lang/String; = "TOKEN_ID"

.field public static final EXT_KEY_WIFI_MAC:Ljava/lang/String; = "wifimac"

.field public static final EXT_KEY_WIFI_NAME:Ljava/lang/String; = "wifiname"

.field public static final EXT_KEY_WITHOUT_PAY:Ljava/lang/String; = "withoutPay"


# virtual methods
.method public abstract auth(Lcom/alipay/mobile/security/bio/api/BioParameter;Lcom/alipay/mobile/security/bio/api/BioCallback;)V
.end method

.method public abstract command(I)V
.end method

.method public abstract destroy()V
.end method

.method public abstract preLoad()I
.end method
