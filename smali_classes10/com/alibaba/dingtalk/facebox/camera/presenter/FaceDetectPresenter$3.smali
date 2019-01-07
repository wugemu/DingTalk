.class final Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;
.super Ljava/lang/Object;
.source "FaceDetectPresenter.java"

# interfaces
.implements Lgrt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 490
    const-string/jumbo v0, "facebox"

    invoke-static {}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[Face] FaceRecognize onRecognizeTimeout"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->j(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->j(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;

    move-result-object v0

    const-string/jumbo v1, "10"

    invoke-interface {v0, v1}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;->d(Ljava/lang/String;)V

    .line 494
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeResult;)V
    .locals 11
    .param p1, "faceAnalyzeResult"    # Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 411
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;J)J

    .line 412
    if-eqz p1, :cond_4

    .line 413
    iget-object v1, p1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeResult;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v8, :cond_2

    .line 414
    const-string/jumbo v1, "facebox"

    invoke-static {}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    const-string/jumbo v4, "[Face] Recognize success, time = "

    aput-object v4, v3, v10

    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v4}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->f(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v6}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->g(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Lgsb;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->e(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)I

    move-result v1

    if-ne v1, v9, :cond_0

    .line 419
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeResult;->faceAttributes:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 420
    .local v0, "jsonObject":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    const-string/jumbo v2, "smile"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->h(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)I

    .line 427
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    sget-object v2, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;->recognitioned:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    invoke-static {v1, v2}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    .line 428
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->i(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->e(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->j(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 430
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->j(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v2}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->k(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;->a(Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v1, v10}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->c(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;I)I

    .line 456
    :cond_1
    :goto_1
    return-void

    .line 422
    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 433
    :cond_2
    iget-object v1, p1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeResult;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v9, :cond_3

    .line 434
    const-string/jumbo v1, "facebox"

    invoke-static {}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    const-string/jumbo v4, "[Face] Recognize RECOGNIZ_FAIL_BLUR, time = "

    aput-object v4, v3, v10

    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v4}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->f(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v6}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->g(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Lgsb;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    sget-object v2, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;->error:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    invoke-static {v1, v2}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    .line 437
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->l(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)I

    goto :goto_1

    .line 439
    :cond_3
    const-string/jumbo v1, "facebox"

    invoke-static {}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "[Face] Recognize fail, resultCode = "

    aput-object v4, v3, v10

    iget-object v4, p1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeResult;->resultCode:Ljava/lang/Integer;

    aput-object v4, v3, v8

    const-string/jumbo v4, ", time = "

    aput-object v4, v3, v9

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    .line 440
    invoke-static {v5}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->f(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)J

    move-result-wide v6

    iget-object v5, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v5}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->g(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 439
    invoke-static {v1, v2, v3}, Lgsb;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v1, v10}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->c(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;I)I

    .line 443
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v1, v10}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->d(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;I)I

    .line 444
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    sget-object v2, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;->error:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    invoke-static {v1, v2}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    .line 445
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->j(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 446
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->j(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeResult;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v3}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->m(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lgrv$f;->dt_facebox_face_recognition_fail:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 450
    :cond_4
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    sget-object v2, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;->error:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    invoke-static {v1, v2}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    .line 451
    const-string/jumbo v1, "facebox"

    invoke-static {}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "[Face] Recognize fail, result is null"

    aput-object v4, v3, v10

    invoke-static {v1, v2, v3}, Lgsb;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->j(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 453
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v1}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->j(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;

    move-result-object v1

    const-string/jumbo v2, "23"

    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v3}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->m(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lgrv$f;->dt_facebox_face_recognition_fail:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;->b(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5
    .param p1, "imageMediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 461
    const-string/jumbo v0, "facebox"

    invoke-static {}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[Face] FaceRecognize onImageUploadSuccess"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->j(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->j(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;->a()V

    .line 465
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 469
    const-string/jumbo v0, "facebox"

    invoke-static {}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[Face] FaceRecognize onImageUploadFail "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    sget-object v1, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;->error:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$States;

    .line 471
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->j(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->j(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;->d(Ljava/lang/String;)V

    .line 474
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 478
    const-string/jumbo v0, "facebox"

    invoke-static {}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "[Face] FaceRecognize onRecognizeFail "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v0, v5}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->c(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;I)I

    .line 1150
    invoke-static {p1, v5}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 480
    if-lez v0, :cond_0

    .line 2150
    invoke-static {p1, v5}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 480
    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_0

    .line 481
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lgrv$f;->iatc_system_busy_try_again:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->j(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$3;->a:Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;->j(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter;)Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDetectPresenter$b;->c(Ljava/lang/String;)V

    .line 486
    :cond_1
    return-void
.end method
