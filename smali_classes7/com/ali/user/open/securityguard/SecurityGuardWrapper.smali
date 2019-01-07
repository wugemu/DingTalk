.class public Lcom/ali/user/open/securityguard/SecurityGuardWrapper;
.super Ljava/lang/Object;
.source "SecurityGuardWrapper.java"

# interfaces
.implements Lcom/ali/user/open/core/service/StorageService;


# static fields
.field private static final SEED_KEY:Ljava/lang/String; = "seed_key"

.field public static final TAG:Ljava/lang/String; = "SecurityGuardWrapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private convertEnvToMtop()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 133
    invoke-static {}, Lcom/ali/user/open/core/config/ConfigManager;->getInstance()Lcom/ali/user/open/core/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/open/core/config/ConfigManager;->getEnvironment()Lcom/ali/user/open/core/config/Environment;

    move-result-object v1

    sget-object v2, Lcom/ali/user/open/core/config/Environment;->TEST:Lcom/ali/user/open/core/config/Environment;

    if-ne v1, v2, :cond_0

    .line 134
    const/4 v0, 0x2

    .line 139
    .local v0, "alimmsdk_env":I
    :goto_0
    return v0

    .line 135
    .end local v0    # "alimmsdk_env":I
    :cond_0
    invoke-static {}, Lcom/ali/user/open/core/config/ConfigManager;->getInstance()Lcom/ali/user/open/core/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/open/core/config/ConfigManager;->getEnvironment()Lcom/ali/user/open/core/config/Environment;

    move-result-object v1

    sget-object v2, Lcom/ali/user/open/core/config/Environment;->PRE:Lcom/ali/user/open/core/config/Environment;

    if-ne v1, v2, :cond_1

    .line 136
    const/4 v0, 0x1

    .restart local v0    # "alimmsdk_env":I
    goto :goto_0

    .line 138
    .end local v0    # "alimmsdk_env":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "alimmsdk_env":I
    goto :goto_0
.end method

.method private getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 33
    :try_start_0
    sget-object v1, Lcom/ali/user/open/core/context/KernelContext;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    .line 36
    new-instance v1, Lcom/ali/user/open/core/exception/SecRuntimeException;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/ali/user/open/core/exception/SecRuntimeException;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method

.method private signForLogin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "beSigned"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 213
    :try_start_0
    invoke-direct {p0}, Lcom/ali/user/open/securityguard/SecurityGuardWrapper;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSafeTokenComp()Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;

    move-result-object v1

    .line 214
    .local v1, "safeTokenComponent":Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, p1, v3, v4}, Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;->signWithToken(Ljava/lang/String;[BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 224
    .end local v1    # "safeTokenComponent":Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;
    :goto_0
    return-object v2

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 224
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 219
    :catch_1
    move-exception v0

    .line 220
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    goto :goto_1

    .line 221
    .end local v0    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :catch_2
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "code"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 230
    :try_start_0
    invoke-direct {p0}, Lcom/ali/user/open/securityguard/SecurityGuardWrapper;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    .line 231
    .local v0, "dataEncrypt":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    if-eqz v0, :cond_2

    .line 232
    invoke-interface {v0, p1}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicDecryptDDp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "decryptCode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    .end local v0    # "dataEncrypt":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .end local v1    # "decryptCode":Ljava/lang/String;
    .end local p1    # "code":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local v0    # "dataEncrypt":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .restart local v1    # "decryptCode":Ljava/lang/String;
    .restart local p1    # "code":Ljava/lang/String;
    :cond_1
    move-object p1, v1

    .line 236
    goto :goto_0

    .line 240
    .end local v1    # "decryptCode":Ljava/lang/String;
    :cond_2
    const-string/jumbo p1, ""

    goto :goto_0

    .line 242
    .end local v0    # "dataEncrypt":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    const-string/jumbo p1, ""

    goto :goto_0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "code"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 255
    :try_start_0
    invoke-direct {p0}, Lcom/ali/user/open/securityguard/SecurityGuardWrapper;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataEncryptComp()Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;

    move-result-object v0

    .line 256
    .local v0, "dataEncrypt":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    if-eqz v0, :cond_0

    .line 257
    invoke-interface {v0, p1}, Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;->dynamicEncryptDDp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "encodeCode":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 271
    .end local v0    # "dataEncrypt":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .end local v2    # "encodeCode":Ljava/lang/String;
    .end local p1    # "code":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local v0    # "dataEncrypt":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .restart local v2    # "encodeCode":Ljava/lang/String;
    .restart local p1    # "code":Ljava/lang/String;
    :cond_1
    move-object p1, v2

    .line 261
    goto :goto_0

    .line 266
    .end local v0    # "dataEncrypt":Lcom/alibaba/wireless/security/open/dynamicdataencrypt/IDynamicDataEncryptComponent;
    .end local v2    # "encodeCode":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 150
    :try_start_0
    invoke-direct {p0}, Lcom/ali/user/open/securityguard/SecurityGuardWrapper;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v1

    invoke-static {}, Lcom/ali/user/open/core/config/ConfigManager;->getAppKeyIndex()I

    move-result v2

    sget-object v3, Lcom/ali/user/open/core/config/ConfigManager;->POSTFIX_OF_SECURITY_JPG:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    new-instance v1, Lcom/ali/user/open/core/exception/SecRuntimeException;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/ali/user/open/core/exception/SecRuntimeException;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method

.method public getDDpExValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 87
    :try_start_0
    invoke-direct {p0}, Lcom/ali/user/open/securityguard/SecurityGuardWrapper;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->getStringDDpEx(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUmid()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 105
    :try_start_0
    invoke-direct {p0}, Lcom/ali/user/open/securityguard/SecurityGuardWrapper;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getUMIDComp()Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;->getSecurityToken()Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 106
    .local v1, "ret":Ljava/lang/String;
    return-object v1

    .line 107
    .end local v1    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    new-instance v2, Lcom/ali/user/open/core/exception/SecRuntimeException;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v3

    invoke-direct {v2, v3, v0}, Lcom/ali/user/open/core/exception/SecRuntimeException;-><init>(ILjava/lang/Throwable;)V

    throw v2
.end method

.method public getValue(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isDynamic"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 43
    if-eqz p2, :cond_0

    .line 44
    :try_start_0
    invoke-direct {p0}, Lcom/ali/user/open/securityguard/SecurityGuardWrapper;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/ali/user/open/securityguard/SecurityGuardWrapper;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v0

    sget-object v1, Lcom/ali/user/open/core/config/ConfigManager;->POSTFIX_OF_SECURITY_JPG:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getExtraData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWUA()Lcom/ali/user/open/core/model/WUAData;
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v13, 0x0

    .line 115
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 116
    .local v10, "t":J
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 117
    .local v12, "tString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ali/user/open/securityguard/SecurityGuardWrapper;->getAppKey()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "appkey":Ljava/lang/String;
    invoke-direct {p0}, Lcom/ali/user/open/securityguard/SecurityGuardWrapper;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v9

    .line 120
    .local v9, "securityGuardManager":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    const-class v1, Lcom/alibaba/wireless/security/open/securitybody/ISecurityBodyComponent;

    invoke-virtual {v9, v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wireless/security/open/securitybody/ISecurityBodyComponent;

    .line 121
    .local v0, "securityBodyComponent":Lcom/alibaba/wireless/security/open/securitybody/ISecurityBodyComponent;
    invoke-direct {p0}, Lcom/ali/user/open/securityguard/SecurityGuardWrapper;->convertEnvToMtop()I

    move-result v6

    .line 122
    .local v6, "env":I
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wireless/security/open/securitybody/ISecurityBodyComponent;->getSecurityBodyDataEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;II)Ljava/lang/String;

    move-result-object v8

    .line 123
    .local v8, "securityBodyData":Ljava/lang/String;
    new-instance v1, Lcom/ali/user/open/core/model/WUAData;

    invoke-direct {v1, v2, v12, v8}, Lcom/ali/user/open/core/model/WUAData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v0    # "securityBodyComponent":Lcom/alibaba/wireless/security/open/securitybody/ISecurityBodyComponent;
    .end local v2    # "appkey":Ljava/lang/String;
    .end local v6    # "env":I
    .end local v8    # "securityBodyData":Ljava/lang/String;
    .end local v9    # "securityGuardManager":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    .end local v10    # "t":J
    .end local v12    # "tString":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 125
    :catch_0
    move-exception v7

    .line 126
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SecurityGuardWrapper"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ali/user/open/core/trace/SDKLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v13

    .line 127
    goto :goto_0
.end method

.method public putDDpExValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 78
    :try_start_0
    invoke-direct {p0}, Lcom/ali/user/open/securityguard/SecurityGuardWrapper;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->putStringDDpEx(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    goto :goto_0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "isDynamic"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 56
    :try_start_0
    invoke-direct {p0}, Lcom/ali/user/open/securityguard/SecurityGuardWrapper;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->putString(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeDDpExValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 96
    :try_start_0
    invoke-direct {p0}, Lcom/ali/user/open/securityguard/SecurityGuardWrapper;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->removeStringDDpEx(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeSafeToken(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 184
    :try_start_0
    invoke-direct {p0}, Lcom/ali/user/open/securityguard/SecurityGuardWrapper;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSafeTokenComp()Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;

    move-result-object v1

    .line 185
    .local v1, "safeTokenComponent":Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;
    invoke-interface {v1, p1}, Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;->removeToken(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 192
    .end local v1    # "safeTokenComponent":Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    goto :goto_0

    .line 189
    .end local v0    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :catch_1
    move-exception v2

    .line 190
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public removeValue(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isDynamic"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 65
    if-eqz p2, :cond_0

    .line 66
    :try_start_0
    invoke-direct {p0}, Lcom/ali/user/open/securityguard/SecurityGuardWrapper;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->removeString(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized saveSafeToken(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "salt"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 158
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/ali/user/open/securityguard/SecurityGuardWrapper;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-nez v6, :cond_1

    .line 178
    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    .line 162
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/ali/user/open/securityguard/SecurityGuardWrapper;->getSecurityGuardManager()Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSafeTokenComp()Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;

    move-result-object v3

    .line 163
    .local v3, "safeTokenComponent":Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;
    if-eqz v3, :cond_0

    .line 165
    const/4 v6, 0x4

    new-array v1, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, ""

    aput-object v7, v1, v6

    const/4 v6, 0x1

    const-string/jumbo v7, ""

    aput-object v7, v1, v6

    const/4 v6, 0x2

    const-string/jumbo v7, ""

    aput-object v7, v1, v6

    const/4 v6, 0x3

    const-string/jumbo v7, ""

    aput-object v7, v1, v6

    .line 168
    .local v1, "additions":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v0, v1, v6

    .line 169
    .local v0, "additional":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-interface {v3, p1, p2, v0, v6}, Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;->saveToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    goto :goto_0

    .line 173
    .end local v0    # "additional":Ljava/lang/String;
    .end local v1    # "additions":[Ljava/lang/String;
    .end local v3    # "safeTokenComponent":Lcom/alibaba/wireless/security/open/safetoken/ISafeTokenComponent;
    :catch_0
    move-exception v2

    .line 174
    .local v2, "e":Lcom/alibaba/wireless/security/open/SecException;
    :try_start_2
    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 158
    .end local v2    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 175
    :catch_1
    move-exception v4

    .line 176
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setUmid(Ljava/lang/String;)V
    .locals 0
    .param p1, "umid"    # Ljava/lang/String;

    .prologue
    .line 145
    return-void
.end method

.method public signMap(Ljava/lang/String;Ljava/util/TreeMap;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 196
    .local p2, "signMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    const/4 v3, 0x0

    .line 205
    :goto_0
    return-object v3

    .line 200
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 202
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 204
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "beSigned":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/ali/user/open/securityguard/SecurityGuardWrapper;->signForLogin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
