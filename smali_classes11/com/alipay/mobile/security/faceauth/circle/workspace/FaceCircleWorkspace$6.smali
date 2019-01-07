.class final Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$6;
.super Ljava/lang/Object;
.source "FaceCircleWorkspace.java"

# interfaces
.implements Lcom/alipay/mobile/security/bio/service/BioUploadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->init(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$6;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Lcom/alipay/mobile/security/bio/service/BioUploadResult;)Z
    .locals 13
    .param p1, "response"    # Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v12, 0x3e9

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 423
    if-eqz p1, :cond_c

    .line 425
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "response:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 426
    iget v1, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    .line 428
    .local v1, "code":I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 429
    .local v4, "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 430
    const-string/jumbo v7, "serverReturnCode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string/jumbo v7, "code"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    :cond_0
    if-ne v1, v12, :cond_4

    .line 434
    const-string/jumbo v7, "networkResult"

    const-string/jumbo v8, "yes"

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 441
    .local v2, "endTime":J
    const-string/jumbo v7, "timecost"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->getInstance()Lcom/alipay/mobile/security/faceauth/util/TimeRecord;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->getUploadStartTime()J

    move-result-wide v10

    sub-long v10, v2, v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object v7, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$6;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v7}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 443
    iget-object v7, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$6;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v7}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    move-result-object v7

    sget-object v8, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_UPLOAD_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v7, v8, v4}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 447
    :cond_1
    iget-object v7, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$6;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v7}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 448
    iget-object v7, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$6;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v7}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->uploadNineShoot()V

    .line 451
    :cond_2
    sparse-switch v1, :sswitch_data_0

    .line 521
    :cond_3
    :goto_1
    return v6

    .line 436
    .end local v2    # "endTime":J
    :cond_4
    const-string/jumbo v7, "networkResult"

    const-string/jumbo v8, "no"

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 455
    .restart local v2    # "endTime":J
    :sswitch_0
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$6;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->m(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;

    move-result-object v5

    sget-object v7, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;->LOGIN:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;

    if-ne v5, v7, :cond_5

    .line 456
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$6;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    sget-object v7, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_REMOTE_NETWORK_LOGIN_ERROR:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    invoke-static {v5, v7}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;)V

    goto :goto_1

    .line 458
    :cond_5
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$6;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    sget-object v7, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_REMOTE_NETWORK_ERROR:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    invoke-static {v5, v7}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;)V

    goto :goto_1

    .line 462
    :sswitch_1
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$6;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->m(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;

    move-result-object v5

    sget-object v7, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;->LOGIN:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;

    if-ne v5, v7, :cond_6

    .line 463
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$6;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    sget-object v7, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_REMOTE_COMMAND_LOGIN_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    invoke-static {v5, v7}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;)V

    goto :goto_1

    .line 465
    :cond_6
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$6;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    sget-object v7, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_REMOTE_COMMAND_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    invoke-static {v5, v7}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;)V

    goto :goto_1

    .line 471
    :sswitch_2
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$6;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->isPassRetryTime()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 472
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$6;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->m(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;

    move-result-object v5

    sget-object v7, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;->LOGIN:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;

    if-ne v5, v7, :cond_7

    .line 473
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$6;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    sget-object v7, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_REMOTE_COMMAND_LOGIN_RETRY:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    invoke-static {v5, v7}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;)V

    goto :goto_1

    .line 475
    :cond_7
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$6;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    sget-object v7, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_REMOTE_COMMAND_RETRY:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    invoke-static {v5, v7}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;)V

    goto :goto_1

    .line 479
    :cond_8
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$6;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->m(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;

    move-result-object v5

    sget-object v7, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;->LOGIN:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;

    if-ne v5, v7, :cond_9

    .line 480
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$6;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    sget-object v7, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_FACE_LOGIN_MAX_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    invoke-static {v5, v7}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;)V

    goto/16 :goto_1

    .line 482
    :cond_9
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$6;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    sget-object v7, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_FACE_MAX_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    invoke-static {v5, v7}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;)V

    goto/16 :goto_1

    .line 490
    :sswitch_3
    new-instance v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;-><init>()V

    .line 492
    .local v0, "bioFragmentResponse":Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;
    iget v7, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    if-ne v7, v12, :cond_b

    :goto_2
    iput-boolean v5, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->isSucess:Z

    .line 493
    iget v5, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    iput v5, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->suggest:I

    .line 495
    const/16 v5, 0x1f4

    iput v5, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->errorCode:I

    .line 497
    const-string/jumbo v5, ""

    iput-object v5, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->resultMessage:Ljava/lang/String;

    .line 499
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$6;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->n(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 501
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$6;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->n(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->getAppDescription()Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 502
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$6;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->n(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->getAppDescription()Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBistoken()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->token:Ljava/lang/String;

    .line 505
    :cond_a
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$6;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->n(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->sendResponse(Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;)V

    .line 506
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$6;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->n(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->finishActivity(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v5

    goto/16 :goto_1

    :cond_b
    move v5, v6

    .line 492
    goto :goto_2

    .line 519
    .end local v0    # "bioFragmentResponse":Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;
    .end local v1    # "code":I
    .end local v2    # "endTime":J
    .end local v4    # "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c
    new-instance v5, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;

    const-string/jumbo v6, "BioUploadResult null error..."

    invoke-direct {v5, v6}, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 451
    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_3
        0x7d1 -> :sswitch_1
        0x7d2 -> :sswitch_2
        0xbb9 -> :sswitch_0
        0xbba -> :sswitch_0
    .end sparse-switch
.end method
