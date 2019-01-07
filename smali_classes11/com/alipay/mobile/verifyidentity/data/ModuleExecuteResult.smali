.class public Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;
.super Ljava/lang/Object;
.source "ModuleExecuteResult.java"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Ljava/lang/String;

.field protected mMICRpcResponse:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->b:Z

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->c:Ljava/lang/String;

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
.method public getExtInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public getLogicModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getMICRpcResponse()Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->mMICRpcResponse:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    return-object v0
.end method

.method public isLocalTrans()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->b:Z

    return v0
.end method

.method public setExtInfo(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->a:Ljava/util/HashMap;

    .line 45
    return-void
.end method

.method public setLocalTrans(Z)V
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->b:Z

    .line 57
    return-void
.end method

.method public setLogicModuleName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->c:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setMICRpcResponse(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->mMICRpcResponse:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    .line 37
    return-void
.end method
