.class public Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;
.super Lcom/alipay/android/phone/mrpc/core/RpcClient;
.source "DefaultRpcClient.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultRpcFactory:Lcom/alipay/android/phone/mrpc/core/RpcFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/RpcClient;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/phone/mrpc/core/Config;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/alipay/android/phone/mrpc/core/Config;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/RpcClient;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;->mContext:Landroid/content/Context;

    .line 21
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/RpcFactory;

    invoke-direct {v0, p2}, Lcom/alipay/android/phone/mrpc/core/RpcFactory;-><init>(Lcom/alipay/android/phone/mrpc/core/Config;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;->mDefaultRpcFactory:Lcom/alipay/android/phone/mrpc/core/RpcFactory;

    .line 22
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;->mDefaultRpcFactory:Lcom/alipay/android/phone/mrpc/core/RpcFactory;

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mrpc/core/RpcFactory;->setContext(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createConfig(Lcom/alipay/android/phone/mrpc/core/RpcParams;)Lcom/alipay/android/phone/mrpc/core/Config;
    .locals 1
    .param p1, "rpcParams"    # Lcom/alipay/android/phone/mrpc/core/RpcParams;

    .prologue
    .line 35
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient$1;-><init>(Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;Lcom/alipay/android/phone/mrpc/core/RpcParams;)V

    return-object v0
.end method


# virtual methods
.method public getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
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
    .line 31
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;->mDefaultRpcFactory:Lcom/alipay/android/phone/mrpc/core/RpcFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mrpc/core/RpcFactory;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRpcProxy(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/RpcParams;)Ljava/lang/Object;
    .locals 2
    .param p2, "rpcParams"    # Lcom/alipay/android/phone/mrpc/core/RpcParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alipay/android/phone/mrpc/core/RpcParams;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 27
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/alipay/android/phone/mrpc/core/RpcFactory;

    invoke-direct {p0, p2}, Lcom/alipay/android/phone/mrpc/core/DefaultRpcClient;->createConfig(Lcom/alipay/android/phone/mrpc/core/RpcParams;)Lcom/alipay/android/phone/mrpc/core/Config;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/mrpc/core/RpcFactory;-><init>(Lcom/alipay/android/phone/mrpc/core/Config;)V

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/mrpc/core/RpcFactory;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
