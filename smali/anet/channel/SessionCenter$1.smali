.class final Lanet/channel/SessionCenter$1;
.super Ljava/lang/Object;
.source "SessionCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/SessionCenter;->forground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanet/channel/SessionCenter;


# direct methods
.method constructor <init>(Lanet/channel/SessionCenter;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lanet/channel/SessionCenter$1;->a:Lanet/channel/SessionCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 336
    :try_start_0
    iget-object v1, p0, Lanet/channel/SessionCenter$1;->a:Lanet/channel/SessionCenter;

    iget-wide v2, v1, Lanet/channel/SessionCenter;->enterBackgroundTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lanet/channel/SessionCenter$1;->a:Lanet/channel/SessionCenter;

    iget-wide v4, v1, Lanet/channel/SessionCenter;->enterBackgroundTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 1033
    sget-object v1, Lia$b;->a:Lia;

    .line 338
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lia;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    :goto_0
    iget-object v1, p0, Lanet/channel/SessionCenter$1;->a:Lanet/channel/SessionCenter;

    iput-boolean v6, v1, Lanet/channel/SessionCenter;->foreGroundCheckRunning:Z

    .line 346
    :goto_1
    return-void

    .line 2033
    :cond_0
    :try_start_1
    sget-object v1, Lia$b;->a:Lia;

    .line 340
    invoke-virtual {v1}, Lia;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    iget-object v1, p0, Lanet/channel/SessionCenter$1;->a:Lanet/channel/SessionCenter;

    iput-boolean v6, v1, Lanet/channel/SessionCenter;->foreGroundCheckRunning:Z

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lanet/channel/SessionCenter$1;->a:Lanet/channel/SessionCenter;

    iput-boolean v6, v2, Lanet/channel/SessionCenter;->foreGroundCheckRunning:Z

    throw v1
.end method
