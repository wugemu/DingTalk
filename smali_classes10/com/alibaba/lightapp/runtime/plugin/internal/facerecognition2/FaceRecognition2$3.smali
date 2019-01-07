.class Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;
.super Ljava/lang/Object;
.source "FaceRecognition2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->retryImageUpload(Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Lcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V
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

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$urls:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;Lcom/alibaba/dingtalk/facebox/model/DetectObject;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->val$detectObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->val$urls:Ljava/util/List;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->val$ddResUrls:Ljava/util/List;

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p7, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->val$detectResult:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 339
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->val$detectObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    iget v0, v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->retryResize:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v12, v0, v1

    .line 340
    .local v12, "sizeRate":F
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->val$detectObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    iget v0, v0, Lcom/alibaba/dingtalk/facebox/model/DetectObject;->retryQuality:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v11, v0, v1

    .line 343
    .local v11, "qualityRate":F
    invoke-static {}, Lhah;->a()Lhah;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1, v12, v11}, Lhah;->a(Ljava/lang/String;FF)Ljava/lang/String;

    move-result-object v10

    .line 345
    .local v10, "newPath":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->val$urls:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->val$ddResUrls:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string/jumbo v4, "-1"

    const v5, 0x1adb3

    const-string/jumbo v6, "path is null"

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->val$detectObject:Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->val$detectResult:Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    invoke-static/range {v0 .. v9}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;ILjava/lang/String;ZLcom/alibaba/dingtalk/facebox/model/DetectObject;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V

    .line 348
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-string/jumbo v6, "110003"

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;->access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2;JJLjava/lang/String;Z)V

    .line 384
    :goto_0
    return-void

    .line 353
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;

    invoke-direct {v1, p0, v10}, Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/facerecognition2/FaceRecognition2$3;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
