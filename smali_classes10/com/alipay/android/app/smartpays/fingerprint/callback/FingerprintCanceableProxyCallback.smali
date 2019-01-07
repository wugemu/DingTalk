.class public Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;
.super Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;
.source "FingerprintCanceableProxyCallback.java"


# instance fields
.field private mCanceableReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;-><init>(Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onFinish()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;->onFinish()V

    .line 32
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;->unregisterCancelReceiver()V

    .line 33
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;->onStart()V

    .line 26
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;->registerCancelReceiver()V

    .line 27
    return-void
.end method

.method protected registerCancelReceiver()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v3

    const-string/jumbo v4, "FingerprintCanceableProxyCallback::registerCancelReceiver"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;->mCanceableReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_0

    .line 57
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v2, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback$1;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback$1;-><init>(Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;)V

    .line 51
    .local v2, "receiver":Landroid/content/BroadcastReceiver;
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.alipay.android.app.FINGERPRINT_VERIFY_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 52
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :goto_1
    iput-object v2, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;->mCanceableReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected unregisterCancelReceiver()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "FingerprintCanceableProxyCallback::unregisterCancelReceiver"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;->mCanceableReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 66
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;->mCanceableReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;->mCanceableReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
