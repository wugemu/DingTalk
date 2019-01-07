.class public Lcom/alipay/mobile/security/bio/utils/RSASign;
.super Ljava/lang/Object;
.source "RSASign.java"


# static fields
.field public static final SIGN_ALGORITHMS:Ljava/lang/String; = "SHA1WithRSA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;)Ljava/security/interfaces/RSAPublicKey;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 63
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v3, "sb":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "readLine":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 65
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_0

    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 74
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "readLine":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "\u516c\u94a5\u6570\u636e\u6d41\u8bfb\u53d6\u9519\u8bef"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 72
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "readLine":Ljava/lang/String;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/RSASign;->a(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 78
    .local v1, "publicKey":Ljava/security/interfaces/RSAPublicKey;
    return-object v1

    .line 76
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "publicKey":Ljava/security/interfaces/RSAPublicKey;
    .end local v2    # "readLine":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v4

    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "\u516c\u94a5\u8f93\u5165\u6d41\u4e3a\u7a7a"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static a(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .locals 5
    .param p0, "publicKeyStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v3}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v0

    .line 84
    .local v0, "buffer":[B
    const-string/jumbo v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 85
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 86
    .local v2, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v3

    .line 88
    .end local v0    # "buffer":[B
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v2    # "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u65e0\u6b64\u7b97\u6cd5"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 90
    :catch_1
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u516c\u94a5\u975e\u6cd5"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    :catch_2
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u516c\u94a5\u6570\u636e\u4e3a\u7a7a"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static doCheck([B[BLjava/io/InputStream;)Z
    .locals 5
    .param p0, "content"    # [B
    .param p1, "sign"    # [B
    .param p2, "pubkeyStream"    # Ljava/io/InputStream;

    .prologue
    .line 39
    :try_start_0
    invoke-static {p2}, Lcom/alipay/mobile/security/bio/utils/RSASign;->a(Ljava/io/InputStream;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v2

    .line 40
    .local v2, "pubKey":Ljava/security/PublicKey;
    const-string/jumbo v4, "SHA1WithRSA"

    .line 41
    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 43
    .local v3, "signature":Ljava/security/Signature;
    invoke-virtual {v3, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 44
    invoke-virtual {v3, p0}, Ljava/security/Signature;->update([B)V

    .line 46
    invoke-virtual {v3, p1}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 55
    .end local v2    # "pubKey":Ljava/security/PublicKey;
    .end local v3    # "signature":Ljava/security/Signature;
    :goto_0
    return v0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/security/SignatureException;
    invoke-virtual {v1}, Ljava/security/SignatureException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    .line 55
    .end local v1    # "e":Ljava/security/SignatureException;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 51
    :catch_1
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method
