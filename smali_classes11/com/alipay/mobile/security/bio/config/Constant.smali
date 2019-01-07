.class public Lcom/alipay/mobile/security/bio/config/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static final BIOLOGY_CALLBACK_ACTION:Ljava/lang/String; = "com.alipay.mobile.security.bio.action.callback"

.field public static final BIOLOGY_CALLBACK_ACTION_REV:Ljava/lang/String; = "com.alipay.mobile.security.bio.action.callback.rev"

.field public static final BIOLOGY_DES_KEY_SEED:Ljava/lang/String; = "BIOLOGY_DES_KEY_SEED"

.field public static final BIOLOGY_FLAG_AUTOCLOSE:Ljava/lang/String; = "com.alipay.mobile.security.bio.autoclose"

.field public static final BIOLOGY_FLAG_SERVER_CONTINUE:Ljava/lang/String; = "com.alipay.mobile.security.bio.server.continue"

.field public static final BIOLOGY_FLAG_SERVER_FAIL:Ljava/lang/String; = "com.alipay.mobile.security.bio.server.fail"

.field public static final BIOLOGY_FLAG_SERVER_RETRY:Ljava/lang/String; = "com.alipay.mobile.security.bio.server.retry"

.field public static final BIOLOGY_FLAG_SERVER_SUCCESS:Ljava/lang/String; = "com.alipay.mobile.security.bio.server.success"

.field public static final BIOLOGY_INTENT_ACTION_INFO:Ljava/lang/String; = "com.alipay.mobile.security.bio.action.intent.app"

.field public static final BIOLOGY_INTENT_ACTION_REV:Ljava/lang/String; = "com.alipay.mobile.security.bio.action.intent.rev"

.field public static final DEBUG:Z = false

.field public static final DEBUG_FILE_PATH:Ljava/lang/String; = "/sdcard/BIOLOGY/bioLog.txt"

.field public static final DEBUG_LOG_TAG:Ljava/lang/String; = "BIOLOGY"

.field public static final DETECT_FACE_PUB_KEY_NAME:Ljava/lang/String; = "bid-log-key-public.key"

.field public static final DETECT_FACE_PUB_KEY_NAME_B:Ljava/lang/String; = "bid-log-key-public_b.key"

.field public static final DETECT_FACE_PUB_KEY_NAME_T:Ljava/lang/String; = "bid-log-key-public_t.key"

.field public static final DETECT_FACE_SETTING_NAME:Ljava/lang/String; = "facesetting.json"

.field public static final DEVICE_ANGLE:I = 0x2d

.field public static final ENABLE_FACE_DETECT:Z = true

.field public static final FRAMEWORK_VERSION:Ljava/lang/String; = "2.3.0"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOG:Z = true

.field public static final METAINFO_PATH:Ljava/lang/String; = "com.alipay.mobile.security.bio"

.field public static final RPC_TEST_URL:Ljava/lang/String; = "http://mobilegw.dev03.alipay.net/mgw.htm"

.field public static final RPC_TYPE:Lcom/alipay/mobile/security/bio/config/RPCServiceType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/alipay/mobile/security/bio/config/RPCServiceType;->VERIFY:Lcom/alipay/mobile/security/bio/config/RPCServiceType;

    sput-object v0, Lcom/alipay/mobile/security/bio/config/Constant;->RPC_TYPE:Lcom/alipay/mobile/security/bio/config/RPCServiceType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
