.class synthetic Lcom/alipay/mobile/verifyidentity/engine/TaskManager$3;
.super Ljava/lang/Object;
.source "TaskManager.java"


# static fields
.field static final synthetic $SwitchMap$com$alipay$mobile$verifyidentity$common$VerifyType:[I

.field public static final sInjector:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$3;->sInjector:Ljava/lang/Class;

    .line 296
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->values()[Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$3;->$SwitchMap$com$alipay$mobile$verifyidentity$common$VerifyType:[I

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$3;->$SwitchMap$com$alipay$mobile$verifyidentity$common$VerifyType:[I

    sget-object v1, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->TOKEN:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$3;->$SwitchMap$com$alipay$mobile$verifyidentity$common$VerifyType:[I

    sget-object v1, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->VERIFYID:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    return-void

    .line 4294967295
    :cond_0
    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method
