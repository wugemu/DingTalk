.class public final Ljfg$1;
.super Ljava/lang/Object;
.source "RXRequest.java"

# interfaces
.implements Llgs$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llgs$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:[Ljava/lang/Object;

.field final synthetic e:Ljfg;


# direct methods
.method public constructor <init>(Ljfg;Ljava/lang/Class;Ljava/lang/String;Z[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Ljfg;

    .prologue
    .line 26
    iput-object p1, p0, Ljfg$1;->e:Ljfg;

    iput-object p2, p0, Ljfg$1;->a:Ljava/lang/Class;

    iput-object p3, p0, Ljfg$1;->b:Ljava/lang/String;

    iput-boolean p4, p0, Ljfg$1;->c:Z

    iput-object p5, p0, Ljfg$1;->d:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 26
    check-cast p1, Llgy;

    .line 1029
    iget-object v3, p0, Ljfg$1;->a:Ljava/lang/Class;

    iget-object v4, p0, Ljfg$1;->b:Ljava/lang/String;

    iget-boolean v5, p0, Ljfg$1;->c:Z

    iget-object v6, p0, Ljfg$1;->d:[Ljava/lang/Object;

    .line 1036
    const-class v1, Lcom/mybank/android/phone/common/service/api/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mybank/android/phone/common/service/api/RpcService;

    .line 1037
    invoke-virtual {v1, v3}, Lcom/mybank/android/phone/common/service/api/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 1040
    if-eqz v6, :cond_2

    .line 1042
    :try_start_0
    array-length v1, v6

    new-array v7, v1, [Ljava/lang/Class;

    .line 1044
    array-length v8, v6

    move v1, v2

    :goto_0
    if-ge v1, v8, :cond_0

    .line 1045
    aget-object v2, v6, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v7, v1

    .line 1044
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1047
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1054
    :goto_1
    if-eqz v6, :cond_3

    .line 1055
    :try_start_1
    invoke-virtual {v1, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1075
    :goto_2
    :try_start_2
    instance-of v1, v2, Lcom/mybank/mrpc/result/CommonResult;

    if-eqz v1, :cond_1

    .line 1076
    move-object v0, v2

    check-cast v0, Lcom/mybank/mrpc/result/CommonResult;

    move-object v1, v0

    .line 1077
    iget-boolean v3, v1, Lcom/mybank/mrpc/result/CommonResult;->success:Z

    if-eqz v3, :cond_5

    .line 1078
    invoke-virtual {p1, v2}, Llgy;->onNext(Ljava/lang/Object;)V

    .line 1080
    if-eqz v5, :cond_1

    .line 1081
    invoke-virtual {p1}, Llgy;->onCompleted()V

    .line 1092
    :cond_1
    :goto_3
    return-void

    .line 1049
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_1

    .line 1057
    :cond_3
    const/4 v2, 0x0

    :try_start_3
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_2

    .line 1059
    :catch_0
    move-exception v1

    move-object v2, v1

    .line 1062
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 1063
    instance-of v3, v1, Lcom/alipay/mobile/common/rpc/RpcException;

    if-eqz v3, :cond_4

    .line 1064
    check-cast v1, Lcom/alipay/mobile/common/rpc/RpcException;

    .line 1065
    new-instance v2, Lrx/exceptions/OnErrorNotImplementedException;

    invoke-direct {v2, v1}, Lrx/exceptions/OnErrorNotImplementedException;-><init>(Ljava/lang/Throwable;)V

    .line 1067
    invoke-virtual {p1, v1}, Llgy;->onError(Ljava/lang/Throwable;)V

    .line 1068
    throw v2

    .line 1092
    :catch_1
    move-exception v1

    goto :goto_3

    .line 1070
    :cond_4
    invoke-virtual {p1, v2}, Llgy;->onError(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1090
    :catchall_0
    move-exception v1

    throw v1

    .line 1084
    :cond_5
    :try_start_5
    new-instance v2, Lcom/mybank/android/phone/common/component/custom/RpcBizException;

    invoke-direct {v2, v1}, Lcom/mybank/android/phone/common/component/custom/RpcBizException;-><init>(Lcom/mybank/mrpc/result/CommonResult;)V

    invoke-virtual {p1, v2}, Llgy;->onError(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method
