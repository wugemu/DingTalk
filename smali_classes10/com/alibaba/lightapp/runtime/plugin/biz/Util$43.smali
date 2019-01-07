.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$43;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lifw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->uploadMedia(Ljava/lang/String;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

.field final synthetic val$fileNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$isFinished:[Z

.field final synthetic val$isVideoPic:Z

.field final synthetic val$resps:Ljava/util/List;

.field final synthetic val$result:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

.field final synthetic val$timeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/Runnable;[ZLcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 4418
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$43;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$43;->val$timeoutRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$43;->val$isFinished:[Z

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$43;->val$result:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$43;->val$resps:Ljava/util/List;

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$43;->val$fileNum:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean p7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$43;->val$isVideoPic:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUploadFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "errorDesc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4441
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$43;->val$timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4442
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$43;->val$isFinished:[Z

    monitor-enter v1

    .line 4443
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$43;->val$isFinished:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_0

    .line 4444
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$43;->val$isFinished:[Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 4448
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4449
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$43;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object p3, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$43;->val$fileNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$13900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 4450
    :goto_0
    return-void

    .line 4446
    :cond_0
    :try_start_1
    monitor-exit v1

    goto :goto_0

    .line 4448
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onUploadFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 4427
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$43;->val$timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4428
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$43;->val$isFinished:[Z

    monitor-enter v1

    .line 4429
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$43;->val$isFinished:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_0

    .line 4430
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$43;->val$isFinished:[Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 4434
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4435
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$43;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$43;->val$result:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$43;->val$resps:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$43;->val$fileNum:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-boolean v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$43;->val$isVideoPic:Z

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$14200(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Z)V

    .line 4436
    :goto_0
    return-void

    .line 4432
    :cond_0
    :try_start_1
    monitor-exit v1

    goto :goto_0

    .line 4434
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
    .line 4422
    return-void
.end method
