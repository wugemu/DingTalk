.class final Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$1;
.super Ljava/lang/Object;
.source "OfflineTaskExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$1;->a:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 103
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->e()Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lclq;

    .line 104
    .local v1, "next":Lclq;
    if-nez v1, :cond_5

    .line 106
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->f()I

    move-result v3

    invoke-static {}, Lclq;->b()J

    move-result-wide v4

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->g()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Lclt;->a(IJ)Ljava/util/List;

    move-result-object v2

    .line 107
    .local v2, "taskInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    :cond_0
    sget-object v3, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->a:Ljava/lang/String;

    .line 109
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$1;->a:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->d()V

    .line 128
    .end local v2    # "taskInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;>;"
    :goto_0
    return-void

    .line 113
    .restart local v2    # "taskInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;

    .line 114
    .local v0, "info":Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->a:Ljava/lang/String;

    invoke-static {v4}, Lclq;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;->a:Ljava/lang/String;

    invoke-static {v4}, Lclq;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 115
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->e()Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    new-instance v5, Lclq;

    invoke-direct {v5, v0}, Lclq;-><init>(Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    .line 118
    .end local v0    # "info":Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->e()Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "next":Lclq;
    check-cast v1, Lclq;

    .line 119
    .restart local v1    # "next":Lclq;
    if-nez v1, :cond_4

    .line 120
    sget-object v3, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->a:Ljava/lang/String;

    .line 121
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$1;->a:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->d()V

    goto :goto_0

    .line 123
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->h()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 126
    .end local v2    # "taskInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/offline/model/OfflineTaskInfo;>;"
    :cond_5
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->h()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
