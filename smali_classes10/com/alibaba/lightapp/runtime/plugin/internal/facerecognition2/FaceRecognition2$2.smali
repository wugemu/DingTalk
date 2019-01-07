.class Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;
.super Ljava/lang/Object;
.source "FaceRecognition2.java"

# interfaces
.implements Lifw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->uploadImage(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

.field final synthetic val$ddResUrls:Ljava/util/List;

.field final synthetic val$detectObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

.field final synthetic val$detectResult:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

.field final synthetic val$firstSize:J

.field final synthetic val$firstStartTime:J

.field final synthetic val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$isFinished:[Z

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$timeoutRunnable:Ljava/lang/Runnable;

.field final synthetic val$urls:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;Ljava/lang/Runnable;[ZLjava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;JJLjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$timeoutRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$isFinished:[Z

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$urls:Ljava/util/List;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$ddResUrls:Ljava/util/List;

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p7, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$detectObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    iput-object p8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$detectResult:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    iput-wide p9, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$firstSize:J

    iput-wide p11, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$firstStartTime:J

    iput-object p13, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$path:Ljava/lang/String;

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

    .line 303
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 305
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$isFinished:[Z

    monitor-enter v1

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$isFinished:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$isFinished:[Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 311
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$urls:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$ddResUrls:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$path:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$detectObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$detectResult:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    invoke-static/range {v0 .. v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Lcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V

    .line 320
    :goto_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$firstSize:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$firstStartTime:J

    sub-long/2addr v4, v8

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;JJLjava/lang/String;Z)V

    .line 321
    :goto_1
    return-void

    .line 309
    :cond_0
    :try_start_1
    monitor-exit v1

    goto :goto_1

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$urls:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$ddResUrls:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$detectObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$detectResult:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v9}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;ILjava/lang/String;ZLcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V

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

    .line 285
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 287
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$isFinished:[Z

    monitor-enter v1

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$isFinished:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$isFinished:[Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 293
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$urls:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$ddResUrls:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$detectObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$detectResult:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Lcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V

    .line 297
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$firstSize:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$2;->val$firstStartTime:J

    sub-long/2addr v4, v8

    const/4 v6, 0x0

    invoke-static/range {v1 .. v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;JJLjava/lang/String;Z)V

    .line 298
    :goto_0
    return-void

    .line 291
    :cond_0
    :try_start_1
    monitor-exit v1

    goto :goto_0

    .line 293
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
    .line 280
    return-void
.end method
