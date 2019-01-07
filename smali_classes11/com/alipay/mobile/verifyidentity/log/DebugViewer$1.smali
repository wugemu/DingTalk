.class final Lcom/alipay/mobile/verifyidentity/log/DebugViewer$1;
.super Ljava/lang/Object;
.source "DebugViewer.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 76
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


# virtual methods
.method public final add(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public final gotRpcResult(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public final sendRpc(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public final start()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public final unregisterSensorListener()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
