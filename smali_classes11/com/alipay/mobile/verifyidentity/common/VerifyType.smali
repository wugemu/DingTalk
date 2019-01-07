.class public final enum Lcom/alipay/mobile/verifyidentity/common/VerifyType;
.super Ljava/lang/Enum;
.source "VerifyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/verifyidentity/common/VerifyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/verifyidentity/common/VerifyType;

.field public static final enum FAST_DIRECT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

.field public static final enum FAST_INIT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

.field public static final enum TOKEN:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

.field public static final enum VERIFY:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

.field public static final enum VERIFYID:Lcom/alipay/mobile/verifyidentity/common/VerifyType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    const-string/jumbo v1, "TOKEN"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->TOKEN:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    .line 17
    new-instance v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    const-string/jumbo v1, "VERIFYID"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->VERIFYID:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    .line 22
    new-instance v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    const-string/jumbo v1, "FAST_INIT"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->FAST_INIT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    .line 27
    new-instance v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    const-string/jumbo v1, "FAST_DIRECT"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->FAST_DIRECT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    .line 33
    new-instance v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    const-string/jumbo v1, "VERIFY"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->VERIFY:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->TOKEN:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->VERIFYID:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->FAST_INIT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->FAST_DIRECT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->VERIFY:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->$VALUES:[Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/common/VerifyType;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/verifyidentity/common/VerifyType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->$VALUES:[Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/verifyidentity/common/VerifyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    return-object v0
.end method
