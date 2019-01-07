.class public final Lcom/uc/webview/export/internal/setup/bt;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field a:Z

.field private b:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/util/Pair;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/bt;->b:Landroid/util/Pair;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/bt;->a:Z

    return-void
.end method


# virtual methods
.method public final a(J)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const-wide/16 v4, 0x0

    .line 49
    new-instance v6, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v6}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bt;->b:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v7, :cond_0

    .line 52
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bt;->b:Landroid/util/Pair;

    monitor-exit p0

    .line 68
    :goto_0
    return-object v0

    .line 53
    :cond_0
    cmp-long v0, p1, v4

    if-gtz v0, :cond_3

    move-wide v2, v4

    .line 54
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/bt;->a:Z

    .line 55
    :cond_1
    :goto_2
    invoke-virtual {v6}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_2

    cmp-long v0, p1, v4

    if-gtz v0, :cond_4

    .line 57
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v0

    sub-long v0, p1, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 58
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bt;->b:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v7, :cond_1

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/bt;->a:Z

    .line 60
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bt;->b:Landroid/util/Pair;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 53
    :cond_3
    const-wide/16 v0, 0x64

    move-wide v2, v0

    goto :goto_1

    .line 66
    :cond_4
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/bt;->a:Z

    .line 67
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    new-instance v0, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 28
    monitor-enter p0

    .line 29
    :try_start_0
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/bt;->b:Landroid/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
