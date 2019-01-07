.class public final enum Lcom/alipay/mobile/security/faceauth/InvokeType;
.super Ljava/lang/Enum;
.source "InvokeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/security/faceauth/InvokeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/security/faceauth/InvokeType;

.field public static final enum FAIL:Lcom/alipay/mobile/security/faceauth/InvokeType;

.field public static final enum INTERRUPT:Lcom/alipay/mobile/security/faceauth/InvokeType;

.field public static final enum LIVENESS_FAILED:Lcom/alipay/mobile/security/faceauth/InvokeType;

.field public static final enum MONITOR:Lcom/alipay/mobile/security/faceauth/InvokeType;

.field public static final enum NETWORK:Lcom/alipay/mobile/security/faceauth/InvokeType;

.field public static final enum NORMAL:Lcom/alipay/mobile/security/faceauth/InvokeType;

.field public static final enum SERVER_FAIL:Lcom/alipay/mobile/security/faceauth/InvokeType;

.field public static final enum TIMEOUT:Lcom/alipay/mobile/security/faceauth/InvokeType;


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/alipay/mobile/security/faceauth/InvokeType;

    const-string/jumbo v1, "NETWORK"

    const-string/jumbo v2, "network"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/mobile/security/faceauth/InvokeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/InvokeType;->NETWORK:Lcom/alipay/mobile/security/faceauth/InvokeType;

    .line 11
    new-instance v0, Lcom/alipay/mobile/security/faceauth/InvokeType;

    const-string/jumbo v1, "SERVER_FAIL"

    const-string/jumbo v2, "server_fail"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/mobile/security/faceauth/InvokeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/InvokeType;->SERVER_FAIL:Lcom/alipay/mobile/security/faceauth/InvokeType;

    .line 12
    new-instance v0, Lcom/alipay/mobile/security/faceauth/InvokeType;

    const-string/jumbo v1, "INTERRUPT"

    const-string/jumbo v2, "interrupt"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/mobile/security/faceauth/InvokeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/InvokeType;->INTERRUPT:Lcom/alipay/mobile/security/faceauth/InvokeType;

    new-instance v0, Lcom/alipay/mobile/security/faceauth/InvokeType;

    const-string/jumbo v1, "TIMEOUT"

    const-string/jumbo v2, "timeout"

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/mobile/security/faceauth/InvokeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/InvokeType;->TIMEOUT:Lcom/alipay/mobile/security/faceauth/InvokeType;

    new-instance v0, Lcom/alipay/mobile/security/faceauth/InvokeType;

    const-string/jumbo v1, "NORMAL"

    const-string/jumbo v2, "normal"

    invoke-direct {v0, v1, v8, v2}, Lcom/alipay/mobile/security/faceauth/InvokeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/InvokeType;->NORMAL:Lcom/alipay/mobile/security/faceauth/InvokeType;

    new-instance v0, Lcom/alipay/mobile/security/faceauth/InvokeType;

    const-string/jumbo v1, "FAIL"

    const/4 v2, 0x5

    const-string/jumbo v3, "fail"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/security/faceauth/InvokeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/InvokeType;->FAIL:Lcom/alipay/mobile/security/faceauth/InvokeType;

    new-instance v0, Lcom/alipay/mobile/security/faceauth/InvokeType;

    const-string/jumbo v1, "MONITOR"

    const/4 v2, 0x6

    const-string/jumbo v3, "monitor"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/security/faceauth/InvokeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/InvokeType;->MONITOR:Lcom/alipay/mobile/security/faceauth/InvokeType;

    new-instance v0, Lcom/alipay/mobile/security/faceauth/InvokeType;

    const-string/jumbo v1, "LIVENESS_FAILED"

    const/4 v2, 0x7

    const-string/jumbo v3, "liveness_failed"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/security/faceauth/InvokeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/InvokeType;->LIVENESS_FAILED:Lcom/alipay/mobile/security/faceauth/InvokeType;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alipay/mobile/security/faceauth/InvokeType;

    sget-object v1, Lcom/alipay/mobile/security/faceauth/InvokeType;->NETWORK:Lcom/alipay/mobile/security/faceauth/InvokeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/security/faceauth/InvokeType;->SERVER_FAIL:Lcom/alipay/mobile/security/faceauth/InvokeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/security/faceauth/InvokeType;->INTERRUPT:Lcom/alipay/mobile/security/faceauth/InvokeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/security/faceauth/InvokeType;->TIMEOUT:Lcom/alipay/mobile/security/faceauth/InvokeType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/mobile/security/faceauth/InvokeType;->NORMAL:Lcom/alipay/mobile/security/faceauth/InvokeType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/mobile/security/faceauth/InvokeType;->FAIL:Lcom/alipay/mobile/security/faceauth/InvokeType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/mobile/security/faceauth/InvokeType;->MONITOR:Lcom/alipay/mobile/security/faceauth/InvokeType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/mobile/security/faceauth/InvokeType;->LIVENESS_FAILED:Lcom/alipay/mobile/security/faceauth/InvokeType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/security/faceauth/InvokeType;->$VALUES:[Lcom/alipay/mobile/security/faceauth/InvokeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/alipay/mobile/security/faceauth/InvokeType;->value:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/security/faceauth/InvokeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/alipay/mobile/security/faceauth/InvokeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/faceauth/InvokeType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/security/faceauth/InvokeType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/alipay/mobile/security/faceauth/InvokeType;->$VALUES:[Lcom/alipay/mobile/security/faceauth/InvokeType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/security/faceauth/InvokeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/security/faceauth/InvokeType;

    return-object v0
.end method
