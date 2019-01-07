.class Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1$1;
.super Ljava/lang/Object;
.source "FaceRecognition2.java"

# interfaces
.implements Lifw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;

.field final synthetic val$secondSize:J

.field final synthetic val$secondStartTime:J


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;JJ)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;

    iput-wide p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1$1;->val$secondSize:J

    iput-wide p4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1$1;->val$secondStartTime:J

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
    const/4 v7, 0x1

    .line 377
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->val$urls:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->val$ddResUrls:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;

    iget-object v8, v4, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->val$detectObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;

    iget-object v9, v4, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->val$detectResult:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v9}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;ILjava/lang/String;ZLcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V

    .line 379
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;

    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1$1;->val$secondSize:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1$1;->val$secondStartTime:J

    sub-long/2addr v4, v8

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;JJLjava/lang/String;Z)V

    .line 380
    return-void
.end method

.method public onUploadFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 369
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->val$urls:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->val$ddResUrls:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;

    iget-object v5, v4, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->val$detectObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;

    iget-object v6, v4, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->val$detectResult:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Lcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V

    .line 371
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1$1;->this$2:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;

    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1$1;->val$secondSize:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1$1;->val$secondStartTime:J

    sub-long/2addr v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;JJLjava/lang/String;Z)V

    .line 372
    return-void
.end method

.method public updateUploadProgress(Ljava/lang/String;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 364
    return-void
.end method
