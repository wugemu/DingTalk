.class public Lcom/ta/audid/store/UtdidContentUtil;
.super Ljava/lang/Object;
.source "UtdidContentUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDecodedContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 19
    const-string/jumbo v3, ""

    .line 31
    :cond_0
    :goto_0
    return-object v3

    .line 21
    :cond_1
    const-string/jumbo v3, ""

    .line 23
    .local v3, "temp":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/ta/utdid2/android/utils/Base64;->decode([BI)[B

    move-result-object v1

    .line 24
    .local v1, "lBContent":[B
    if-eqz v1, :cond_0

    .line 25
    invoke-static {v1}, Lcom/ta/audid/utils/RC4;->rc4([B)[B

    move-result-object v2

    .line 26
    .local v2, "lBRc4":[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "temp":Ljava/lang/String;
    .local v4, "temp":Ljava/lang/String;
    move-object v3, v4

    .end local v4    # "temp":Ljava/lang/String;
    .restart local v3    # "temp":Ljava/lang/String;
    goto :goto_0

    .line 28
    .end local v1    # "lBContent":[B
    .end local v2    # "lBRc4":[B
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, ""

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v0, v6}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getEncodedContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    const-string/jumbo v2, ""

    .line 48
    :goto_0
    return-object v2

    .line 41
    :cond_0
    const-string/jumbo v2, ""

    .line 43
    .local v2, "temp":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/ta/audid/utils/RC4;->rc4([B)[B

    move-result-object v0

    .line 44
    .local v0, "bytes":[B
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v0, v4}, Lcom/ta/utdid2/android/utils/Base64;->encode([BI)[B

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "temp":Ljava/lang/String;
    .local v3, "temp":Ljava/lang/String;
    move-object v2, v3

    .line 47
    .end local v3    # "temp":Ljava/lang/String;
    .restart local v2    # "temp":Ljava/lang/String;
    goto :goto_0

    .line 45
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, ""

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v1, v5}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
