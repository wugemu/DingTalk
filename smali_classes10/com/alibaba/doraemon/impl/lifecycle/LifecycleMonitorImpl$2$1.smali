.class Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2$1;
.super Ljava/lang/Object;
.source "LifecycleMonitorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->onActivityStopped(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;

.field final synthetic val$actName:Ljava/lang/String;

.field final synthetic val$activityString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2$1;->this$1:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2$1;->val$activityString:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2$1;->val$actName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 165
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2$1;->this$1:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;

    iget-object v4, v4, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$200(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;)Ljava/util/Set;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2$1;->val$activityString:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 166
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2$1;->this$1:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;

    iget-object v4, v4, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$200(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 167
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2$1;->this$1:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;

    iget-object v4, v4, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$302(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;Z)Z

    .line 168
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2$1;->this$1:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;

    iget-object v4, v4, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    const-string/jumbo v5, "DTAction_lifecycle_enter_background"

    invoke-static {v4, v5}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$400(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;Ljava/lang/String;)V

    .line 170
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2$1;->this$1:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;

    iget-object v4, v4, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$102(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;Landroid/app/Activity;)Landroid/app/Activity;

    .line 172
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2$1;->this$1:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;

    iget-object v4, v4, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$500(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 173
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2$1;->this$1:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;

    iget-object v4, v4, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$500(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    .local v2, "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/lifecycle/APPStateListener;>;"
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2$1;->this$1:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;

    iget-object v4, v4, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$500(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/lifecycle/APPStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .local v1, "listener":Lcom/alibaba/doraemon/lifecycle/APPStateListener;
    :try_start_1
    invoke-interface {v1}, Lcom/alibaba/doraemon/lifecycle/APPStateListener;->onEnterBackground()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v6, "LifecycleMonitorImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "=====> enter background err, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "listener":Lcom/alibaba/doraemon/lifecycle/APPStateListener;
    .end local v2    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/lifecycle/APPStateListener;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v2    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/lifecycle/APPStateListener;>;"
    :cond_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    const-string/jumbo v4, "LifecycleMonitorImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "=====> enter background "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2$1;->val$actName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2$1;->this$1:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;

    iget-object v4, v4, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$600(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 188
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2$1;->this$1:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;

    iget-object v4, v4, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$000(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 189
    :try_start_4
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2$1;->this$1:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;

    iget-object v4, v4, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$000(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 190
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2$1;->this$1:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;

    iget-object v4, v4, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$000(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    .local v3, "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/lifecycle/MemStateListener;>;"
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2$1;->this$1:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;

    iget-object v4, v4, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl$2;->this$0:Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;

    invoke-static {v4}, Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;->access$000(Lcom/alibaba/doraemon/impl/lifecycle/LifecycleMonitorImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 193
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/lifecycle/MemStateListener;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 195
    .local v1, "listener":Lcom/alibaba/doraemon/lifecycle/MemStateListener;
    :try_start_5
    invoke-interface {v1}, Lcom/alibaba/doraemon/lifecycle/MemStateListener;->onLowMemory()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 196
    :catch_1
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v6, "LifecycleMonitorImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "=====> enter background onLowMemory err, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/doraemon/DoraemonLog;->outLogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 201
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "listener":Lcom/alibaba/doraemon/lifecycle/MemStateListener;
    .end local v3    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/lifecycle/MemStateListener;>;"
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4

    :cond_1
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 204
    .end local v2    # "tmpList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/lifecycle/APPStateListener;>;"
    :cond_2
    return-void
.end method
