.class final Lcom/alicom/phonenumberauthsdk/gatewayauth/a/b;
.super Ljava/lang/Object;
.source "CMCCVaildManager.java"

# interfaces
.implements Lcom/cmic/sso/sdk/auth/TokenListener;


# instance fields
.field final synthetic a:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;


# direct methods
.method constructor <init>(Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

    invoke-static {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->a(Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

    invoke-static {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->a(Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "cmcc\uff1agetAccessCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/d;->e(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

    invoke-static {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->b(Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 85
    const/4 v0, 0x0

    .line 87
    :try_start_1
    const-string/jumbo v1, "resultCode"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 91
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "103000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 92
    :cond_1
    new-instance v1, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;

    invoke-direct {v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;-><init>()V

    .line 93
    const-string/jumbo v2, "CMCC"

    invoke-virtual {v1, v2}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;->setVendorName(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;->setCode(Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CMCC \u83b7\u5f97\u7684\u624b\u673a\u6388\u6743\u7801\u5931\u8d25\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/TokenFailRet;->setMsg(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

    invoke-static {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->c(Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;)Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    move-result-object v0

    invoke-static {v1}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;->onTokenFailed(Ljava/lang/String;)V

    .line 113
    :cond_2
    :goto_2
    return-void

    .line 80
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 89
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 98
    :cond_3
    const-string/jumbo v0, "token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

    const-string/jumbo v1, "token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->a(Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

    invoke-static {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->d(Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    new-instance v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;

    invoke-direct {v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;-><init>()V

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

    invoke-static {v2}, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->d(Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|cm_zyhl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;->setAccessCode(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;->setDeviceType(Ljava/lang/String;)V

    .line 104
    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;->setOsType(Ljava/lang/String;)V

    .line 105
    const-string/jumbo v1, "cm_zyhl"

    invoke-virtual {v0, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;->setVendor_key(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/b;->a:Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;

    invoke-static {v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;->c(Lcom/alicom/phonenumberauthsdk/gatewayauth/a/a;)Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;

    move-result-object v1

    invoke-static {v0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;->onTokenSuccess(Ljava/lang/String;)V

    goto :goto_2
.end method
