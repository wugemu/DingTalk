.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lifw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->uploadImage(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

.field final synthetic val$ddResUrls:Ljava/util/List;

.field final synthetic val$firstSize:J

.field final synthetic val$firstStartTime:J

.field final synthetic val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$isFinished:[Z

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$timeoutRunnable:Ljava/lang/Runnable;

.field final synthetic val$urls:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/Runnable;[ZLjava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;JJLjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 3012
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$timeoutRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$isFinished:[Z

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$urls:Ljava/util/List;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$ddResUrls:Ljava/util/List;

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-wide p7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$firstSize:J

    iput-wide p9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$firstStartTime:J

    iput-object p11, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUploadFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 12
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "errorDesc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 3040
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3042
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$isFinished:[Z

    monitor-enter v1

    .line 3043
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$isFinished:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_1

    .line 3044
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$isFinished:[Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 3048
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3050
    const/4 v8, 0x0

    .line 3051
    .local v8, "isUploadRetry":Z
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$5700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3052
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$5700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$JsapiMethod;->mParamJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "retry"

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 3056
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$7500(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v8, :cond_2

    .line 3057
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$urls:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$ddResUrls:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$path:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$7600(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V

    .line 3062
    :goto_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$firstSize:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$firstStartTime:J

    sub-long/2addr v4, v10

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$7900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;JJLjava/lang/String;Z)V

    .line 3063
    .end local v8    # "isUploadRetry":Z
    :goto_1
    return-void

    .line 3046
    :cond_1
    :try_start_1
    monitor-exit v1

    goto :goto_1

    .line 3048
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3059
    .restart local v8    # "isUploadRetry":Z
    :cond_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$urls:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$ddResUrls:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$7700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method public onUploadFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 3022
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3024
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$isFinished:[Z

    monitor-enter v1

    .line 3025
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$isFinished:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_0

    .line 3026
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$isFinished:[Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 3030
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3032
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$urls:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$ddResUrls:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0, v1, v2, v3, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$7800(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V

    .line 3034
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$firstSize:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$25;->val$firstStartTime:J

    sub-long/2addr v4, v8

    const/4 v6, 0x0

    invoke-static/range {v1 .. v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$7900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;JJLjava/lang/String;Z)V

    .line 3035
    :goto_0
    return-void

    .line 3028
    :cond_0
    :try_start_1
    monitor-exit v1

    goto :goto_0

    .line 3030
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateUploadProgress(Ljava/lang/String;III)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "totalSize"    # I
    .param p3, "uploadSize"    # I
    .param p4, "progress"    # I

    .prologue
    .line 3017
    return-void
.end method
