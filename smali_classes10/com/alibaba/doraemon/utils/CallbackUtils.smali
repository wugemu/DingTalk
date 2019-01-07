.class public Lcom/alibaba/doraemon/utils/CallbackUtils;
.super Ljava/lang/Object;
.source "CallbackUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static runOnUiThread(Lcom/alibaba/doraemon/utils/SerializeCallback;)Lcom/alibaba/doraemon/utils/SerializeCallback;
    .locals 1
    .param p0, "callback"    # Lcom/alibaba/doraemon/utils/SerializeCallback;

    .prologue
    .line 22
    new-instance v0, Lcom/alibaba/doraemon/utils/CallbackUtils$1;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/utils/CallbackUtils$1;-><init>(Lcom/alibaba/doraemon/utils/SerializeCallback;)V

    return-object v0
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 15
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 19
    :goto_0
    return-void

    .line 17
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
