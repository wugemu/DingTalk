.class Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$3;
.super Ljava/lang/Object;
.source "FingerprintAuthenticator.java"

# interfaces
.implements Lcom/alipay/security/mobile/auth/AuthenticatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->getProcessAyncCallback(ILcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/security/mobile/auth/AuthenticatorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

.field final synthetic val$callBack:Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;ILcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$3;->this$0:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    iput p2, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$3;->val$type:I

    iput-object p3, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$3;->val$callBack:Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V
    .locals 5
    .param p1, "arg"    # Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    invoke-direct {v0}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;-><init>()V

    .line 114
    .local v0, "result":Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getType()I

    move-result v2

    iput v2, v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mType:I

    .line 115
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResult()I

    move-result v2

    iput v2, v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mResult:I

    .line 116
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResultMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mMessage:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getData()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mData:Ljava/lang/String;

    .line 118
    iget-object v2, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$3;->this$0:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResult()I

    move-result v3

    invoke-static {v2, v3}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->access$200(Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;I)Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mStatus:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 120
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResgistedTokens()Ljava/util/List;

    move-result-object v1

    .line 121
    .local v1, "tokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 122
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mTokenId:Ljava/lang/String;

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$3;->this$0:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    iget v3, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$3;->val$type:I

    iget v4, v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mResult:I

    invoke-static {v2, v3, v4}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->access$300(Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;II)V

    .line 126
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v2

    const-string/jumbo v3, "FingerprintAuthenticator::getProcessAyncCallback"

    invoke-virtual {v0}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v2, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$3;->val$callBack:Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    if-eqz v2, :cond_1

    .line 128
    iget-object v2, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$3;->val$callBack:Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    invoke-interface {v2, v0}, Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;->onCallBack(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    .line 130
    :cond_1
    return-void
.end method
