.class public Lcom/mybank/android/phone/common/interceptor/LoginInterceptor;
.super Ljava/lang/Object;
.source "LoginInterceptor.java"

# interfaces
.implements Lcom/alipay/android/phone/mrpc/core/RpcInterceptor;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/mybank/android/phone/common/interceptor/LoginInterceptor;->a:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public exceptionHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/RpcException;Ljava/lang/annotation/Annotation;)Z
    .locals 8
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p3, "retRawValue"    # [B
    .param p5, "method"    # Ljava/lang/reflect/Method;
    .param p6, "args"    # [Ljava/lang/Object;
    .param p7, "exception"    # Lcom/alipay/mobile/common/rpc/RpcException;
    .param p8, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Object;",
            ">;[B",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "Lcom/alipay/mobile/common/rpc/RpcException;",
            "Ljava/lang/annotation/Annotation;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/rpc/RpcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    .local p2, "retValue":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/lang/Object;>;"
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    .line 63
    .local v3, "processed":Z
    invoke-virtual {p7}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v4

    const/16 v5, 0x7d0

    if-ne v4, v5, :cond_1

    .line 64
    const-class v4, Lcom/mybank/android/phone/common/service/login/LoginService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mybank/android/phone/common/service/login/LoginService;

    .line 67
    .local v1, "loginService":Lcom/mybank/android/phone/common/service/login/LoginService;
    iget-object v4, p0, Lcom/mybank/android/phone/common/interceptor/LoginInterceptor;->a:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/mybank/android/phone/common/service/login/LoginService;->syncAutoLogin(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 68
    new-instance v4, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v5, 0x7d0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/mybank/android/phone/common/interceptor/LoginInterceptor;->a:Landroid/content/Context;

    sget v7, Ljfw$d;->auto_login_failed:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v4

    .line 72
    :cond_0
    :try_start_0
    invoke-virtual {p5, p1, p6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 73
    .local v2, "object":Ljava/lang/Object;
    invoke-virtual {p2, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const/4 v3, 0x0

    .line 79
    .end local v1    # "loginService":Lcom/mybank/android/phone/common/service/login/LoginService;
    .end local v2    # "object":Ljava/lang/Object;
    :cond_1
    return v3

    .line 75
    .restart local v1    # "loginService":Lcom/mybank/android/phone/common/service/login/LoginService;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v4
.end method

.method public postHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/annotation/Annotation;)Z
    .locals 1
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p3, "retRawValue"    # [B
    .param p5, "method"    # Ljava/lang/reflect/Method;
    .param p6, "args"    # [Ljava/lang/Object;
    .param p7, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Object;",
            ">;[B",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/annotation/Annotation;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/rpc/RpcException;
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "retValue":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/lang/Object;>;"
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    return v0
.end method

.method public preHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/annotation/Annotation;Ljava/lang/ThreadLocal;)Z
    .locals 1
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p3, "retRawValue"    # [B
    .param p5, "method"    # Ljava/lang/reflect/Method;
    .param p6, "args"    # [Ljava/lang/Object;
    .param p7, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Object;",
            ">;[B",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/mobile/common/rpc/RpcException;
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "retValue":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/lang/Object;>;"
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p8, "extParams":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x1

    return v0
.end method
