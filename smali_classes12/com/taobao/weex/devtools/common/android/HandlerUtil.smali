.class public final Lcom/taobao/weex/devtools/common/android/HandlerUtil;
.super Ljava/lang/Object;
.source "HandlerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/common/android/HandlerUtil$WaitableRunnable;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static checkThreadAccess(Landroid/os/Handler;)Z
    .locals 2
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 29
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static postAndWait(Landroid/os/Handler;Lcom/taobao/weex/devtools/common/UncheckedCallable;)Ljava/lang/Object;
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Handler;",
            "Lcom/taobao/weex/devtools/common/UncheckedCallable",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "c":Lcom/taobao/weex/devtools/common/UncheckedCallable;, "Lcom/taobao/weex/devtools/common/UncheckedCallable<TV;>;"
    invoke-static {p0}, Lcom/taobao/weex/devtools/common/android/HandlerUtil;->checkThreadAccess(Landroid/os/Handler;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    :try_start_0
    invoke-interface {p1}, Lcom/taobao/weex/devtools/common/UncheckedCallable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 68
    :goto_0
    return-object v2

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Lcom/taobao/weex/devtools/common/android/HandlerUtil$1;

    invoke-direct {v1, p1}, Lcom/taobao/weex/devtools/common/android/HandlerUtil$1;-><init>(Lcom/taobao/weex/devtools/common/UncheckedCallable;)V

    .line 68
    .local v1, "wrapper":Lcom/taobao/weex/devtools/common/android/HandlerUtil$WaitableRunnable;, "Lcom/taobao/weex/devtools/common/android/HandlerUtil$WaitableRunnable<TV;>;"
    invoke-virtual {v1, p0}, Lcom/taobao/weex/devtools/common/android/HandlerUtil$WaitableRunnable;->invoke(Landroid/os/Handler;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public static postAndWait(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 79
    invoke-static {p0}, Lcom/taobao/weex/devtools/common/android/HandlerUtil;->checkThreadAccess(Landroid/os/Handler;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 88
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    new-instance v1, Lcom/taobao/weex/devtools/common/android/HandlerUtil$2;

    invoke-direct {v1, p1}, Lcom/taobao/weex/devtools/common/android/HandlerUtil$2;-><init>(Ljava/lang/Runnable;)V

    .line 96
    .local v1, "wrapper":Lcom/taobao/weex/devtools/common/android/HandlerUtil$WaitableRunnable;, "Lcom/taobao/weex/devtools/common/android/HandlerUtil$WaitableRunnable<Ljava/lang/Void;>;"
    invoke-virtual {v1, p0}, Lcom/taobao/weex/devtools/common/android/HandlerUtil$WaitableRunnable;->invoke(Landroid/os/Handler;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static verifyThreadAccess(Landroid/os/Handler;)V
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 39
    invoke-static {p0}, Lcom/taobao/weex/devtools/common/android/HandlerUtil;->checkThreadAccess(Landroid/os/Handler;)Z

    move-result v0

    invoke-static {v0}, Lcom/taobao/weex/devtools/common/Util;->throwIfNot(Z)V

    .line 40
    return-void
.end method
