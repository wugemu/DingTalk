.class public Lcom/alibaba/wukong/CallbackUtils;
.super Ljava/lang/Object;
.source "CallbackUtils.java"


# static fields
.field private static mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alibaba/wukong/CallbackUtils;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<*>;"
    if-eqz p0, :cond_0

    .line 25
    new-instance v0, Lcom/alibaba/wukong/CallbackUtils$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/wukong/CallbackUtils$1;-><init>(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 31
    :cond_0
    return-void
.end method

.method public static onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/wukong/Callback",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 35
    new-instance v0, Lcom/alibaba/wukong/CallbackUtils$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/wukong/CallbackUtils$2;-><init>(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/alibaba/wukong/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 41
    :cond_0
    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 17
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 21
    :goto_0
    return-void

    .line 19
    :cond_0
    sget-object v0, Lcom/alibaba/wukong/CallbackUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
