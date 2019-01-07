.class Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils$EnvModeConfig;
.super Ljava/lang/Object;
.source "PlatformUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EnvModeConfig"
.end annotation


# static fields
.field public static ENVIRONMENT_DAILY:I

.field public static ENVIRONMENT_ONLINE:I

.field public static ENVIRONMENT_PRE:I

.field public static ENVIRONMENT_SIT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils$EnvModeConfig;->ENVIRONMENT_ONLINE:I

    .line 140
    const/4 v0, 0x1

    sput v0, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils$EnvModeConfig;->ENVIRONMENT_DAILY:I

    .line 141
    const/4 v0, 0x2

    sput v0, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils$EnvModeConfig;->ENVIRONMENT_PRE:I

    .line 142
    const/4 v0, 0x3

    sput v0, Lcom/alipay/mobile/verifyidentity/uitl/PlatformUtils$EnvModeConfig;->ENVIRONMENT_SIT:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 138
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
