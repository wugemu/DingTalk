.class final Lcom/alibaba/lightapp/runtime/PluginManager$a;
.super Ljava/lang/Object;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/PluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/lightapp/runtime/ActionResponse;

.field volatile b:Z

.field final synthetic c:Lcom/alibaba/lightapp/runtime/PluginManager;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/PluginManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/PluginManager;

    .prologue
    .line 910
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/PluginManager$a;->c:Lcom/alibaba/lightapp/runtime/PluginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 914
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager$a;->b:Z

    return-void
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 917
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/PluginManager$a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 919
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 920
    :catch_0
    move-exception v0

    .line 921
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 917
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 924
    :cond_0
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized b()V
    .locals 1

    .prologue
    .line 927
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager$a;->b:Z

    .line 928
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    monitor-exit p0

    return-void

    .line 927
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
