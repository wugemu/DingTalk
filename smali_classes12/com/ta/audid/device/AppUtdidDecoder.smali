.class public Lcom/ta/audid/device/AppUtdidDecoder;
.super Ljava/lang/Object;
.source "AppUtdidDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Lcom/ta/audid/device/UtdidObj;
    .locals 13
    .param p0, "utdid"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0xe

    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 17
    new-instance v5, Lcom/ta/audid/device/UtdidObj;

    invoke-direct {v5}, Lcom/ta/audid/device/UtdidObj;-><init>()V

    .line 18
    .local v5, "utdidObj":Lcom/ta/audid/device/UtdidObj;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x18

    if-ne v8, v9, :cond_1

    .line 21
    const/4 v8, 0x2

    :try_start_0
    invoke-static {p0, v8}, Lcom/ta/utdid2/android/utils/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 26
    .local v6, "value":[B
    array-length v8, v6

    const/16 v9, 0x12

    if-ne v8, v9, :cond_0

    .line 27
    new-array v2, v12, [B

    .line 28
    .local v2, "needCheckBytes":[B
    new-array v4, v11, [B

    .line 30
    .local v4, "timestamp":[B
    new-array v0, v11, [B

    .line 31
    .local v0, "checkSum":[B
    invoke-static {v6, v10, v2, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    invoke-static {v6, v10, v4, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    const/16 v8, 0x8

    aget-byte v7, v6, v8

    .line 34
    .local v7, "version":B
    invoke-static {v6, v12, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    :try_start_1
    invoke-static {v2}, Lcom/ta/utdid2/device/UTUtdid;->calcHmac([B)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "strResult":Ljava/lang/String;
    invoke-static {v3}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v1

    .line 38
    .local v1, "checkSum2":[B
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 39
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/ta/audid/device/UtdidObj;->setValid(Z)V

    .line 40
    invoke-static {v4}, Lcom/ta/audid/utils/ByteUtils;->getLongByByte4([B)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/ta/audid/device/UtdidObj;->setTimestamp(J)V

    .line 41
    invoke-virtual {v5, v7}, Lcom/ta/audid/device/UtdidObj;->setVersion(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    .end local v0    # "checkSum":[B
    .end local v1    # "checkSum2":[B
    .end local v2    # "needCheckBytes":[B
    .end local v3    # "strResult":Ljava/lang/String;
    .end local v4    # "timestamp":[B
    .end local v6    # "value":[B
    .end local v7    # "version":B
    :cond_0
    :goto_0
    return-object v5

    .line 23
    :catch_0
    move-exception v8

    invoke-virtual {v5, v10}, Lcom/ta/audid/device/UtdidObj;->setValid(Z)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v5, v10}, Lcom/ta/audid/device/UtdidObj;->setValid(Z)V

    goto :goto_0

    .restart local v0    # "checkSum":[B
    .restart local v2    # "needCheckBytes":[B
    .restart local v4    # "timestamp":[B
    .restart local v6    # "value":[B
    .restart local v7    # "version":B
    :catch_1
    move-exception v8

    goto :goto_0
.end method
