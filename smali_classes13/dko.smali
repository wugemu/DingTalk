.class public final Ldko;
.super Ljava/lang/Object;
.source "SignUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .param p0, "mode"    # I
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v3, 0x0

    .line 33
    .local v3, "result":[B
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v4

    .line 34
    .local v4, "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    invoke-virtual {v4}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v1

    .line 36
    .local v1, "dataEncryptComp":Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;
    const/16 v5, 0x10

    invoke-interface {v1, v5, p1, p2}, Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeDecrypt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "base64":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 38
    const/4 v5, 0x0

    invoke-static {v0, v5}, Lhv;->a(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 43
    .end local v0    # "base64":Ljava/lang/String;
    .end local v1    # "dataEncryptComp":Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;
    .end local v4    # "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    :cond_0
    :goto_0
    return-object v3

    .line 40
    :catch_0
    move-exception v2

    .line 41
    .local v2, "je":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
