.class public abstract Lcom/mybank/android/phone/common/service/api/AlipayRpcService;
.super Lcom/mybank/android/phone/common/service/api/CommonService;
.source "AlipayRpcService.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/mybank/android/phone/common/service/api/CommonService;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method public abstract addRpcInterceptor(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/RpcInterceptor;)V
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
.end method

.method public abstract getConfig()Lcom/alipay/android/phone/mrpc/core/Config;
.end method

.method public abstract getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method
