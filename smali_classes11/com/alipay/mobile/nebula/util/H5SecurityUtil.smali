.class public Lcom/alipay/mobile/nebula/util/H5SecurityUtil;
.super Ljava/lang/Object;
.source "H5SecurityUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SecurityUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytes2Hex([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 49
    const-string/jumbo v0, ""

    .line 51
    .local v0, "hs":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 52
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "stmp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 59
    .end local v2    # "stmp":Ljava/lang/String;
    :cond_1
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 45
    :goto_0
    return-object v5

    .line 21
    :cond_0
    :try_start_0
    const-string/jumbo v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 26
    .local v7, "md5Digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 27
    .local v1, "charArray":[C
    array-length v9, v1

    new-array v0, v9, [B

    .line 29
    .local v0, "byteArray":[B
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_1
    array-length v9, v1

    if-ge v4, v9, :cond_1

    .line 30
    aget-char v9, v1, v4

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    .line 29
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 22
    .end local v0    # "byteArray":[B
    .end local v1    # "charArray":[C
    .end local v4    # "index":I
    .end local v7    # "md5Digest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 23
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "SecurityUtil"

    const-string/jumbo v10, "exception detail"

    invoke-static {v9, v10, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 33
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "byteArray":[B
    .restart local v1    # "charArray":[C
    .restart local v4    # "index":I
    .restart local v7    # "md5Digest":Ljava/security/MessageDigest;
    :cond_1
    invoke-virtual {v7, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 34
    .local v6, "md5Bytes":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 36
    .local v3, "hexValue":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    :goto_2
    array-length v9, v6

    if-ge v4, v9, :cond_3

    .line 37
    aget-byte v9, v6, v4

    and-int/lit16 v8, v9, 0xff

    .line 38
    .local v8, "val":I
    const/16 v9, 0x10

    if-ge v8, v9, :cond_2

    .line 39
    const-string/jumbo v9, "0"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 44
    .end local v8    # "val":I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 45
    .local v5, "md5":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getSHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    :goto_0
    return-object v3

    .line 69
    :cond_0
    :try_start_0
    const-string/jumbo v4, "SHA-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 73
    .local v0, "sha1Digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 74
    .local v2, "textBytes":[B
    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 75
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 76
    .local v1, "sha1hash":[B
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5SecurityUtil;->bytes2Hex([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 71
    .end local v0    # "sha1Digest":Ljava/security/MessageDigest;
    .end local v1    # "sha1hash":[B
    .end local v2    # "textBytes":[B
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static pathSecurityCheck(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string/jumbo v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\\"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
