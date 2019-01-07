.class public Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;
.super Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintProxyCallback;
.source "FingerprintSensorProxyCallback.java"


# static fields
.field public static final FP_SENSOR_STATUS_INTENT:Ljava/lang/String; = "com.alipay.security.mobile.alipayauthenticatorservice.broadcast.FINGERPRINTSENSOR_STATUS_ACTION"

.field public static final FP_SENSOR_STATUS_VALUE:Ljava/lang/String; = "com.alipay.security.mobile.alipayauthenticatorservice.broadcast.FINGERPRINTSENSOR_STATUS_VALUE"


# instance fields
.field private mSensorReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintProxyCallback;-><init>(Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    .line 22
    return-void
.end method

.method private registerSensorReceiver()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v3

    const-string/jumbo v4, "FingerprintSensorProxyCallback::registerFpSensorReceiver"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;->mSensorReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_0

    .line 86
    :goto_0
    return-void

    .line 53
    :cond_0
    new-instance v2, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback$1;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback$1;-><init>(Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;)V

    .line 80
    .local v2, "receiver":Landroid/content/BroadcastReceiver;
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.alipay.security.mobile.alipayauthenticatorservice.broadcast.FINGERPRINTSENSOR_STATUS_ACTION"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :goto_1
    iput-object v2, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;->mSensorReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method protected onFinish()V
    .locals 0

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;->unregisterSensorReceiver()V

    .line 32
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;->registerSensorReceiver()V

    .line 27
    return-void
.end method

.method protected unregisterSensorReceiver()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "FingerprintSensorProxyCallback::unregisterFpSensorReceiver"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;->mSensorReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;->mSensorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;->mSensorReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
