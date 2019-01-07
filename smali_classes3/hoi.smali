.class public final Lhoi;
.super Ljava/lang/Object;
.source "MiniAppEncryptUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "inputString"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 49
    .end local p0    # "inputString":Ljava/lang/String;
    .local v1, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object p0

    .line 32
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "inputString":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/auth/AuthService;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 31
    invoke-static {v4}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v3

    .line 33
    .local v3, "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v3, :cond_0

    .line 36
    invoke-virtual {v3}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v0

    .line 37
    .local v0, "component":Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;
    if-eqz v0, :cond_0

    .line 40
    const/16 v4, 0x12

    const-string/jumbo v5, "0613eapp"

    invoke-interface {v0, v4, v5, p0}, Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeEncrypt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "encryptString":Ljava/lang/String;
    move-object p0, v2

    .line 44
    goto :goto_0

    .line 45
    .end local v0    # "component":Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;
    .end local v2    # "encryptString":Ljava/lang/String;
    .end local v3    # "manager":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    :catch_0
    move-exception v1

    .line 46
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    const/4 p0, 0x0

    goto :goto_0
.end method
