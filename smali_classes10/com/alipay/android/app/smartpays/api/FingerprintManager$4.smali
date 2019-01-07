.class Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;
.super Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/api/FingerprintManager;->getVerifyCallback(Landroid/content/Context;Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/api/FingerprintManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dialog:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

.field final synthetic val$loader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

.field final synthetic val$request:Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/api/FingerprintManager;Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;Lcom/alipay/android/app/smartpays/res/IResourceLoader;Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/smartpays/api/FingerprintManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->this$0:Lcom/alipay/android/app/smartpays/api/FingerprintManager;

    iput-object p4, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$loader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    iput-object p5, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$dialog:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    iput-object p6, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$context:Landroid/content/Context;

    iput-object p7, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$request:Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;

    invoke-direct {p0, p2, p3}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;-><init>(Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;)V
    .locals 4
    .param p1, "status"    # Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 360
    sget-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_SUCCESS:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    if-ne p1, v0, :cond_0

    .line 361
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "fpV1"

    const-string/jumbo v2, "FpPayV1VerifyS"

    invoke-static {}, Lcom/alipay/android/app/smartpays/utils/DateUtil;->formatHms()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$dialog:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$dialog:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->dismiss(Landroid/content/Context;)V

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->this$0:Lcom/alipay/android/app/smartpays/api/FingerprintManager;

    invoke-virtual {v0}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->cancel()V

    .line 368
    return-void
.end method

.method public onRetry()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 350
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->this$0:Lcom/alipay/android/app/smartpays/api/FingerprintManager;

    const/4 v1, 0x3

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$request:Lcom/alipay/android/app/smartpays/api/model/FingerprintRequest;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/alipay/android/app/smartpays/api/FingerprintManager;->access$200(Lcom/alipay/android/app/smartpays/api/FingerprintManager;IILcom/alipay/android/app/smartpays/api/model/FingerprintRequest;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    .line 351
    return-void
.end method

.method public onRetryLimit()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 355
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "fpV1"

    const-string/jumbo v2, "FpPayV1VerifyF"

    invoke-static {}, Lcom/alipay/android/app/smartpays/utils/DateUtil;->formatHms()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public onStatusChanged(ZLcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V
    .locals 8
    .param p1, "isRetryProxyFinished"    # Z
    .param p2, "result"    # Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 301
    const/4 v3, -0x1

    .line 302
    .local v3, "tipsId":I
    const/high16 v0, -0x1000000

    .line 303
    .local v0, "color":I
    const/4 v2, 0x0

    .line 304
    .local v2, "success":Z
    sget-object v4, Lcom/alipay/android/app/smartpays/api/FingerprintManager$6;->$SwitchMap$com$alipay$android$app$smartpays$api$model$FingerprintResult$FingerprintStatus:[I

    iget-object v5, p2, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mStatus:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    invoke-virtual {v5}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 331
    const/high16 v0, -0x10000

    .line 332
    iget-object v4, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$loader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string/jumbo v5, "safepay_fp_val_failed"

    invoke-interface {v4, v5}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result v3

    .line 336
    :goto_0
    :pswitch_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    iget-object v4, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$dialog:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    if-eqz v4, :cond_2

    .line 337
    iget-object v4, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "message":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez v2, :cond_0

    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$loader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string/jumbo v7, "safepay_fp_to_pwd_pay"

    invoke-interface {v6, v7}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 341
    :cond_0
    iget v4, p2, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mResult:I

    if-lez v4, :cond_1

    if-nez v2, :cond_1

    .line 342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mResult:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 344
    :cond_1
    iget-object v4, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$dialog:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v0}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;->updateMsg(Ljava/lang/String;II)V

    .line 346
    .end local v1    # "message":Ljava/lang/String;
    :cond_2
    return-void

    .line 306
    :pswitch_1
    const/4 v2, 0x1

    .line 307
    iget-object v4, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$loader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string/jumbo v5, "safepay_fp_val_ok"

    invoke-interface {v4, v5}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result v3

    .line 308
    goto :goto_0

    .line 310
    :pswitch_2
    const/high16 v0, -0x10000

    .line 311
    iget-object v4, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$loader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string/jumbo v5, "safepay_fp_validate_too_often"

    invoke-interface {v4, v5}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result v3

    .line 312
    goto :goto_0

    .line 317
    :pswitch_3
    const/high16 v0, -0x10000

    .line 318
    iget-object v4, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$loader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string/jumbo v5, "safepay_fp_val_failed"

    invoke-interface {v4, v5}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result v3

    .line 319
    goto/16 :goto_0

    .line 321
    :pswitch_4
    iget-object v4, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$loader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string/jumbo v5, "safepay_fp_validating"

    invoke-interface {v4, v5}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result v3

    .line 322
    goto/16 :goto_0

    .line 324
    :pswitch_5
    iget-object v4, p0, Lcom/alipay/android/app/smartpays/api/FingerprintManager$4;->val$loader:Lcom/alipay/android/app/smartpays/res/IResourceLoader;

    const-string/jumbo v5, "safepay_fp_retry_tips"

    invoke-interface {v4, v5}, Lcom/alipay/android/app/smartpays/res/IResourceLoader;->getStringId(Ljava/lang/String;)I

    move-result v3

    .line 325
    goto/16 :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
