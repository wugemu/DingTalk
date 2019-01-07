.class public final Lcom/unicom/xiaowo/verify/a/c;
.super Ljava/lang/Object;
.source "CryptHelper.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    const-string/jumbo v0, ""

    .line 47
    :try_start_0
    const-string/jumbo v1, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCbRkBR4leALApkWRp2ng8zJ2WgI7YEqtMwW9Q1tmRzDLPNhH0ugACfbiStBG4ybdYNHzRlxvOwQ7R0MeN56qEPsv6qieg/HiRXBnQ2hQ2hypo9JHqHx8BX54ESZ+BIf0imjGTcxtHvbzYA04ckmH5Enl2Pkd+R/RZuMK589C7KwQIDAQAB"

    .line 1027
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-static {v1}, Lcom/unicom/xiaowo/verify/a/b;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 1028
    const-string/jumbo v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 1029
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    .line 1018
    const-string/jumbo v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 1019
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1020
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1021
    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 1022
    invoke-static {v1}, Lcom/unicom/xiaowo/verify/a/b;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 48
    const-string/jumbo v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    .line 50
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unicom/xiaowo/verify/d/e;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
