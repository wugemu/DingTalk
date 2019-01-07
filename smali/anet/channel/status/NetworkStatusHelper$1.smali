.class final Lanet/channel/status/NetworkStatusHelper$1;
.super Ljava/lang/Object;
.source "NetworkStatusHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/status/NetworkStatusHelper;->a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;


# direct methods
.method constructor <init>(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lanet/channel/status/NetworkStatusHelper$1;->a:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 79
    :try_start_0
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->k()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/status/NetworkStatusHelper$a;

    .line 80
    .local v1, "listener":Lanet/channel/status/NetworkStatusHelper$a;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 81
    .local v2, "start":J
    iget-object v4, p0, Lanet/channel/status/NetworkStatusHelper$1;->a:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    invoke-interface {v1, v4}, Lanet/channel/status/NetworkStatusHelper$a;->onNetworkStatusChanged(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x1f4

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 83
    const-string/jumbo v4, "awcn.NetworkStatusHelper"

    const-string/jumbo v5, "call back cost too much time"

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7, v8}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lanet/channel/status/NetworkStatusHelper$a;
    .end local v2    # "start":J
    :catch_0
    move-exception v4

    :cond_1
    return-void
.end method
