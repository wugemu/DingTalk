.class public final Lcbq;
.super Ljava/lang/Object;
.source "SignUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 81
    move-object v3, p0

    .line 83
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v4

    .line 84
    .local v4, "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    invoke-virtual {v4}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getSecureSignatureComp()Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;

    move-result-object v5

    .line 86
    .local v5, "signComp":Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v2, "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "INPUT"

    invoke-virtual {v2, v6, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;

    invoke-direct {v1}, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;-><init>()V

    .line 89
    .local v1, "paramContext":Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;
    const-string/jumbo v6, "20151211"

    iput-object v6, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    .line 90
    iput-object v2, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    .line 91
    const/4 v6, 0x1

    iput v6, v1, Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;->requestType:I

    .line 92
    invoke-interface {v5, v1}, Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;->signRequest(Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 96
    .end local v1    # "paramContext":Lcom/taobao/wireless/security/sdk/SecurityGuardParamContext;
    .end local v2    # "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    .end local v5    # "signComp":Lcom/taobao/wireless/security/sdk/securesignature/ISecureSignatureComponent;
    :goto_0
    return-object v3

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "je":Ljava/lang/Exception;
    const-string/jumbo v6, "redpackets"

    const-string/jumbo v7, "sign"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "signWithSecureManager exception:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "publicKey"    # Ljava/lang/String;
    .param p1, "verifyResult"    # Ljava/lang/String;
    .param p2, "sign"    # Ljava/lang/String;

    .prologue
    .line 57
    const/4 v4, 0x0

    .line 59
    .local v4, "verify":Z
    :try_start_0
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    .line 60
    invoke-static {p0}, Lcbo;->a(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 61
    .local v2, "pubPKCS8":Ljava/security/spec/X509EncodedKeySpec;
    const-string/jumbo v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 62
    .local v1, "keyf":Ljava/security/KeyFactory;
    const-string/jumbo v5, "SHA1WithRSA"

    .line 63
    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 64
    .local v3, "signature":Ljava/security/Signature;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/Signature;->update([B)V

    .line 66
    invoke-static {p2}, Lcbo;->a(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v4

    .line 76
    .end local v1    # "keyf":Ljava/security/KeyFactory;
    .end local v2    # "pubPKCS8":Ljava/security/spec/X509EncodedKeySpec;
    .end local v3    # "signature":Ljava/security/Signature;
    :goto_0
    return v4

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 70
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v0

    .line 72
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v0

    .line 74
    .local v0, "e":Ljava/security/SignatureException;
    invoke-virtual {v0}, Ljava/security/SignatureException;->printStackTrace()V

    goto :goto_0
.end method
