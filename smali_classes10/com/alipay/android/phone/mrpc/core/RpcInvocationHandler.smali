.class public Lcom/alipay/android/phone/mrpc/core/RpcInvocationHandler;
.super Ljava/lang/Object;
.source "RpcInvocationHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field protected mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected mConfig:Lcom/alipay/android/phone/mrpc/core/Config;

.field protected mRpcInvoker:Lcom/alipay/android/phone/mrpc/core/RpcInvoker;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/Config;Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/RpcInvoker;)V
    .locals 0
    .param p1, "config"    # Lcom/alipay/android/phone/mrpc/core/Config;
    .param p3, "rpcInvoker"    # Lcom/alipay/android/phone/mrpc/core/RpcInvoker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/mrpc/core/Config;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alipay/android/phone/mrpc/core/RpcInvoker;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvocationHandler;->mConfig:Lcom/alipay/android/phone/mrpc/core/Config;

    .line 35
    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvocationHandler;->mClazz:Ljava/lang/Class;

    .line 36
    iput-object p3, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvocationHandler;->mRpcInvoker:Lcom/alipay/android/phone/mrpc/core/RpcInvoker;

    .line 37
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/rpc/RpcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvocationHandler;->mRpcInvoker:Lcom/alipay/android/phone/mrpc/core/RpcInvoker;

    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvocationHandler;->mClazz:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
