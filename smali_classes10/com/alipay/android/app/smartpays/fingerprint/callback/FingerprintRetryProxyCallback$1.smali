.class Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback$1;
.super Ljava/lang/Object;
.source "FingerprintRetryProxyCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->finish(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;

.field final synthetic val$result:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback$1;->this$0:Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;

    iput-object p2, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback$1;->val$result:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback$1;->this$0:Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;

    iget-object v2, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback$1;->val$result:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    iget-object v2, v2, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mStatus:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->onFinish(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;)V

    .line 94
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback$1;->this$0:Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;

    iget-object v1, v1, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->mCallback:Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback$1;->this$0:Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;

    iget-object v1, v1, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->mCallback:Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    iget-object v2, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback$1;->val$result:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    invoke-interface {v1, v2}, Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;->onCallBack(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    .line 97
    :cond_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
