.class public final Lcoh;
.super Ljava/lang/Object;
.source "DigestUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 168
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 169
    .local v1, "uuid":Ljava/util/UUID;
    if-nez v1, :cond_0

    .line 170
    const-string/jumbo v2, ""

    .line 178
    :goto_0
    return-object v2

    .line 173
    :cond_0
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "rawUuidStr":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 175
    const-string/jumbo v2, ""

    goto :goto_0

    .line 178
    :cond_1
    const-string/jumbo v2, "-"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 6
    .param p0, "uid"    # J

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, "encodedUid":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-gtz v4, :cond_0

    .line 128
    const/4 v4, 0x0

    .line 142
    :goto_0
    return-object v4

    .line 131
    :cond_0
    new-instance v2, Lcom/laiwang/protocol/media/MediaId;

    sget-object v4, Lcom/laiwang/protocol/media/MediaType;->IMAGE_JPG:Lcom/laiwang/protocol/media/MediaType;

    invoke-direct {v2, v4}, Lcom/laiwang/protocol/media/MediaId;-><init>(Lcom/laiwang/protocol/media/MediaType;)V

    .line 132
    .local v2, "thumbObj":Lcom/laiwang/protocol/media/MediaId;
    invoke-virtual {v2, p0, p1}, Lcom/laiwang/protocol/media/MediaId;->setSequence(J)V

    .line 134
    :try_start_0
    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFrom(Lcom/laiwang/protocol/media/MediaId;)Ljava/lang/String;

    move-result-object v0

    .line 135
    const-string/jumbo v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    move-object v4, v0

    .line 142
    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "mee":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1

    .line 138
    .end local v1    # "mee":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :catch_1
    move-exception v3

    .line 139
    .local v3, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # Ljava/io/InputStream;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 81
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-object v4

    .line 84
    :cond_1
    const/4 v0, 0x0

    .line 86
    .local v0, "buffer":[B
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 87
    .local v2, "hash":Ljava/security/MessageDigest;
    const/16 v5, 0x1000

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    .line 89
    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "length":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 90
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 93
    .end local v2    # "hash":Ljava/security/MessageDigest;
    .end local v3    # "length":I
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    goto :goto_0

    .line 92
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "hash":Ljava/security/MessageDigest;
    .restart local v3    # "length":I
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5}, Lcoh;->b([B)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    goto :goto_0

    .line 97
    .end local v2    # "hash":Ljava/security/MessageDigest;
    .end local v3    # "length":I
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_3

    .line 98
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    :cond_3
    throw v4
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 31
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcoh;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 32
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 33
    move-object v0, p0

    .line 39
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v0, p0

    goto :goto_0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 51
    :try_start_0
    const-string/jumbo v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 52
    .local v1, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 53
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcoh;->b([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 57
    .end local v1    # "md5":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 57
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)J
    .locals 8
    .param p0, "encodedUid"    # Ljava/lang/String;

    .prologue
    .line 147
    const-wide/16 v4, 0x0

    .line 149
    .local v4, "uid":J
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 150
    const-wide/16 v6, 0x0

    .line 163
    :goto_0
    return-wide v6

    .line 154
    :cond_0
    :try_start_0
    const-string/jumbo v6, "UTF-8"

    invoke-static {p0, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v0

    .line 156
    .local v0, "codedUid":Lcom/laiwang/protocol/media/MediaId;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaId;->getSequence()J
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v4

    .end local v0    # "codedUid":Lcom/laiwang/protocol/media/MediaId;
    .end local v3    # "value":Ljava/lang/String;
    :goto_1
    move-wide v6, v4

    .line 163
    goto :goto_0

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "mee":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1

    .line 159
    .end local v1    # "mee":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :catch_1
    move-exception v2

    .line 160
    .local v2, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method private static b([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 104
    if-nez p0, :cond_0

    .line 105
    const/4 v3, 0x0

    .line 116
    :goto_0
    return-object v3

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v0, "hexString":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 109
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "t":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 113
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 116
    .end local v2    # "t":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
