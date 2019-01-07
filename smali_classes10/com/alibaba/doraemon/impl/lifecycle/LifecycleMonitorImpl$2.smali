.class Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;
.super Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;
.source "LifecycleMonitorImpl.java"


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
    .line 93
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-direct {p0}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 216
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 152
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-static {v5, p1}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$102(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;Landroid/app/Activity;)Landroid/app/Activity;

    .line 108
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$200(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 109
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$302(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;Z)Z

    .line 110
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    const-string/jumbo v6, "DTAction_lifecycle_enter_foreground"

    invoke-static {v5, v6}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$400(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;Ljava/lang/String;)V

    .line 112
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$500(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 113
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$500(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .local v3, "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/lifecycle/APPStateListener;>;"
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$500(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/lifecycle/APPStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .local v2, "listener":Lcom/alibaba/doraemon/lifecycle/APPStateListener;
    :try_start_1
    invoke-interface {v2}, Lcom/alibaba/doraemon/lifecycle/APPStateListener;->onEnterForeground()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v7, "LifecycleMonitorImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "=====> enter foreground err, "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "listener":Lcom/alibaba/doraemon/lifecycle/APPStateListener;
    .end local v3    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/lifecycle/APPStateListener;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v3    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/lifecycle/APPStateListener;>;"
    :cond_0
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    const-string/jumbo v5, "LifecycleMonitorImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "=====> enter foreground "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$600(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 128
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$000(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 129
    :try_start_4
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$000(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 130
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$000(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    .local v4, "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/lifecycle/MemStateListener;>;"
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$000(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/lifecycle/MemStateListener;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 135
    .local v2, "listener":Lcom/alibaba/doraemon/lifecycle/MemStateListener;
    :try_start_5
    invoke-interface {v2}, Lcom/alibaba/doraemon/lifecycle/MemStateListener;->onLowMemory()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 136
    :catch_1
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v7, "LifecycleMonitorImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "=====> enter foreground onLowMemory err, "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 141
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "listener":Lcom/alibaba/doraemon/lifecycle/MemStateListener;
    .end local v4    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/lifecycle/MemStateListener;>;"
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v5

    :cond_1
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 145
    .end local v3    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/lifecycle/APPStateListener;>;"
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "activityString":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$200(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 211
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 102
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "actName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "activityString":Ljava/lang/String;
    const-string/jumbo v2, "LifecycleMonitorImpl"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "=====> enter onActivityStopped "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, " actSize "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-static {v5}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$200(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$700(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2$1;-><init>(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    return-void
.end method
