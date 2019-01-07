.class Lcom/laiwang/protocol/android/o$c;
.super Lcom/laiwang/protocol/android/bu$a;
.source "LwsConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/o;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/android/o;)V
    .locals 4
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/o;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/laiwang/protocol/android/o$c;->a:Lcom/laiwang/protocol/android/o;

    .line 102
    const-string/jumbo v0, "lws-handshake"

    const-wide/16 v2, 0x2710

    invoke-direct {p0, v0, v2, v3}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;J)V

    .line 103
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 107
    const-string/jumbo v1, "[Wtls] %s lws h_b timeout"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/laiwang/protocol/android/o$c;->a:Lcom/laiwang/protocol/android/o;

    invoke-virtual {v3}, Lcom/laiwang/protocol/android/o;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object v1, p0, Lcom/laiwang/protocol/android/o$c;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v1}, Lcom/laiwang/protocol/android/o;->b(Lcom/laiwang/protocol/android/o;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/o$c;->a:Lcom/laiwang/protocol/android/o;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/laiwang/protocol/android/o;->a(Lcom/laiwang/protocol/android/o;Z)Z

    .line 110
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v1, p0, Lcom/laiwang/protocol/android/o$c;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v1}, Lcom/laiwang/protocol/android/o;->c(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/bu;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/laiwang/protocol/android/bu;->b(Ljava/lang/Runnable;)V

    .line 112
    iget-object v1, p0, Lcom/laiwang/protocol/android/o$c;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v1}, Lcom/laiwang/protocol/android/o;->d(Lcom/laiwang/protocol/android/o;)Lcom/laiwang/protocol/android/k$d;

    move-result-object v1

    sget-object v2, Lcom/laiwang/protocol/android/k$d;->d:Lcom/laiwang/protocol/android/k$d;

    if-ne v1, v2, :cond_1

    .line 113
    iget-object v1, p0, Lcom/laiwang/protocol/android/o$c;->a:Lcom/laiwang/protocol/android/o;

    invoke-static {v1}, Lcom/laiwang/protocol/android/o;->e(Lcom/laiwang/protocol/android/o;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/ab$h;

    .line 114
    .local v0, "listener":Lcom/laiwang/protocol/android/ab$h;
    if-eqz v0, :cond_0

    .line 115
    iget-object v2, p0, Lcom/laiwang/protocol/android/o$c;->a:Lcom/laiwang/protocol/android/o;

    invoke-interface {v0, v2}, Lcom/laiwang/protocol/android/ab$h;->d(Lcom/laiwang/protocol/android/k;)V

    goto :goto_0

    .line 110
    .end local v0    # "listener":Lcom/laiwang/protocol/android/ab$h;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 118
    :cond_1
    return-void
.end method
