.class public Ljew;
.super Ljava/lang/Object;
.source "H5PluginVIListener.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;


# instance fields
.field private a:Ljfa;


# direct methods
.method public constructor <init>(Ljfa;)V
    .locals 0
    .param p1, "listener"    # Ljfa;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Ljew;->a:Ljfa;

    .line 17
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    .locals 5
    .param p1, "verifyId"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "bizName"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 22
    .local v0, "result2h5":Lorg/json/JSONObject;
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    const-string/jumbo v1, "message"

    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mybank/android/api/VerifyTask;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    :cond_0
    const-string/jumbo v1, "verifyId"

    invoke-static {v0, v1, p1}, Lcom/mybank/android/api/VerifyTask;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    const-string/jumbo v1, "token"

    invoke-static {v0, v1, p2}, Lcom/mybank/android/api/VerifyTask;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    const-string/jumbo v1, "bizName"

    invoke-static {v0, v1, p3}, Lcom/mybank/android/api/VerifyTask;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    const-string/jumbo v1, "bizResponseData"

    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getBizResponseData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mybank/android/api/VerifyTask;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 33
    const-string/jumbo v1, "code"

    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mybank/android/api/VerifyTask;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    :goto_0
    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1000"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 38
    const-string/jumbo v1, "success"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mybank/android/api/VerifyTask;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    :goto_1
    invoke-virtual {p4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1000"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 45
    iget-object v1, p0, Ljew;->a:Ljfa;

    invoke-interface {v1, v4, v0}, Ljfa;->onResult(ZLorg/json/JSONObject;)V

    .line 49
    :goto_2
    return-void

    .line 35
    :cond_1
    const-string/jumbo v1, "code"

    const-string/jumbo v2, "2002"

    invoke-static {v0, v1, v2}, Lcom/mybank/android/api/VerifyTask;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    :cond_2
    const-string/jumbo v1, "success"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mybank/android/api/VerifyTask;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 47
    :cond_3
    iget-object v1, p0, Ljew;->a:Ljfa;

    invoke-interface {v1, v3, v0}, Ljfa;->onResult(ZLorg/json/JSONObject;)V

    goto :goto_2
.end method

.method public onVerifyResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "bizName"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    .prologue
    .line 53
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0, p1, p2, p3}, Ljew;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V

    .line 54
    return-void
.end method
