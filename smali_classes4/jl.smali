.class final Ljl;
.super Ljava/lang/Object;
.source "DefaultSecurityGuard.java"

# interfaces
.implements Ljm;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 24
    const-string/jumbo v0, "awcn.DefaultSecurityGuard"

    sput-object v0, Ljl;->a:Ljava/lang/String;

    .line 25
    sput-boolean v1, Ljl;->b:Z

    .line 28
    :try_start_0
    invoke-static {}, Lic;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Ljl;->b:Z
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    sput-boolean v2, Ljl;->b:Z

    goto :goto_0

    .line 33
    :catch_1
    move-exception v0

    sput-boolean v1, Ljl;->b:Z

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljl;->c:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljl;->d:Ljava/util/Map;

    .line 42
    sget-boolean v0, Ljl;->b:Z

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Ljl;->c:Ljava/util/Map;

    const-string/jumbo v1, "HMAC_SHA1"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Ljl;->c:Ljava/util/Map;

    const-string/jumbo v1, "MD5"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Ljl;->d:Ljava/util/Map;

    const-string/jumbo v1, "ASE128"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Ljl;->d:Ljava/util/Map;

    const-string/jumbo v1, "ASE256"

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "signAlgorithm"    # Ljava/lang/String;
    .param p3, "appkey"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;
    .param p5, "authCode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 53
    sget-boolean v4, Ljl;->b:Z

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Ljl;->c:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v4, v5

    .line 73
    :goto_0
    return-object v4

    .line 61
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v1

    .line 62
    .local v1, "sgMgr":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    invoke-virtual {v1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSecureSignatureComp()Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    move-result-object v3

    .line 63
    .local v3, "ssComp":Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;
    if-eqz v3, :cond_2

    .line 64
    new-instance v2, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;

    invoke-direct {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;-><init>()V

    .line 65
    .local v2, "sgc":Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;
    iput-object p3, v2, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    .line 66
    iget-object v4, v2, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    const-string/jumbo v6, "INPUT"

    invoke-interface {v4, v6, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v4, p0, Ljl;->c:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    .line 68
    invoke-interface {v3, v2, p5}, Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;->signRequest(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 70
    .end local v1    # "sgMgr":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    .end local v2    # "sgc":Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;
    .end local v3    # "ssComp":Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Lcom/alibaba/wireless/security/open/SecException;
    sget-object v4, Ljl;->a:Ljava/lang/String;

    const-string/jumbo v6, "Securityguard sign request failed."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v5, v0, v7}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .end local v0    # "e":Lcom/alibaba/wireless/security/open/SecException;
    :cond_2
    move-object v4, v5

    .line 73
    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;[B)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # [B

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 110
    const/4 v2, 0x0

    .line 111
    .local v2, "ret":Z
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v5

    .line 115
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v3

    .line 116
    .local v3, "sgMgr":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    if-eqz v3, :cond_2

    .line 117
    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v1

    .line 118
    .local v1, "ddsComp":Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;
    if-eqz v1, :cond_2

    .line 119
    invoke-interface {v1, p2, p3}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->putByteArray(Ljava/lang/String;[B)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 120
    .local v0, "code":I
    if-eqz v0, :cond_3

    const/4 v2, 0x1

    .end local v0    # "code":I
    .end local v1    # "ddsComp":Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;
    .end local v3    # "sgMgr":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :cond_2
    :goto_1
    move v5, v2

    .line 127
    goto :goto_0

    .restart local v0    # "code":I
    .restart local v1    # "ddsComp":Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;
    .restart local v3    # "sgMgr":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :cond_3
    move v2, v5

    .line 120
    goto :goto_1

    .line 123
    .end local v0    # "code":I
    .end local v1    # "ddsComp":Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;
    .end local v3    # "sgMgr":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :catch_0
    move-exception v4

    .line 124
    .local v4, "t":Ljava/lang/Throwable;
    sget-object v6, Ljl;->a:Ljava/lang/String;

    const-string/jumbo v7, "dynamicPutBytes"

    const/4 v8, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v4, v5}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "bytes":[B
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-object v4

    .line 137
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v2

    .line 138
    .local v2, "sgMgr":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    if-eqz v2, :cond_2

    .line 139
    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getDynamicDataStoreComp()Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;

    move-result-object v1

    .line 140
    .local v1, "ddsComp":Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;
    if-eqz v1, :cond_2

    .line 141
    invoke-interface {v1, p2}, Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;->getByteArray(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v1    # "ddsComp":Lcom/alibaba/wireless/security/open/dynamicdatastore/IDynamicDataStoreComponent;
    .end local v2    # "sgMgr":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :cond_2
    :goto_1
    move-object v4, v0

    .line 148
    goto :goto_0

    .line 144
    :catch_0
    move-exception v3

    .line 145
    .local v3, "t":Ljava/lang/Throwable;
    sget-object v5, Ljl;->a:Ljava/lang/String;

    const-string/jumbo v6, "dynamicGetBytes"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v4, v3, v7}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)[B
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cipherAlgorithm"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "needProcessValue"    # [B
    .param p5, "authCode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 83
    sget-boolean v5, Ljl;->b:Z

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Ljl;->d:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v4

    .line 90
    :cond_1
    iget-object v5, p0, Ljl;->d:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 91
    .local v0, "cipherMode":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 95
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v2

    .line 96
    .local v2, "sgm":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v1

    .line 98
    .local v1, "comp":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v5, p3, p4, p5}, Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;->staticBinarySafeDecryptNoB64(ILjava/lang/String;[BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 102
    .end local v1    # "comp":Lcom/alibaba/wireless/security/open/staticdataencrypt/IStaticDataEncryptComponent;
    .end local v2    # "sgm":Lcom/alibaba/wireless/security/open/SecurityGuardManager;
    :catch_0
    move-exception v3

    .line 103
    .local v3, "t":Ljava/lang/Throwable;
    sget-object v5, Ljl;->a:Ljava/lang/String;

    const-string/jumbo v6, "staticBinarySafeDecryptNoB64"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v4, v3, v7}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "signAlgorithm"    # Ljava/lang/String;
    .param p3, "appkey"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;
    .param p5, "authCode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ljl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
