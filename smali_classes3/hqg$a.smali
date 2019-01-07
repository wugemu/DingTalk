.class final Lhqg$a;
.super Ljava/lang/Object;
.source "PreloadHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhqg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lhqg;

.field private b:Ljava/lang/Runnable;

.field private volatile c:Z

.field private d:J


# direct methods
.method constructor <init>(Lhqg;Ljava/lang/Runnable;J)V
    .locals 3
    .param p2, "callback"    # Ljava/lang/Runnable;
    .param p3, "delayTime"    # J

    .prologue
    .line 55
    iput-object p1, p0, Lhqg$a;->a:Lhqg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhqg$a;->c:Z

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lhqg$a;->d:J

    .line 56
    iput-object p2, p0, Lhqg$a;->b:Ljava/lang/Runnable;

    .line 57
    iput-wide p3, p0, Lhqg$a;->d:J

    .line 58
    return-void
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 61
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lhqg$a;->c:Z

    .line 62
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-wide v2, p0, Lhqg$a;->d:J

    invoke-virtual {v0, p0, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()V
    .locals 1

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhqg$a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lhqg$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhqg$a;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lhqg$a;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 75
    :cond_0
    return-void
.end method
