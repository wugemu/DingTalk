.class public final enum Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;
.super Ljava/lang/Enum;
.source "AlertType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

.field public static final enum ALERT_ANDROID_VERSION_LOW:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

.field public static final enum ALERT_BACK:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

.field public static final enum ALERT_FACE_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

.field public static final enum ALERT_FACE_LOGIN_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

.field public static final enum ALERT_FACE_LOGIN_MAX_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

.field public static final enum ALERT_FACE_MAX_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

.field public static final enum ALERT_INIT_CAMERA_ERROR:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

.field public static final enum ALERT_INTERRUPT_RESUME:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

.field public static final enum ALERT_INVALID:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

.field public static final enum ALERT_NO_FRONT_CAMERA:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

.field public static final enum ALERT_NO_PERMISSION_OF_CAMERA:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

.field public static final enum ALERT_REMOTE_COMMAND_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

.field public static final enum ALERT_REMOTE_COMMAND_LOGIN_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

.field public static final enum ALERT_REMOTE_COMMAND_LOGIN_RETRY:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

.field public static final enum ALERT_REMOTE_COMMAND_RETRY:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

.field public static final enum ALERT_REMOTE_NETWORK_ERROR:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

.field public static final enum ALERT_REMOTE_NETWORK_LOGIN_ERROR:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

.field public static final enum ALERT_REMOTE_NETWORK_LOGIN_TIMEOUT_ERROR:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

.field public static final enum ALERT_REMOTE_NETWORK_TIMEOUT_ERROR:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

.field public static final enum ALERT_SYSTEM_ERROR:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

.field public static final enum ALERT_TIMEOUT:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

.field public static final enum ALERT_UNSUPPORTED_CPU:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    const-string/jumbo v1, "ALERT_INVALID"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_INVALID:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .line 9
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    const-string/jumbo v1, "ALERT_BACK"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_BACK:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .line 10
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    const-string/jumbo v1, "ALERT_INTERRUPT_RESUME"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_INTERRUPT_RESUME:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .line 11
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    const-string/jumbo v1, "ALERT_TIMEOUT"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_TIMEOUT:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .line 12
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    const-string/jumbo v1, "ALERT_UNSUPPORTED_CPU"

    invoke-direct {v0, v1, v7}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_UNSUPPORTED_CPU:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .line 13
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    const-string/jumbo v1, "ALERT_NO_PERMISSION_OF_CAMERA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_NO_PERMISSION_OF_CAMERA:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .line 14
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    const-string/jumbo v1, "ALERT_REMOTE_COMMAND_FAIL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_REMOTE_COMMAND_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .line 15
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    const-string/jumbo v1, "ALERT_REMOTE_COMMAND_RETRY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_REMOTE_COMMAND_RETRY:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .line 17
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    const-string/jumbo v1, "ALERT_REMOTE_NETWORK_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_REMOTE_NETWORK_ERROR:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .line 18
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    const-string/jumbo v1, "ALERT_REMOTE_NETWORK_TIMEOUT_ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_REMOTE_NETWORK_TIMEOUT_ERROR:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .line 20
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    const-string/jumbo v1, "ALERT_REMOTE_COMMAND_LOGIN_FAIL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_REMOTE_COMMAND_LOGIN_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .line 21
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    const-string/jumbo v1, "ALERT_REMOTE_COMMAND_LOGIN_RETRY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_REMOTE_COMMAND_LOGIN_RETRY:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .line 22
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    const-string/jumbo v1, "ALERT_REMOTE_NETWORK_LOGIN_ERROR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_REMOTE_NETWORK_LOGIN_ERROR:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .line 23
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    const-string/jumbo v1, "ALERT_REMOTE_NETWORK_LOGIN_TIMEOUT_ERROR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_REMOTE_NETWORK_LOGIN_TIMEOUT_ERROR:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .line 25
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    const-string/jumbo v1, "ALERT_FACE_FAIL"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_FACE_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .line 26
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    const-string/jumbo v1, "ALERT_FACE_LOGIN_FAIL"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_FACE_LOGIN_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .line 27
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    const-string/jumbo v1, "ALERT_FACE_LOGIN_MAX_FAIL"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_FACE_LOGIN_MAX_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .line 28
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    const-string/jumbo v1, "ALERT_FACE_MAX_FAIL"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_FACE_MAX_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .line 29
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    const-string/jumbo v1, "ALERT_NO_FRONT_CAMERA"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_NO_FRONT_CAMERA:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .line 31
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    const-string/jumbo v1, "ALERT_INIT_CAMERA_ERROR"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_INIT_CAMERA_ERROR:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .line 32
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    const-string/jumbo v1, "ALERT_SYSTEM_ERROR"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_SYSTEM_ERROR:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .line 34
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    const-string/jumbo v1, "ALERT_ANDROID_VERSION_LOW"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_ANDROID_VERSION_LOW:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .line 6
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    sget-object v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_INVALID:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_BACK:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_INTERRUPT_RESUME:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_TIMEOUT:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_UNSUPPORTED_CPU:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_NO_PERMISSION_OF_CAMERA:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_REMOTE_COMMAND_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_REMOTE_COMMAND_RETRY:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_REMOTE_NETWORK_ERROR:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_REMOTE_NETWORK_TIMEOUT_ERROR:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_REMOTE_COMMAND_LOGIN_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_REMOTE_COMMAND_LOGIN_RETRY:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_REMOTE_NETWORK_LOGIN_ERROR:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_REMOTE_NETWORK_LOGIN_TIMEOUT_ERROR:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_FACE_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_FACE_LOGIN_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_FACE_LOGIN_MAX_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_FACE_MAX_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_NO_FRONT_CAMERA:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_INIT_CAMERA_ERROR:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_SYSTEM_ERROR:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_ANDROID_VERSION_LOW:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->$VALUES:[Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->$VALUES:[Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    return-object v0
.end method
