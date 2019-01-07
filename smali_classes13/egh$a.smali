.class public final Legh$a;
.super Ljava/lang/Object;
.source "LongRenderDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Legh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Legh;

.field private b:Ljava/lang/Runnable;

.field private volatile c:Z

.field private d:J


# direct methods
.method public constructor <init>(Legh;Ljava/lang/Runnable;)V
    .locals 2
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 94
    iput-object p1, p0, Legh$a;->a:Legh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Legh$a;->c:Z

    .line 92
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Legh$a;->d:J

    .line 95
    iput-object p2, p0, Legh$a;->b:Ljava/lang/Runnable;

    .line 96
    invoke-static {p1}, Legh;->a(Legh;)J

    move-result-wide v0

    iput-wide v0, p0, Legh$a;->d:J

    .line 97
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Legh$a;->c:Z

    .line 101
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-wide v2, p0, Legh$a;->d:J

    invoke-virtual {v0, p0, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Legh$a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Legh$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Legh$a;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Legh$a;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 114
    :cond_0
    return-void
.end method
