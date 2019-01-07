.class Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$4;
.super Ljava/lang/Object;
.source "FaceRecognition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->retryImageUpload(Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

.field final synthetic val$ddResUrls:Ljava/util/List;

.field final synthetic val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$urls:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$4;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$4;->val$urls:Ljava/util/List;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$4;->val$ddResUrls:Ljava/util/List;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$4;->val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v12, 0x0

    const/4 v7, 0x0

    const/high16 v1, 0x42c80000    # 100.0f

    .line 398
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->access$1300(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;)I

    move-result v0

    int-to-float v0, v0

    div-float v10, v0, v1

    .line 399
    .local v10, "sizeRate":F
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;)I

    move-result v0

    int-to-float v0, v0

    div-float v9, v0, v1

    .line 402
    .local v9, "qualityRate":F
    invoke-static {}, Lhah;->a()Lhah;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$4;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1, v10, v9}, Lhah;->a(Ljava/lang/String;FF)Ljava/lang/String;

    move-result-object v8

    .line 404
    .local v8, "newPath":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$4;->val$urls:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$4;->val$ddResUrls:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$4;->val$imgNum:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string/jumbo v4, "-1"

    const v5, 0x1adb3

    const-string/jumbo v6, "path is null"

    invoke-static/range {v0 .. v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 407
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    const-string/jumbo v6, "110003"

    move-wide v2, v12

    move-wide v4, v12

    invoke-static/range {v1 .. v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;JJLjava/lang/String;Z)V

    .line 443
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$4$1;

    invoke-direct {v1, p0, v8}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$4$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$4;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
