.class public Lcom/alibaba/wukong/auth/bl;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# direct methods
.method public static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    .end local p0    # "data":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 138
    .restart local p0    # "data":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/auth/AuthService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    .line 139
    .local v0, "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v1

    .line 141
    .local v1, "staticComp":Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;
    if-eqz v1, :cond_1

    .line 142
    const/16 v2, 0x10

    const-string/jumbo v3, "23601162"

    invoke-interface {v1, v2, v3, p0}, Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeEncrypt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .end local v0    # "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    .end local v1    # "staticComp":Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;
    :catch_0
    move-exception v2

    .line 147
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    .end local p0    # "data":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 154
    .restart local p0    # "data":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/auth/AuthService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    .line 155
    .local v0, "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v1

    .line 157
    .local v1, "staticComp":Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;
    if-eqz v1, :cond_1

    .line 158
    const/16 v2, 0x10

    const-string/jumbo v3, "23601162"

    invoke-interface {v1, v2, v3, p0}, Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeDecrypt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .end local v0    # "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    .end local v1    # "staticComp":Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;
    :catch_0
    move-exception v2

    .line 163
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method
