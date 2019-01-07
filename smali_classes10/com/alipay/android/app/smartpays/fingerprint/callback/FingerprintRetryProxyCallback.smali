.class public abstract Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;
.super Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;
.source "FingerprintRetryProxyCallback.java"


# instance fields
.field private mRetryTimes:I

.field private mTerminated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;-><init>(Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    .line 12
    iput v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->mRetryTimes:I

    .line 13
    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->mTerminated:Z

    .line 17
    return-void
.end method

.method private finish(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V
    .locals 4
    .param p1, "result"    # Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "FingerprintRetryProxyCallback::finish"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->onFinish()V

    .line 84
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback$1;-><init>(Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 98
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 99
    return-void
.end method

.method private isTerminated(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;)Z
    .locals 3
    .param p1, "status"    # Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "terminated":Z
    sget-object v1, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback$2;->$SwitchMap$com$alipay$android$app$smartpays$api$model$FingerprintResult$FingerprintStatus:[I

    invoke-virtual {p1}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 68
    :goto_0
    return v0

    .line 61
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCallBack(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V
    .locals 4
    .param p1, "result"    # Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->mTerminated:Z

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "FingerprintRetryProxyCallback::onCallBack"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mTerminated=true, result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mStatus:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->isTerminated(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->mTerminated:Z

    .line 33
    iget v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->mRetryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->mRetryTimes:I

    .line 34
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->mTerminated:Z

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p0, v3, p1}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->onProgressChanged(ZLcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->finish(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    goto :goto_0

    .line 38
    :cond_1
    iget v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->mRetryTimes:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 39
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->onStart()V

    .line 40
    invoke-virtual {p0, v2, p1}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->onProgressChanged(ZLcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    .line 41
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    sget-object v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->RETRY_ING:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;-><init>(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;)V

    invoke-virtual {p0, v2, v0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->onProgressChanged(ZLcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    .line 42
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->onRetry()V

    goto :goto_0

    .line 44
    :cond_2
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    sget-object v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->RETRY_LIMIT:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;-><init>(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;)V

    invoke-virtual {p0, v3, v0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->onProgressChanged(ZLcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    .line 45
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->onRetryLimit()V

    .line 46
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->finish(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    goto :goto_0
.end method

.method protected onFinish()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;->onFinish()V

    .line 79
    return-void
.end method

.method public abstract onFinish(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;)V
.end method

.method public onProgressChanged(ZLcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V
    .locals 0
    .param p1, "finished"    # Z
    .param p2, "status"    # Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    .prologue
    .line 21
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;->onProgressChanged(ZLcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->onStatusChanged(ZLcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    .line 23
    return-void
.end method

.method public abstract onRetry()V
.end method

.method public abstract onRetryLimit()V
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;->onStart()V

    .line 74
    return-void
.end method

.method public abstract onStatusChanged(ZLcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V
.end method
