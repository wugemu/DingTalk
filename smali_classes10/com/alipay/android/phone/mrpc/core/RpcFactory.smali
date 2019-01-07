.class public Lcom/alipay/android/phone/mrpc/core/RpcFactory;
.super Ljava/lang/Object;
.source "RpcFactory.java"


# instance fields
.field private mConfig:Lcom/alipay/android/phone/mrpc/core/Config;

.field private mContext:Landroid/content/Context;

.field private mInterceptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/alipay/android/phone/mrpc/core/RpcInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private mRpcInvoker:Lcom/alipay/android/phone/mrpc/core/RpcInvoker;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/Config;)V
    .locals 1
    .param p1, "config"    # Lcom/alipay/android/phone/mrpc/core/Config;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/RpcFactory;->mConfig:Lcom/alipay/android/phone/mrpc/core/Config;

    .line 31
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;-><init>(Lcom/alipay/android/phone/mrpc/core/RpcFactory;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcFactory;->mRpcInvoker:Lcom/alipay/android/phone/mrpc/core/RpcInvoker;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcFactory;->mInterceptors:Ljava/util/Map;

    .line 33
    return-void
.end method


# virtual methods
.method public addRpcInterceptor(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/RpcInterceptor;)V
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
    .line 51
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcFactory;->mInterceptors:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public findRpcInterceptor(Ljava/lang/Class;)Lcom/alipay/android/phone/mrpc/core/RpcInterceptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/alipay/android/phone/mrpc/core/RpcInterceptor;"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcFactory;->mInterceptors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mrpc/core/RpcInterceptor;

    return-object v0
.end method

.method public getConfig()Lcom/alipay/android/phone/mrpc/core/Config;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcFactory;->mConfig:Lcom/alipay/android/phone/mrpc/core/Config;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/alipay/android/phone/mrpc/core/RpcInvocationHandler;

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/RpcFactory;->mConfig:Lcom/alipay/android/phone/mrpc/core/Config;

    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/RpcFactory;->mRpcInvoker:Lcom/alipay/android/phone/mrpc/core/RpcInvoker;

    invoke-direct {v2, v3, p1, v4}, Lcom/alipay/android/phone/mrpc/core/RpcInvocationHandler;-><init>(Lcom/alipay/android/phone/mrpc/core/Config;Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/RpcInvoker;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/RpcFactory;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method
