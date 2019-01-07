.class public Lcom/taobao/weex/utils/WXFileUtils;
.super Ljava/lang/Object;
.source "WXFileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64Md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "template"    # Ljava/lang/String;

    .prologue
    .line 167
    if-nez p0, :cond_0

    .line 168
    const-string/jumbo v0, ""

    .line 172
    :goto_0
    return-object v0

    .line 170
    :cond_0
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXFileUtils;->base64Md5([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static base64Md5([B)Ljava/lang/String;
    .locals 3
    .param p0, "bts"    # [B

    .prologue
    .line 178
    :try_start_0
    const-string/jumbo v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 179
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 180
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lhv;->b([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 182
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static extractSo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "apkFile"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-direct {v6, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 188
    .local v6, "zip":Ljava/util/zip/ZipFile;
    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 189
    .local v8, "zipInputStream":Ljava/io/InputStream;
    new-instance v5, Ljava/util/zip/ZipInputStream;

    invoke-direct {v5, v8}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 191
    .local v5, "zin":Ljava/util/zip/ZipInputStream;
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v7

    .local v7, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v7, :cond_2

    .line 192
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_0

    .line 195
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "lib/armeabi/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "weex"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 196
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "fileNames":[Ljava/lang/String;
    array-length v9, v2

    add-int/lit8 v9, v9, -0x1

    aget-object v1, v2, v9

    .line 198
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 199
    .local v3, "inputStream":Ljava/io/InputStream;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 200
    .local v0, "data":[B
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 201
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 202
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_1

    .line 204
    :cond_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 208
    .end local v0    # "data":[B
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "fileNames":[Ljava/lang/String;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    :cond_2
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 209
    return-void
.end method

.method public static loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    :cond_0
    const/4 v2, 0x0

    .line 84
    :goto_0
    return-object v2

    .line 79
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 80
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/taobao/weex/utils/WXFileUtils;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 81
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 84
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static loadFileOrAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 52
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 56
    .local v2, "fis":Ljava/io/FileInputStream;
    invoke-static {v2}, Lcom/taobao/weex/utils/WXFileUtils;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 64
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-object v3

    .line 57
    .restart local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 64
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    const-string/jumbo v3, ""

    goto :goto_0

    .line 61
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "template"    # Ljava/lang/String;

    .prologue
    .line 145
    if-nez p0, :cond_0

    .line 146
    const-string/jumbo v0, ""

    .line 150
    :goto_0
    return-object v0

    .line 148
    :cond_0
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXFileUtils;->md5([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static md5([B)Ljava/lang/String;
    .locals 4
    .param p0, "bts"    # [B

    .prologue
    .line 156
    :try_start_0
    const-string/jumbo v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 157
    .local v1, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 158
    new-instance v0, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 159
    .local v0, "bigInt":Ljava/math/BigInteger;
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 161
    .end local v0    # "bigInt":Ljava/math/BigInteger;
    .end local v1    # "digest":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method private static readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 8
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v6

    add-int/lit8 v6, v6, 0xa

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 91
    .local v2, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    const/16 v6, 0x1000

    :try_start_1
    new-array v3, v6, [C

    .line 94
    .local v3, "data":[C
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    .local v5, "len":I
    if-lez v5, :cond_2

    .line 95
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 99
    .end local v3    # "data":[C
    .end local v5    # "len":I
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 100
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 101
    const-string/jumbo v6, ""

    invoke-static {v6, v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 110
    :cond_0
    :goto_2
    if-eqz p0, :cond_1

    .line 111
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 117
    :cond_1
    :goto_3
    const-string/jumbo v6, ""

    .end local v4    # "e":Ljava/io/IOException;
    :goto_4
    return-object v6

    .line 98
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    .restart local v3    # "data":[C
    .restart local v5    # "len":I
    :cond_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v6

    .line 105
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 110
    :goto_5
    if-eqz p0, :cond_3

    .line 111
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_3
    :goto_6
    move-object v0, v1

    .line 114
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 106
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    .line 107
    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "WXFileUtils loadAsset: "

    invoke-static {v7, v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 112
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 113
    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "WXFileUtils loadAsset: "

    invoke-static {v7, v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 106
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "data":[C
    .end local v5    # "len":I
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v4

    .line 107
    const-string/jumbo v6, "WXFileUtils loadAsset: "

    invoke-static {v6, v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 112
    :catch_4
    move-exception v4

    .line 113
    const-string/jumbo v6, "WXFileUtils loadAsset: "

    invoke-static {v6, v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 103
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 104
    :goto_7
    if-eqz v0, :cond_4

    .line 105
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 110
    :cond_4
    :goto_8
    if-eqz p0, :cond_5

    .line 111
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 114
    :cond_5
    :goto_9
    throw v6

    .line 106
    :catch_5
    move-exception v4

    .line 107
    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "WXFileUtils loadAsset: "

    invoke-static {v7, v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 112
    .end local v4    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 113
    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "WXFileUtils loadAsset: "

    invoke-static {v7, v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 103
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 99
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :catch_7
    move-exception v4

    goto :goto_1
.end method

.method public static saveFile(Ljava/lang/String;[BLandroid/content/Context;)Z
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "content"    # [B
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v3

    .line 124
    :cond_1
    const/4 v1, 0x0

    .line 126
    .local v1, "outStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    .local v2, "outStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 137
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 129
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "WXFileUtils saveFile: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    if-eqz v1, :cond_0

    .line 134
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 135
    :catch_2
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_2

    .line 134
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 137
    :cond_2
    :goto_4
    throw v3

    .line 135
    :catch_3
    move-exception v0

    .line 136
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 129
    .end local v1    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
