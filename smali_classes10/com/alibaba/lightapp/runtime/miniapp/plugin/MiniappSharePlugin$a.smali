.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;
.super Ljava/lang/Object;
.source "MiniappSharePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

.field private b:Ljava/lang/Runnable;

.field private volatile c:Z

.field private d:J


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;Ljava/lang/Runnable;)V
    .locals 2
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;->a:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;->c:Z

    .line 429
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;->d:J

    .line 432
    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;->b:Ljava/lang/Runnable;

    .line 433
    return-void
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 436
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;->c:Z

    .line 437
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;->d:J

    invoke-virtual {v0, p0, v2, v3}, Lcaa;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    monitor-exit p0

    return-void

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()V
    .locals 1

    .prologue
    .line 441
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcaa;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    monitor-exit p0

    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSharePlugin$a;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 450
    :cond_0
    return-void
.end method
