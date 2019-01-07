.class public final Ljfl;
.super Lcom/mybank/android/phone/common/service/api/RpcService;
.source "RpcServiceImpl.java"


# instance fields
.field private a:Lcom/alipay/android/phone/mrpc/core/RpcFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/phone/mrpc/core/Config;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/alipay/android/phone/mrpc/core/Config;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/mybank/android/phone/common/service/api/RpcService;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/RpcFactory;

    invoke-direct {v0, p2}, Lcom/alipay/android/phone/mrpc/core/RpcFactory;-><init>(Lcom/alipay/android/phone/mrpc/core/Config;)V

    iput-object v0, p0, Ljfl;->a:Lcom/alipay/android/phone/mrpc/core/RpcFactory;

    .line 23
    iget-object v0, p0, Ljfl;->a:Lcom/alipay/android/phone/mrpc/core/RpcFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mrpc/core/RpcFactory;->setContext(Landroid/content/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method public final addRpcInterceptor(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/RpcInterceptor;)V
    .locals 1
    .param p2, "rpcInterceptor"    # Lcom/alipay/android/phone/mrpc/core/RpcInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/alipay/android/phone/mrpc/core/RpcInterceptor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Ljfl;->a:Lcom/alipay/android/phone/mrpc/core/RpcFactory;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/mrpc/core/RpcFactory;->addRpcInterceptor(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/RpcInterceptor;)V

    .line 34
    return-void
.end method

.method public final getConfig()Lcom/alipay/android/phone/mrpc/core/Config;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Ljfl;->a:Lcom/alipay/android/phone/mrpc/core/RpcFactory;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/RpcFactory;->getConfig()Lcom/alipay/android/phone/mrpc/core/Config;

    move-result-object v0

    return-object v0
.end method

.method public final getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljfl;->a:Lcom/alipay/android/phone/mrpc/core/RpcFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mrpc/core/RpcFactory;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 44
    return-void
.end method

.method protected final onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 49
    return-void
.end method
