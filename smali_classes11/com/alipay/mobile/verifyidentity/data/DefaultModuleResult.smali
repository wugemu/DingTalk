.class public Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;
.super Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;
.source "DefaultModuleResult.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 17
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;-><init>()V

    .line 18
    new-instance v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    invoke-direct {v0}, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;->mMICRpcResponse:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;->mMICRpcResponse:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    iput-boolean v1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->success:Z

    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;->mMICRpcResponse:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    iput-boolean v1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->finish:Z

    .line 21
    const-string/jumbo v0, "1003"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "1000"

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;->mMICRpcResponse:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    iput-boolean v1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifySuccess:Z

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;->mMICRpcResponse:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    iput-object p1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->finishCode:Ljava/lang/String;

    .line 26
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_2
    return-void
.end method
