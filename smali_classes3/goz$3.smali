.class final Lgoz$3;
.super Ljava/lang/Object;
.source "CSpaceTaskController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgoz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgpf;

.field final synthetic b:Lgoz;


# direct methods
.method constructor <init>(Lgoz;Lgpf;)V
    .locals 0
    .param p1, "this$0"    # Lgoz;

    .prologue
    .line 335
    iput-object p1, p0, Lgoz$3;->b:Lgoz;

    iput-object p2, p0, Lgoz$3;->a:Lgpf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgoz$3;->a:Lgpf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 347
    :goto_0
    monitor-exit p0

    return-void

    .line 342
    :cond_0
    :try_start_1
    iget-object v0, p0, Lgoz$3;->b:Lgoz;

    iget-object v1, p0, Lgoz$3;->a:Lgpf;

    invoke-virtual {v1}, Lgpf;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgoz;->a(Lgoz;Ljava/lang/String;)Lgpf;

    .line 343
    iget-object v0, p0, Lgoz$3;->b:Lgoz;

    iget-object v1, p0, Lgoz$3;->a:Lgpf;

    .line 1138
    if-eqz v1, :cond_1

    .line 1141
    iget-object v2, v0, Lgoz;->b:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1142
    :try_start_2
    iget-object v0, v0, Lgoz;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1143
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 346
    :cond_1
    :try_start_3
    iget-object v0, p0, Lgoz$3;->b:Lgoz;

    .line 2050
    invoke-virtual {v0}, Lgoz;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1143
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
