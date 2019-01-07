.class Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$1;
.super Ljava/lang/Object;
.source "LifecycleMonitorImpl.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$1;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 77
    return-void
.end method

.method public onLowMemory()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$1;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$000(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$1;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$000(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$1;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$000(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/MemStateListener;

    .line 84
    .local v0, "listener":Lcom/alibaba/doraemon/lifecycle/MemStateListener;
    invoke-interface {v0}, Lcom/alibaba/doraemon/lifecycle/MemStateListener;->onLowMemory()V

    goto :goto_0

    .line 88
    .end local v0    # "listener":Lcom/alibaba/doraemon/lifecycle/MemStateListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
