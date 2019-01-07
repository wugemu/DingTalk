.class Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;
.super Ljava/lang/Object;
.source "FaceRecognition.java"

# interfaces
.implements Lifw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->uploadImage(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

.field final synthetic val$ddResUrls:Ljava/util/List;

.field final synthetic val$firstSize:J

.field final synthetic val$firstStartTime:J

.field final synthetic val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$isFinished:[Z

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$timeoutRunnable:Ljava/lang/Runnable;

.field final synthetic val$urls:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;Ljava/lang/Runnable;[ZLjava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;JJLjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$timeoutRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$isFinished:[Z

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$urls:Ljava/util/List;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$ddResUrls:Ljava/util/List;

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-wide p7, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$firstSize:J

    iput-wide p9, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$firstStartTime:J

    iput-object p11, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUploadFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 10
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "errorDesc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 301
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 303
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$isFinished:[Z

    monitor-enter v1

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$isFinished:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$isFinished:[Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 309
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->access$700(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->access$800(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$urls:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$ddResUrls:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$path:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->access$900(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V

    .line 318
    :goto_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$firstSize:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$firstStartTime:J

    sub-long/2addr v4, v8

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;JJLjava/lang/String;Z)V

    .line 319
    :goto_1
    return-void

    .line 307
    :cond_0
    :try_start_1
    monitor-exit v1

    goto :goto_1

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$urls:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$ddResUrls:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;ILjava/lang/String;Z)V

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

    .line 283
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 285
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$isFinished:[Z

    monitor-enter v1

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$isFinished:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$isFinished:[Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 291
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$urls:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$ddResUrls:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0, v1, v2, v3, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$firstSize:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$3;->val$firstStartTime:J

    sub-long/2addr v4, v8

    const/4 v6, 0x0

    invoke-static/range {v1 .. v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;JJLjava/lang/String;Z)V

    .line 296
    :goto_0
    return-void

    .line 289
    :cond_0
    :try_start_1
    monitor-exit v1

    goto :goto_0

    .line 291
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
    .line 278
    return-void
.end method
