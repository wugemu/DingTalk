.class Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient$1;
.super Ljava/lang/Object;
.source "DefaultRpcClient.java"

# interfaces
.implements Lcom/alipay/android/phone/mrpc/core/Config;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;->createConfig(Lcom/alipay/android/phone/mrpc/core/RpcParams;)Lcom/alipay/android/phone/mrpc/core/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;

.field final synthetic val$rpcParams:Lcom/alipay/android/phone/mrpc/core/RpcParams;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;Lcom/alipay/android/phone/mrpc/core/RpcParams;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient$1;->this$0:Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;

    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient$1;->val$rpcParams:Lcom/alipay/android/phone/mrpc/core/RpcParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient$1;->this$0:Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;->access$000(Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getRpcParams()Lcom/alipay/android/phone/mrpc/core/RpcParams;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient$1;->val$rpcParams:Lcom/alipay/android/phone/mrpc/core/RpcParams;

    return-object v0
.end method

.method public getTransport()Lcom/alipay/android/phone/mrpc/core/Transport;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient$1;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/HttpManager;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mrpc/core/HttpManager;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient$1;->val$rpcParams:Lcom/alipay/android/phone/mrpc/core/RpcParams;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/RpcParams;->getGwUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGzip()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient$1;->val$rpcParams:Lcom/alipay/android/phone/mrpc/core/RpcParams;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/RpcParams;->isGzip()Z

    move-result v0

    return v0
.end method

.method public sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 64
    const-string/jumbo v0, ""

    return-object v0
.end method
