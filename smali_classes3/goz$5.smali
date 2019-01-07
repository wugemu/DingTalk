.class final Lgoz$5;
.super Ljava/lang/Object;
.source "CSpaceTaskController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgoz;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgoz;


# direct methods
.method constructor <init>(Lgoz;)V
    .locals 0
    .param p1, "this$0"    # Lgoz;

    .prologue
    .line 405
    iput-object p1, p0, Lgoz$5;->a:Lgoz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 408
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lgoz$5;->a:Lgoz;

    .line 1050
    iget-object v1, v1, Lgoz;->c:Ljava/util/Map;

    .line 408
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 410
    iget-object v1, p0, Lgoz$5;->a:Lgoz;

    .line 2115
    iget-object v2, v1, Lgoz;->a:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2116
    :try_start_1
    iget-object v1, v1, Lgoz;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 2117
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    :try_start_2
    iget-object v1, p0, Lgoz$5;->a:Lgoz;

    .line 3050
    iget-object v2, v1, Lgoz;->b:Ljava/util/LinkedList;

    .line 412
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 413
    :try_start_3
    iget-object v1, p0, Lgoz$5;->a:Lgoz;

    .line 4050
    iget-object v1, v1, Lgoz;->b:Ljava/util/LinkedList;

    .line 413
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgpf;

    .line 414
    .local v0, "tempTask":Lgpf;
    if-nez v0, :cond_0

    .line 415
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 420
    .end local v0    # "tempTask":Lgpf;
    :goto_1
    monitor-exit p0

    return-void

    .line 2117
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 408
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 417
    .restart local v0    # "tempTask":Lgpf;
    :cond_0
    const/4 v3, 0x0

    :try_start_6
    invoke-virtual {v0, v3}, Lgpf;->a(Z)V

    goto :goto_0

    .line 420
    .end local v0    # "tempTask":Lgpf;
    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 419
    :cond_1
    :try_start_8
    iget-object v1, p0, Lgoz$5;->a:Lgoz;

    .line 5050
    iget-object v1, v1, Lgoz;->b:Ljava/util/LinkedList;

    .line 419
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 420
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1
.end method
