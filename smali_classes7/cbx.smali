.class public final Lcbx;
.super Ljava/lang/Object;
.source "WalletUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string/jumbo v2, ""

    .line 51
    .local v2, "encryptedCid":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v4

    .line 52
    .local v4, "securityGuardManager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-nez v4, :cond_0

    move-object v3, v2

    .line 65
    .end local v2    # "encryptedCid":Ljava/lang/String;
    .end local v4    # "securityGuardManager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    .local v3, "encryptedCid":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 55
    .end local v3    # "encryptedCid":Ljava/lang/String;
    .restart local v2    # "encryptedCid":Ljava/lang/String;
    .restart local v4    # "securityGuardManager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    :cond_0
    invoke-virtual {v4}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v1

    .line 56
    .local v1, "encryptComponent":Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;
    if-nez v1, :cond_1

    move-object v3, v2

    .line 57
    .end local v2    # "encryptedCid":Ljava/lang/String;
    .restart local v3    # "encryptedCid":Ljava/lang/String;
    goto :goto_0

    .line 59
    .end local v3    # "encryptedCid":Ljava/lang/String;
    .restart local v2    # "encryptedCid":Ljava/lang/String;
    :cond_1
    const/16 v5, 0x10

    const-string/jumbo v6, "00011online"

    .line 60
    invoke-interface {v1, v5, v6, p0}, Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeEncrypt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v1    # "encryptComponent":Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;
    .end local v4    # "securityGuardManager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    :goto_1
    move-object v3, v2

    .line 65
    .end local v2    # "encryptedCid":Ljava/lang/String;
    .restart local v3    # "encryptedCid":Ljava/lang/String;
    goto :goto_0

    .line 61
    .end local v3    # "encryptedCid":Ljava/lang/String;
    .restart local v2    # "encryptedCid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "redpackets"

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "getEncryptedCid error="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 62
    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a()V
    .locals 7

    .prologue
    .line 38
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 39
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v2

    .line 40
    .local v2, "uid":J
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "binded_alipay"

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "key":Ljava/lang/String;
    invoke-static {v0, v1}, Lcpk;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "encryptedCid"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string/jumbo v0, ""

    .line 76
    .local v0, "decryptedCid":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v4

    .line 77
    .local v4, "securityGuardManager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-nez v4, :cond_0

    move-object v1, v0

    .line 90
    .end local v0    # "decryptedCid":Ljava/lang/String;
    .end local v4    # "securityGuardManager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    .local v1, "decryptedCid":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 80
    .end local v1    # "decryptedCid":Ljava/lang/String;
    .restart local v0    # "decryptedCid":Ljava/lang/String;
    .restart local v4    # "securityGuardManager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    :cond_0
    invoke-virtual {v4}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v3

    .line 81
    .local v3, "encryptComponent":Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;
    if-nez v3, :cond_1

    move-object v1, v0

    .line 82
    .end local v0    # "decryptedCid":Ljava/lang/String;
    .restart local v1    # "decryptedCid":Ljava/lang/String;
    goto :goto_0

    .line 84
    .end local v1    # "decryptedCid":Ljava/lang/String;
    .restart local v0    # "decryptedCid":Ljava/lang/String;
    :cond_1
    const/16 v5, 0x10

    const-string/jumbo v6, "00011online"

    .line 85
    invoke-interface {v3, v5, v6, p0}, Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeDecrypt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v3    # "encryptComponent":Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;
    .end local v4    # "securityGuardManager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    :goto_1
    move-object v1, v0

    .line 90
    .end local v0    # "decryptedCid":Ljava/lang/String;
    .restart local v1    # "decryptedCid":Ljava/lang/String;
    goto :goto_0

    .line 86
    .end local v1    # "decryptedCid":Ljava/lang/String;
    .restart local v0    # "decryptedCid":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 87
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "redpackets"

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "getDecryptedCid error="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 87
    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
