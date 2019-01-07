.class public interface abstract Lcom/taobao/wireless/security/sdk/nocaptcha/INoCaptchaComponent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/wireless/security/sdk/IComponent;


# annotations
.annotation runtime Lcom/alibaba/wireless/security/framework/InterfacePluginInfo;
    pluginName = "nocaptcha"
.end annotation


# static fields
.field public static final NC_INIT_STAGE:I = 0x1

.field public static final NC_VERIFY_SATGE:I = 0x2

.field public static final SG_ERROR_NOCAPTCHA:I = 0x4b0

.field public static final SG_NC_FAILED:I = 0x69

.field public static final SG_NC_HTTP_NO_TOKEN:I = 0x4b6

.field public static final SG_NC_HTTP_REQUEST_FAIL:I = 0x4b7

.field public static final SG_NC_INIT_SUCCEED:I = 0x65

.field public static final SG_NC_INVALID_PARA:I = 0x4b1

.field public static final SG_NC_NOT_INIT_YET:I = 0x4b3

.field public static final SG_NC_NO_MEMORY:I = 0x4b2

.field public static final SG_NC_QUEUE_FULL:I = 0x4b4

.field public static final SG_NC_RETRY:I = 0x67

.field public static final SG_NC_RETRY_TO_MAX:I = 0x4b5

.field public static final SG_NC_SERVER_FAULT:I = 0x68

.field public static final SG_NC_SERVER_RETURN_ERROR:I = 0x4b8

.field public static final SG_NC_START:I = 0x64

.field public static final SG_NC_UNKNOWN_ERROR:I = 0x513

.field public static final SG_NC_VERI_APPKEY_MISMATCH:I = 0x4bb

.field public static final SG_NC_VERI_GET_TRACE_FAIL:I = 0x4ba

.field public static final SG_NC_VERI_GET_WUA_FAIL:I = 0x4b9

.field public static final SG_NC_VERI_SESSION_EXPIRED:I = 0x4bc

.field public static final SG_NC_VERI_SUCCEED:I = 0x66

.field public static final errorCode:Ljava/lang/String; = "errorCode"

.field public static final sessionId:Ljava/lang/String; = "sessionId"

.field public static final sig:Ljava/lang/String; = "sig"

.field public static final status:Ljava/lang/String; = "status"

.field public static final token:Ljava/lang/String; = "token"

.field public static final x1:Ljava/lang/String; = "x1"

.field public static final x2:Ljava/lang/String; = "x2"

.field public static final y1:Ljava/lang/String; = "y1"

.field public static final y2:Ljava/lang/String; = "y2"


# virtual methods
.method public abstract initNoCaptcha(Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V
.end method

.method public abstract noCaptchaVerification(Ljava/lang/String;)V
.end method

.method public abstract putNoCaptchaTraceRecord(Landroid/view/MotionEvent;)Z
.end method
