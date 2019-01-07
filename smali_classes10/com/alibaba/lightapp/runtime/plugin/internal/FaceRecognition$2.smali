.class Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$2;
.super Ljava/lang/Object;
.source "FaceRecognition.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$isFinished:[Z

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$urls:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;[ZLjava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$2;->val$isFinished:[Z

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$2;->val$urls:Ljava/util/List;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$2;->val$ddResUrls:Ljava/util/List;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$2;->val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 250
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$2;->val$isFinished:[Z

    monitor-enter v1

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$2;->val$isFinished:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$2;->val$isFinished:[Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 256
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->access$700(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->access$800(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$2;->val$urls:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$2;->val$ddResUrls:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$2;->val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$2;->val$path:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->access$900(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V

    .line 264
    :goto_0
    return-void

    .line 254
    :cond_0
    :try_start_1
    monitor-exit v1

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$2;->val$urls:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$2;->val$ddResUrls:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$2;->val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string/jumbo v4, "null"

    const v5, 0x1adb8

    const-string/jumbo v6, "time out"

    invoke-static/range {v0 .. v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_0
.end method
