.class public Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;
.super Ljava/lang/Object;
.source "PubKeyHelper.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static generatePubKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 27
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->getPubKey(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 35
    :cond_0
    :goto_0
    return-object p1

    .line 32
    :catch_0
    move-exception v1

    .line 33
    sget-object v2, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public static getPubKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 39
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->a:Ljava/lang/String;

    const-string/jumbo v1, "\u83b7\u53d6\u672c\u5730\u6216\u516c\u94a5"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1079
    const-string/jumbo v1, "VI_SP_LOCAL_PUB_KEY"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->a:Ljava/lang/String;

    const-string/jumbo v1, "\u672c\u5730\u6ca1\u6709\u516c\u94a5\uff0c\u7528\u5185\u7f6e\u7684"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getEnvType()Ljava/lang/String;

    move-result-object v0

    .line 2055
    sget-object v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pub_key_env\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ONLINE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2057
    :cond_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->a:Ljava/lang/String;

    const-string/jumbo v1, "\u7528\u5185\u7f6e\u7ebf\u4e0a\u516c\u94a5"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    const-string/jumbo v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAo0z/L+pelCPu6DwDFAY/3ITzesr8lnNmYjHht4XUJvLYYBwvDbHMc8xi9sPK9ohVHIKRVLVmmZ9SdmuWYN9HzCyyZ6kEHx+IDBPnulwjdeN/N0w25mVRhYDWxJ2/1C6cPIuNcISchOQdGKuAC0xR37i/kWH9sjBidAQjageYgQoj1HX81flZaPve75Esue85AHZ0VIurjwx7uEuxvQtvCIUvX1bbF13TIYuTbJbn/LrNHby1Kxp42ggNUjAkYUVSF7SC3UP+YGKruii7Vh1UnJ/rpVhjdt3It8le9px8H4Ltt9N3hzU17rBnFpp2ZnmiZVtlfMvsStY54Fl5cSJVxQIDAQAB"

    :goto_0
    return-object v0

    .line 2060
    :cond_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->a:Ljava/lang/String;

    const-string/jumbo v1, "\u7528\u5185\u7f6e\u7ebf\u4e0b\u516c\u94a5"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    const-string/jumbo v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzPzx6ZjT2GWairxEJltpqtOB3FHRTqOCgOlQxAokUR3jN6mG3wizGMtZ5q0TNJwsHFwAcyQhcXdThJl9B6tDVOFTSTmERPHWZPXGNYrtpKGIP3u/QDXMVnMYCeP4ecZBWdwUDyzd3zHMo1Hm53/xzqOoaPfJEgS0uwBKTth3qtFenOFpUt3Y8X9fbMiGsbVWVwC55fsMDUt3husMXumHH4DpYBPgjHr7SkBA/ob1Q5L65ZBkdZ0M4CqWqgmCjic61pHJgPv8fhun2QGAwKs05eWOuIZ2EiRAj7YvguzZAdVQGTE/fvZtQMDmKJGrh5zjsrEPt3zQ236IbhfbUHXmoQIDAQAB"

    goto :goto_0

    .line 45
    :cond_2
    sget-object v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u83b7\u53d6\u5230\u672c\u5730\u516c\u94a5\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateLocalPubKey(Landroid/content/Context;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    const-string/jumbo v0, ""

    .line 106
    :goto_0
    return-object v0

    .line 93
    :cond_0
    const/4 v1, 0x0

    .line 95
    :try_start_0
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->data:Ljava/lang/String;

    invoke-static {v0}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 99
    :goto_1
    if-eqz v0, :cond_1

    const-string/jumbo v1, "pubKey"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    sget-object v2, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "json fail "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    .line 102
    :cond_2
    const-string/jumbo v1, "pubKey"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 104
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "VI_SP_LOCAL_PUB_KEY"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    sget-object v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u66f4\u65b0\u672c\u5730\u516c\u94a5\u4e3a\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
