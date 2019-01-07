.class public final Lkkl;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "param"    # Ljava/lang/String;

    .prologue
    .line 27
    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    .end local p0    # "param":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {p0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 111
    .end local p0    # "source":Ljava/lang/String;
    .local v2, "e":Ljava/lang/Exception;
    :goto_0
    return-object p0

    .line 94
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "source":Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string/jumbo v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 95
    .local v1, "digester":Ljava/security/MessageDigest;
    const-string/jumbo v6, "utf-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 96
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 99
    .local v0, "digest":[B
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    .local v4, "hexString":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v0

    if-ge v5, v6, :cond_2

    .line 101
    aget-byte v6, v0, v5

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "h":Ljava/lang/String;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 105
    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 107
    .end local v3    # "h":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 108
    .end local v0    # "digest":[B
    .end local v1    # "digester":Ljava/security/MessageDigest;
    .end local v4    # "hexString":Ljava/lang/StringBuffer;
    .end local v5    # "i":I
    :catch_0
    move-exception v2

    .line 109
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "mtopsdk.SecurityUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[getMd5] compute md5 value failed for source str="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    const/4 p0, 0x0

    goto :goto_0
.end method
