.class Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback$1;
.super Landroid/content/BroadcastReceiver;
.source "FingerprintSensorProxyCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;->registerSensorReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback$1;->this$0:Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 56
    const-string/jumbo v1, "com.alipay.security.mobile.alipayauthenticatorservice.broadcast.FINGERPRINTSENSOR_STATUS_VALUE"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 57
    .local v0, "status":I
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "FingerprintSensorProxyCallback::registerFpSensorReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onReceive, status="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    packed-switch v0, :pswitch_data_0

    .line 76
    :goto_0
    :pswitch_0
    return-void

    .line 64
    :pswitch_1
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback$1;->this$0:Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;

    new-instance v2, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    sget-object v3, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_VERIFYING:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    invoke-direct {v2, v3}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;-><init>(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;)V

    invoke-virtual {v1, v5, v2}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;->onProgressChanged(ZLcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
