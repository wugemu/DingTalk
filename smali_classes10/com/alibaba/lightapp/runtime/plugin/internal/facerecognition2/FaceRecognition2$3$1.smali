.class Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;
.super Ljava/lang/Object;
.source "FaceRecognition2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;

.field final synthetic val$newPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;->val$newPath:Ljava/lang/String;

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
    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 358
    .local v4, "secondStartTime":J
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;->val$newPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 360
    .local v2, "secondSize":J
    invoke-static {}, Lify;->a()Lify;

    move-result-object v6

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;->val$newPath:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;

    iget-object v7, v7, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->val$detectObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    invoke-static {v0, v1, v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->access$600(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;Ljava/lang/String;Lcom/alibaba/dingtalk/facebox/model/DetectObject;)Lcom/alibaba/wukong/upload/UploadParams;

    move-result-object v7

    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;JJ)V

    invoke-virtual {v6, v7, v0}, Lify;->a(Lcom/alibaba/wukong/upload/UploadParams;Lifw;)V

    .line 382
    return-void
.end method
