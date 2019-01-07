.class public Lcom/alipay/share/sdk/openapi/algorithm/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 117
    const v0, 0x19000

    invoke-static {p0, v0}, Lcom/alipay/share/sdk/openapi/algorithm/MD5;->getMD5(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMD5(Ljava/io/File;I)Ljava/lang/String;
    .locals 10
    .param p0, "file"    # Ljava/io/File;
    .param p1, "var1"    # I

    .prologue
    const/4 v4, 0x0

    .line 121
    if-eqz p0, :cond_3

    if-lez p1, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, "var2":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 129
    .local v3, "var8":Z
    const/4 v3, 0x1

    .line 130
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .end local v1    # "var2":Ljava/io/FileInputStream;
    .local v2, "var2":Ljava/io/FileInputStream;
    int-to-long v6, p1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gtz v5, :cond_0

    int-to-long v6, p1

    :goto_0
    long-to-int v5, v6

    .line 130
    invoke-static {v2, v5}, Lcom/alipay/share/sdk/openapi/algorithm/MD5;->getMD5(Ljava/io/FileInputStream;I)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "var14":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 162
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 169
    .end local v0    # "var14":Ljava/lang/String;
    .end local v2    # "var2":Ljava/io/FileInputStream;
    .end local v3    # "var8":Z
    :goto_1
    return-object v0

    .line 131
    .restart local v2    # "var2":Ljava/io/FileInputStream;
    .restart local v3    # "var8":Z
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->length()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v6

    goto :goto_0

    .line 137
    .end local v2    # "var2":Ljava/io/FileInputStream;
    .restart local v1    # "var2":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v4

    .line 138
    :goto_2
    if-eqz v3, :cond_1

    .line 140
    if-eqz v1, :cond_1

    .line 141
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 148
    :cond_1
    :goto_3
    throw v4

    .line 138
    :catch_0
    move-exception v5

    .line 151
    :goto_4
    if-eqz v1, :cond_2

    .line 152
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_5
    move-object v0, v4

    .line 158
    goto :goto_1

    .end local v1    # "var2":Ljava/io/FileInputStream;
    .end local v3    # "var8":Z
    :cond_3
    move-object v0, v4

    .line 169
    goto :goto_1

    .restart local v1    # "var2":Ljava/io/FileInputStream;
    .restart local v3    # "var8":Z
    :catch_1
    move-exception v5

    goto :goto_3

    :catch_2
    move-exception v5

    goto :goto_5

    .end local v1    # "var2":Ljava/io/FileInputStream;
    .restart local v0    # "var14":Ljava/lang/String;
    .restart local v2    # "var2":Ljava/io/FileInputStream;
    :catch_3
    move-exception v4

    goto :goto_1

    .line 137
    .end local v0    # "var14":Ljava/lang/String;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "var2":Ljava/io/FileInputStream;
    .restart local v1    # "var2":Ljava/io/FileInputStream;
    goto :goto_2

    .line 138
    .end local v1    # "var2":Ljava/io/FileInputStream;
    .restart local v2    # "var2":Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    move-object v1, v2

    .end local v2    # "var2":Ljava/io/FileInputStream;
    .restart local v1    # "var2":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public static getMD5(Ljava/io/File;II)Ljava/lang/String;
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .prologue
    const/4 v4, 0x0

    .line 179
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    if-ltz p1, :cond_2

    if-lez p2, :cond_2

    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, "var3":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 187
    .local v3, "var9":Z
    const/4 v3, 0x1

    .line 188
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "var3":Ljava/io/FileInputStream;
    .local v2, "var3":Ljava/io/FileInputStream;
    const v5, 0x19000

    :try_start_1
    invoke-static {v2, v5, p1, p2}, Lcom/alipay/share/sdk/openapi/algorithm/MD5;->getMD5(Ljava/io/FileInputStream;III)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "var15":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 219
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 226
    .end local v0    # "var15":Ljava/lang/String;
    .end local v2    # "var3":Ljava/io/FileInputStream;
    .end local v3    # "var9":Z
    :goto_0
    return-object v0

    .line 194
    .restart local v1    # "var3":Ljava/io/FileInputStream;
    .restart local v3    # "var9":Z
    :catchall_0
    move-exception v4

    .line 195
    :goto_1
    if-eqz v3, :cond_0

    .line 197
    if-eqz v1, :cond_0

    .line 198
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 205
    :cond_0
    :goto_2
    throw v4

    .line 195
    :catch_0
    move-exception v5

    .line 208
    :goto_3
    if-eqz v1, :cond_1

    .line 209
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_4
    move-object v0, v4

    .line 215
    goto :goto_0

    .end local v1    # "var3":Ljava/io/FileInputStream;
    .end local v3    # "var9":Z
    :cond_2
    move-object v0, v4

    .line 226
    goto :goto_0

    .restart local v1    # "var3":Ljava/io/FileInputStream;
    .restart local v3    # "var9":Z
    :catch_1
    move-exception v5

    goto :goto_2

    :catch_2
    move-exception v5

    goto :goto_4

    .end local v1    # "var3":Ljava/io/FileInputStream;
    .restart local v0    # "var15":Ljava/lang/String;
    .restart local v2    # "var3":Ljava/io/FileInputStream;
    :catch_3
    move-exception v4

    goto :goto_0

    .line 194
    .end local v0    # "var15":Ljava/lang/String;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "var3":Ljava/io/FileInputStream;
    .restart local v1    # "var3":Ljava/io/FileInputStream;
    goto :goto_1

    .line 195
    .end local v1    # "var3":Ljava/io/FileInputStream;
    .restart local v2    # "var3":Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    move-object v1, v2

    .end local v2    # "var3":Ljava/io/FileInputStream;
    .restart local v1    # "var3":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public static getMD5(Ljava/io/FileInputStream;I)Ljava/lang/String;
    .locals 8
    .param p0, "fileInputStream"    # Ljava/io/FileInputStream;
    .param p1, "var1"    # I

    .prologue
    const/4 v5, 0x0

    .line 84
    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    .line 86
    :try_start_0
    const-string/jumbo v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 87
    .local v0, "var2":Ljava/security/MessageDigest;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 88
    .local v1, "var3":Ljava/lang/StringBuilder;
    new-array v3, p1, [B

    .line 92
    .local v3, "var7":[B
    :goto_0
    invoke-virtual {p0, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .local v4, "var8":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 96
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 98
    .local v2, "var6":[B
    const/4 p1, 0x0

    :goto_1
    array-length v6, v2

    if-lt p1, v6, :cond_2

    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 107
    .end local v0    # "var2":Ljava/security/MessageDigest;
    .end local v1    # "var3":Ljava/lang/StringBuilder;
    .end local v2    # "var6":[B
    .end local v3    # "var7":[B
    .end local v4    # "var8":I
    :cond_0
    :goto_2
    return-object v5

    .line 93
    .restart local v0    # "var2":Ljava/security/MessageDigest;
    .restart local v1    # "var3":Ljava/lang/StringBuilder;
    .restart local v3    # "var7":[B
    .restart local v4    # "var8":I
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 104
    .end local v0    # "var2":Ljava/security/MessageDigest;
    .end local v1    # "var3":Ljava/lang/StringBuilder;
    .end local v3    # "var7":[B
    .end local v4    # "var8":I
    :catch_0
    move-exception v6

    goto :goto_2

    .line 99
    .restart local v0    # "var2":Ljava/security/MessageDigest;
    .restart local v1    # "var3":Ljava/lang/StringBuilder;
    .restart local v2    # "var6":[B
    .restart local v3    # "var7":[B
    .restart local v4    # "var8":I
    :cond_2
    aget-byte v6, v2, p1

    and-int/lit16 v6, v6, 0xff

    add-int/lit16 v6, v6, 0x100

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method public static getMD5(Ljava/io/FileInputStream;III)Ljava/lang/String;
    .locals 12
    .param p0, "fileInputStream"    # Ljava/io/FileInputStream;
    .param p1, "var1"    # I
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .prologue
    const/4 v6, 0x0

    .line 45
    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    if-ltz p2, :cond_0

    if-lez p3, :cond_0

    .line 47
    int-to-long v8, p2

    :try_start_0
    invoke-virtual {p0, v8, v9}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v8

    int-to-long v10, p2

    cmp-long v7, v8, v10

    if-gez v7, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-object v6

    .line 50
    :cond_1
    const-string/jumbo v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 51
    .local v0, "var10":Ljava/security/MessageDigest;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 52
    .local v2, "var4":Ljava/lang/StringBuilder;
    new-array v5, p1, [B

    .line 54
    .local v5, "var9":[B
    const/4 v3, 0x0

    .line 57
    .local v3, "var6":I
    :goto_1
    invoke-virtual {p0, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, "var11":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_2

    if-lt v3, p3, :cond_3

    .line 67
    :cond_2
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 69
    .local v4, "var8":[B
    const/4 p1, 0x0

    :goto_2
    array-length v7, v4

    if-lt p1, v7, :cond_5

    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 58
    .end local v4    # "var8":[B
    :cond_3
    add-int v7, v3, v1

    if-gt v7, p3, :cond_4

    .line 59
    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 60
    add-int/2addr v3, v1

    .line 61
    goto :goto_1

    .line 62
    :cond_4
    const/4 v7, 0x0

    sub-int v8, p3, v3

    invoke-virtual {v0, v5, v7, v8}, Ljava/security/MessageDigest;->update([BII)V

    .line 63
    move v3, p3

    goto :goto_1

    .line 70
    .restart local v4    # "var8":[B
    :cond_5
    aget-byte v7, v4, p1

    and-int/lit16 v7, v7, 0xff

    add-int/lit16 v7, v7, 0x100

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 76
    .end local v0    # "var10":Ljava/security/MessageDigest;
    .end local v1    # "var11":I
    .end local v2    # "var4":Ljava/lang/StringBuilder;
    .end local v3    # "var6":I
    .end local v4    # "var8":[B
    .end local v5    # "var9":[B
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "var0"    # Ljava/lang/String;

    .prologue
    .line 113
    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "var1":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x19000

    invoke-static {v0, v1}, Lcom/alipay/share/sdk/openapi/algorithm/MD5;->getMD5(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v1

    .end local v0    # "var1":Ljava/io/File;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getMD5(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "var0"    # Ljava/lang/String;
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .prologue
    .line 175
    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "var3":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p1, p2}, Lcom/alipay/share/sdk/openapi/algorithm/MD5;->getMD5(Ljava/io/File;II)Ljava/lang/String;

    move-result-object v1

    .end local v0    # "var3":Ljava/io/File;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getMessageDigest([B)Ljava/lang/String;
    .locals 9
    .param p0, "bytes"    # [B

    .prologue
    .line 13
    const/16 v8, 0x10

    new-array v2, v8, [C

    fill-array-data v2, :array_0

    .line 17
    .local v2, "var1":[C
    :try_start_0
    const-string/jumbo v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .local v1, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 19
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    array-length v7, p0

    .local v7, "var8":I
    mul-int/lit8 v8, v7, 0x2

    new-array v3, v8, [C

    .line 20
    .local v3, "var3":[C
    const/4 v4, 0x0

    .line 22
    .local v4, "var4":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v5, v4

    .end local v4    # "var4":I
    .local v5, "var4":I
    :goto_0
    if-lt v0, v7, :cond_0

    .line 28
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v3}, Ljava/lang/String;-><init>([C)V

    .line 30
    .end local v0    # "i":I
    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    .end local v3    # "var3":[C
    .end local v5    # "var4":I
    .end local v7    # "var8":I
    :goto_1
    return-object v8

    .line 23
    .restart local v0    # "i":I
    .restart local v1    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v3    # "var3":[C
    .restart local v5    # "var4":I
    .restart local v7    # "var8":I
    :cond_0
    aget-byte v6, p0, v0

    .line 24
    .local v6, "var6":B
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "var4":I
    .restart local v4    # "var4":I
    ushr-int/lit8 v8, v6, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v2, v8

    aput-char v8, v3, v5

    .line 25
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "var4":I
    .restart local v5    # "var4":I
    and-int/lit8 v8, v6, 0xf

    aget-char v8, v2, v8

    aput-char v8, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    .end local v0    # "i":I
    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    .end local v3    # "var3":[C
    .end local v5    # "var4":I
    .end local v6    # "var6":B
    .end local v7    # "var8":I
    :catch_0
    move-exception v8

    const-string/jumbo v8, ""

    goto :goto_1

    .line 13
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static getRawDigest([B)[B
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 37
    :try_start_0
    const-string/jumbo v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .local v0, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 38
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 40
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method
