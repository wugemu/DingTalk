.class final Lcom/alicom/phonenumberauthsdk/gatewayauth/b/b;
.super Ljava/lang/Object;
.source "CUCCVaildManager.java"

# interfaces
.implements Lcom/unicom/xiaowo/verify/ResultListener;


# instance fields
.field final synthetic a:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;


# direct methods
.method constructor <init>(Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "cucc\uff1agetAccessCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/d;->e(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    invoke-static {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->a(Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string/jumbo v0, "cucc\uff1aTimeOut is triggered"

    invoke-static {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/d;->e(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    invoke-static {v0, v2}, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->a(Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;Z)Z

    .line 87
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    invoke-static {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->b(Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    invoke-static {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->b(Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 63
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    invoke-static {v0, v2}, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->a(Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;Z)Z

    .line 67
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    const-string/jumbo v2, "accessCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->a(Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_1
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    invoke-static {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->c(Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 74
    new-instance v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;

    invoke-direct {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;-><init>()V

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    invoke-static {v2}, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->c(Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|cu_xw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;->setAccessCode(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;->setDeviceType(Ljava/lang/String;)V

    .line 77
    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;->setOsType(Ljava/lang/String;)V

    .line 78
    const-string/jumbo v1, "cu_xw"

    invoke-virtual {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;->setVendor_key(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    invoke-static {v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->d(Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;)Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    move-result-object v1

    invoke-static {v0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;->onTokenSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 82
    :cond_2
    new-instance v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;

    invoke-direct {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;-><init>()V

    .line 83
    const-string/jumbo v1, "CUCC"

    invoke-virtual {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;->setVendorName(Ljava/lang/String;)V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CUCC \u83b7\u5f97\u7684\u624b\u673a\u6388\u6743\u7801\u5931\u8d25\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;->setMsg(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;

    invoke-static {v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;->d(Lcom/alicom/phonenumberauthsdk/gatewayauth/b/a;)Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    move-result-object v1

    invoke-static {v0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;->onTokenFailed(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
