.class public final enum Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;
.super Ljava/lang/Enum;
.source "EnvErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

.field public static final enum ENV_ERROR_HIGH_OS:Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

.field public static final enum ENV_ERROR_INVALID:Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

.field public static final enum ENV_ERROR_LOW_OS:Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

.field public static final enum ENV_ERROR_NO_FRONT_CAMERA:Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

.field public static final enum ENV_ERROR_NO_PERMISSION_OF_CAMERA:Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

.field public static final enum ENV_ERROR_UNSUPPORTED_CPU:Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;


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
    new-instance v0, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    const-string/jumbo v1, "ENV_ERROR_INVALID"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;->ENV_ERROR_INVALID:Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    .line 8
    new-instance v0, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    const-string/jumbo v1, "ENV_ERROR_LOW_OS"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;->ENV_ERROR_LOW_OS:Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    .line 9
    new-instance v0, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    const-string/jumbo v1, "ENV_ERROR_HIGH_OS"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;->ENV_ERROR_HIGH_OS:Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    .line 10
    new-instance v0, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    const-string/jumbo v1, "ENV_ERROR_UNSUPPORTED_CPU"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;->ENV_ERROR_UNSUPPORTED_CPU:Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    .line 11
    new-instance v0, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    const-string/jumbo v1, "ENV_ERROR_NO_PERMISSION_OF_CAMERA"

    invoke-direct {v0, v1, v7}, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;->ENV_ERROR_NO_PERMISSION_OF_CAMERA:Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    .line 12
    new-instance v0, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    const-string/jumbo v1, "ENV_ERROR_NO_FRONT_CAMERA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;->ENV_ERROR_NO_FRONT_CAMERA:Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    sget-object v1, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;->ENV_ERROR_INVALID:Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;->ENV_ERROR_LOW_OS:Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;->ENV_ERROR_HIGH_OS:Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;->ENV_ERROR_UNSUPPORTED_CPU:Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;->ENV_ERROR_NO_PERMISSION_OF_CAMERA:Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;->ENV_ERROR_NO_FRONT_CAMERA:Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;->$VALUES:[Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;->$VALUES:[Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    return-object v0
.end method
