.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$42;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;[ZLjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 4397
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$42;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$42;->val$isFinished:[Z

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$42;->val$fileNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 4400
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$42;->val$isFinished:[Z

    monitor-enter v1

    .line 4401
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$42;->val$isFinished:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_0

    .line 4402
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$42;->val$isFinished:[Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 4406
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4407
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$42;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const-string/jumbo v1, "time out"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$42;->val$fileNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$13900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 4408
    :goto_0
    return-void

    .line 4404
    :cond_0
    :try_start_1
    monitor-exit v1

    goto :goto_0

    .line 4406
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
