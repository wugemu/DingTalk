.class Lcom/alipay/android/phone/mrpc/core/RpcInvoker$3;
.super Ljava/lang/Object;
.source "RpcInvoker.java"

# interfaces
.implements Lcom/alipay/android/phone/mrpc/core/RpcInvoker$Handle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->preHandle(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/mrpc/core/RpcInvoker;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$method:Ljava/lang/reflect/Method;

.field final synthetic val$proxy:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mrpc/core/RpcInvoker;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$3;->this$0:Lcom/alipay/android/phone/mrpc/core/RpcInvoker;

    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$3;->val$proxy:Ljava/lang/Object;

    iput-object p3, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$3;->val$clazz:Ljava/lang/Class;

    iput-object p4, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$3;->val$method:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$3;->val$args:[Ljava/lang/Object;

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
    .line 199
    iget-object v1, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$3;->val$proxy:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->access$000()Ljava/lang/ThreadLocal;

    move-result-object v2

    const/4 v0, 0x0

    new-array v3, v0, [B

    iget-object v4, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$3;->val$clazz:Ljava/lang/Class;

    iget-object v5, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$3;->val$method:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/alipay/android/phone/mrpc/core/RpcInvoker$3;->val$args:[Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/phone/mrpc/core/RpcInvoker;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v8

    move-object v0, p1

    move-object v7, p2

    invoke-interface/range {v0 .. v8}, Lcom/alipay/android/phone/mrpc/core/RpcInterceptor;->preHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/annotation/Annotation;Ljava/lang/ThreadLocal;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "preHandle stop this call."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
