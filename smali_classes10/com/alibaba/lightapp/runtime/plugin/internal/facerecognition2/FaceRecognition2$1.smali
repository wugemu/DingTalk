.class Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;
.super Ljava/lang/Object;
.source "FaceRecognition2.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$isFinished:[Z

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$urls:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;[ZLjava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Lcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;->val$isFinished:[Z

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;->val$urls:Ljava/util/List;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;->val$ddResUrls:Ljava/util/List;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;->val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;->val$path:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;->val$detectObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    iput-object p8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;->val$detectResult:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 253
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;->val$isFinished:[Z

    monitor-enter v1

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;->val$isFinished:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;->val$isFinished:[Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 259
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;->val$urls:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;->val$ddResUrls:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;->val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;->val$path:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;->val$detectObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;->val$detectResult:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    invoke-static/range {v0 .. v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Lcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V

    .line 267
    :goto_0
    return-void

    .line 257
    :cond_0
    :try_start_1
    monitor-exit v1

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;->val$urls:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;->val$ddResUrls:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;->val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string/jumbo v4, "null"

    const v5, 0x1adb8

    const-string/jumbo v6, "time out"

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;->val$detectObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$1;->val$detectResult:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    invoke-static/range {v0 .. v9}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;ILjava/lang/String;ZLcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V

    goto :goto_0
.end method
