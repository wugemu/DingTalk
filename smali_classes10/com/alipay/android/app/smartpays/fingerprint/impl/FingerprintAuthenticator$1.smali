.class Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$1;
.super Ljava/lang/Object;
.source "FingerprintAuthenticator.java"

# interfaces
.implements Lcom/alipay/security/mobile/auth/AuthenticatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->initHardwarePay(Landroid/content/Context;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$1;->this$0:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V
    .locals 4
    .param p1, "response"    # Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "FingerprintAuthenticator::initHardwarePay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "callback, type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method
