.class Lcom/alipay/android/phone/mrpc/core/RpcInvoker$2;
.super Ljava/lang/Object;
.source "RpcInvoker.java"

# interfaces
.implements Lcom/alipay/android/phone/mrpc/core/RpcInvoker$Handle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->exceptionHandle(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/RpcException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/mrpc/core/RpcInvoker;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$exception:Lcom/alipay/mobile/common/rpc/RpcException;

.field final synthetic val$method:Ljava/lang/reflect/Method;

.field final synthetic val$proxy:Ljava/lang/Object;

.field final synthetic val$rawResult:[B


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mrpc/core/RpcInvoker;Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/RpcException;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$2;->this$0:Lcom/alipay/android/phone/mrpc/core/RpcInvoker;

    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$2;->val$proxy:Ljava/lang/Object;

    iput-object p3, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$2;->val$rawResult:[B

    iput-object p4, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$2;->val$clazz:Ljava/lang/Class;

    iput-object p5, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$2;->val$method:Ljava/lang/reflect/Method;

    iput-object p6, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$2;->val$args:[Ljava/lang/Object;

    iput-object p7, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$2;->val$exception:Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/alipay/android/phone/mrpc/core/RpcInterceptor;Ljava/lang/annotation/Annotation;)Z
    .locals 9
    .param p1, "rpcInterceptor"    # Lcom/alipay/android/phone/mrpc/core/RpcInterceptor;
    .param p2, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/rpc/RpcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$2;->val$proxy:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->access$000()Ljava/lang/ThreadLocal;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$2;->val$rawResult:[B

    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$2;->val$clazz:Ljava/lang/Class;

    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$2;->val$method:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$2;->val$args:[Ljava/lang/Object;

    iget-object v7, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$2;->val$exception:Lcom/alipay/mobile/common/rpc/RpcException;

    move-object v0, p1

    move-object v8, p2

    invoke-interface/range {v0 .. v8}, Lcom/alipay/android/phone/mrpc/core/RpcInterceptor;->exceptionHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/RpcException;Ljava/lang/annotation/Annotation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
