.class public Lcom/alipay/mobile/security/faceauth/config/Contacts;
.super Ljava/lang/Object;
.source "Contacts.java"


# static fields
.field public static final BROADCAST_FLAG_AUTOCLOSE:Ljava/lang/String; = "android.broad.autoclose"

.field public static final BROADCAST_FLAG_VALIDATE_FAIL:Ljava/lang/String; = "android.broad.validate_fail"

.field public static final CAMERA_FRONT:Z = true

.field public static final CAMERA_MAX_WIDTH:I = 0x258

.field public static final DEBUG:Z = false

.field public static final DETECT_ACTION_COUNT:I = 0x2

.field public static final DETECT_BEHAVIOR_UNIQUEID:Ljava/lang/String; = "face_behavior_uniqueid"

.field public static final DETECT_ENCRYTO_ENABLE:Z = true

.field public static final DETECT_FACE_CACHE_QUALITY_MIN:I = 0x0

.field public static final DETECT_FACE_DES_SEED:Ljava/lang/String; = "uftwdboQGqE="

.field public static final DETECT_FACE_MD5_SALT:Ljava/lang/String; = "FACE0016-0010-0080-8000-10CA006D2CA5"

.field public static final DETECT_FACE_MINE_MAX:I = 0x5

.field public static final DETECT_FACE_PUB_KEY_NAME:Ljava/lang/String; = "bid-log-key-public.key"

.field public static final DETECT_FACE_PUB_KEY_NAME_T:Ljava/lang/String; = "bid-log-key-public_t.key"

.field public static final DETECT_FACE_QUALITY_MIN:I = 0x19

.field public static final DETECT_FACE_RPC_URL:Ljava/lang/String; = "http://mobilegw.aaa.alipay.net/mgw.htm"

.field public static final DETECT_FACE_SERVERCONFIG:Ljava/lang/String; = "{\"brightness\":50,\"faceQuality\":90}"

.field public static final DETECT_FACE_SERVERVERSION:Ljava/lang/String; = "1.0"

.field public static final DETECT_FACE_SETTING_NAME:Ljava/lang/String; = "facesetting.json"

.field public static final DETECT_FACE_SPEED_SHRESHOLD:I = 0x3e8

.field public static DETECT_IGNORE_SIGN_CHECK:Z = false

.field public static final DETECT_INTENT_INSPECT:Ljava/lang/String; = "face_inspect"

.field public static final DETECT_INTENT_INSPECT_CAMERA:Ljava/lang/String; = "face_inspect_camera"

.field public static final DETECT_INTENT_INSPECT_CPU:Ljava/lang/String; = "face_inspect_cpu"

.field public static final DETECT_INTENT_INSPECT_PERMISSION:Ljava/lang/String; = "face_inspect_permission"

.field public static final DETECT_INTENT_REQ:Ljava/lang/String; = "face_req"

.field public static final DETECT_INTENT_RES:Ljava/lang/String; = "face_res"

.field public static final DETECT_MAIN_ACTIVITY:Ljava/lang/String; = "face.main.activity"

.field public static final DETECT_RECEIVE_ACTION:Ljava/lang/String; = "android.alipay.mobile.security.faceauth"

.field public static DETECT_SERVICE_TYPE:Lcom/alipay/mobile/security/faceauth/FaceServiceType; = null

.field public static final DETECT_STRATEGY_COUNT:I = 0x5

.field public static final DETECT_TIMEOUT:I = 0x1e

.field public static final DETECT_TOAST_ENABLE:Z = true

.field public static final DEVICE_ANGLE:I = 0x2d

.field public static final DRM_VERSION:Ljava/lang/String; = "4.0"

.field public static final FACE_CAPTURE_REGION:Z = false

.field public static final FACE_REGION:Z = false

.field public static final REMOTE_URL_DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "FaceDetect"

.field public static final VERSION:Ljava/lang/String; = "3.1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/security/faceauth/config/Contacts;->DETECT_IGNORE_SIGN_CHECK:Z

    .line 71
    sget-object v0, Lcom/alipay/mobile/security/faceauth/FaceServiceType;->VERIFY:Lcom/alipay/mobile/security/faceauth/FaceServiceType;

    sput-object v0, Lcom/alipay/mobile/security/faceauth/config/Contacts;->DETECT_SERVICE_TYPE:Lcom/alipay/mobile/security/faceauth/FaceServiceType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
