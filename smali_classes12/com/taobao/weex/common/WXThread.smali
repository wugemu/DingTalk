.class public Lcom/taobao/weex/common/WXThread;
.super Landroid/os/HandlerThread;
.source "WXThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/common/WXThread$SafeCallback;,
        Lcom/taobao/weex/common/WXThread$SafeRunnable;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXThread;->start()V

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/taobao/weex/common/WXThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/taobao/weex/common/WXThread;->mHandler:Landroid/os/Handler;

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 141
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXThread;->start()V

    .line 142
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/taobao/weex/common/WXThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/taobao/weex/common/WXThread;->mHandler:Landroid/os/Handler;

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/os/Handler$Callback;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 130
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXThread;->start()V

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/taobao/weex/common/WXThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {p3}, Lcom/taobao/weex/common/WXThread;->secure(Landroid/os/Handler$Callback;)Landroid/os/Handler$Callback;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/taobao/weex/common/WXThread;->mHandler:Landroid/os/Handler;

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXThread;->start()V

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/taobao/weex/common/WXThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {p2}, Lcom/taobao/weex/common/WXThread;->secure(Landroid/os/Handler$Callback;)Landroid/os/Handler$Callback;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/taobao/weex/common/WXThread;->mHandler:Landroid/os/Handler;

    .line 121
    return-void
.end method

.method public static secure(Landroid/os/Handler$Callback;)Landroid/os/Handler$Callback;
    .locals 1
    .param p0, "callback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 100
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/taobao/weex/common/WXThread$SafeCallback;

    if-eqz v0, :cond_1

    .line 104
    .end local p0    # "callback":Landroid/os/Handler$Callback;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "callback":Landroid/os/Handler$Callback;
    :cond_1
    new-instance v0, Lcom/taobao/weex/common/WXThread$SafeCallback;

    invoke-direct {v0, p0}, Lcom/taobao/weex/common/WXThread$SafeCallback;-><init>(Landroid/os/Handler$Callback;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 93
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/taobao/weex/common/WXThread$SafeRunnable;

    if-eqz v0, :cond_1

    .line 96
    .end local p0    # "runnable":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "runnable":Ljava/lang/Runnable;
    :cond_1
    new-instance v0, Lcom/taobao/weex/common/WXThread$SafeRunnable;

    invoke-direct {v0, p0}, Lcom/taobao/weex/common/WXThread$SafeRunnable;-><init>(Ljava/lang/Runnable;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/taobao/weex/common/WXThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public isWXThreadAlive()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/taobao/weex/common/WXThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/common/WXThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/common/WXThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public quit()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 155
    iget-object v0, p0, Lcom/taobao/weex/common/WXThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/taobao/weex/common/WXThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 158
    :cond_0
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    return v0
.end method
