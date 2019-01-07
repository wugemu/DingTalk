.class public Lcom/alipay/mobile/nebulaappproxy/patch/PatchUtils;
.super Ljava/lang/Object;
.source "PatchUtils.java"


# static fields
.field public static final ExtDataTunnel:Ljava/lang/String; = "ExtDataTunnel"

.field public static final PATCH:Ljava/lang/String; = "patch"

.field private static final TAG:Ljava/lang/String; = "PatchUtils"

.field private static final hexDigits:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "f"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/patch/PatchUtils;->hexDigits:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsCanUseSdCard()Z
    .locals 2

    .prologue
    .line 236
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 241
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static byteArrayToHexString([B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # [B

    .prologue
    .line 142
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 143
    .local v1, "resultSb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 144
    aget-byte v2, p0, v0

    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/patch/PatchUtils;->byteToHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static byteToHexString(B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # B

    .prologue
    .line 150
    move v2, p0

    .line 151
    .local v2, "n":I
    if-gez p0, :cond_0

    .line 152
    add-int/lit16 v2, p0, 0x100

    .line 153
    :cond_0
    div-int/lit8 v0, v2, 0x10

    .line 154
    .local v0, "d1":I
    rem-int/lit8 v1, v2, 0x10

    .line 155
    .local v1, "d2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/patch/PatchUtils;->hexDigits:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/patch/PatchUtils;->hexDigits:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static checkFileInMd5(Ljava/lang/String;Ljava/io/File;)Z
    .locals 8
    .param p0, "md5"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 88
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v3

    .line 92
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 93
    .local v0, "start":J
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/patch/PatchUtils;->genFileMd5sum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "targetFileMd5":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "end,time:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 97
    const/4 v3, 0x1

    goto :goto_0

    .line 99
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "check Md5 = false file:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "currentFile Md5:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",targetMd5:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static checkPathAndStorage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/patch/PatchUtils;->IsCanUseSdCard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static creatFileDir(Ljava/lang/String;)Z
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 180
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 216
    :goto_0
    return v4

    .line 184
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x1

    .line 187
    .local v2, "isDelSuccess":Z
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 188
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    .line 190
    :cond_1
    if-nez v2, :cond_2

    .line 191
    const-string/jumbo v5, "PatchUtils"

    const-string/jumbo v6, "file del fail! when creatFileDir"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "isDelSuccess":Z
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "PatchUtils"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 194
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "isDelSuccess":Z
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 195
    const-string/jumbo v5, "PatchUtils"

    const-string/jumbo v6, "param error,path is isDirectory"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 199
    .local v3, "parentFile":Ljava/io/File;
    if-nez v3, :cond_4

    .line 200
    const-string/jumbo v5, "PatchUtils"

    const-string/jumbo v6, "can not find parent dir!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    move v4, v5

    .line 204
    goto :goto_0

    .line 206
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-eqz v6, :cond_6

    move v4, v5

    .line 207
    goto :goto_0

    .line 209
    :cond_6
    const-string/jumbo v5, "PatchUtils"

    const-string/jumbo v6, "can not mkdirs!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static deleteFileByPath(Ljava/lang/String;)V
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteFileByPath = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "PatchUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static genFileMd5sum(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 111
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-object v6

    .line 114
    :cond_1
    const/4 v2, 0x0

    .line 115
    .local v2, "fis":Ljava/io/InputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 120
    .local v0, "buffer":[B
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .end local v2    # "fis":Ljava/io/InputStream;
    .local v3, "fis":Ljava/io/InputStream;
    :try_start_1
    const-string/jumbo v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 122
    .local v4, "md5":Ljava/security/MessageDigest;
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "numRead":I
    if-lez v5, :cond_2

    .line 123
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 126
    .end local v4    # "md5":Ljava/security/MessageDigest;
    .end local v5    # "numRead":I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 127
    .end local v3    # "fis":Ljava/io/InputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "fis":Ljava/io/InputStream;
    :goto_2
    :try_start_2
    const-string/jumbo v7, "PatchUtils"

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    if-eqz v2, :cond_0

    .line 132
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 134
    :catch_1
    move-exception v1

    .line 135
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v7, "PatchUtils"

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 125
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/InputStream;
    .restart local v4    # "md5":Ljava/security/MessageDigest;
    .restart local v5    # "numRead":I
    :cond_2
    :try_start_4
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebulaappproxy/patch/PatchUtils;->byteArrayToHexString([B)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v6

    .line 130
    if-eqz v3, :cond_0

    .line 132
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 134
    :catch_2
    move-exception v1

    .line 135
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "PatchUtils"

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 130
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/InputStream;
    .end local v4    # "md5":Ljava/security/MessageDigest;
    .end local v5    # "numRead":I
    .restart local v2    # "fis":Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v2, :cond_3

    .line 132
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 136
    :cond_3
    :goto_4
    throw v6

    .line 134
    :catch_3
    move-exception v1

    .line 135
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "PatchUtils"

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 130
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/InputStream;
    .restart local v3    # "fis":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/InputStream;
    .restart local v2    # "fis":Ljava/io/InputStream;
    goto :goto_3

    .line 126
    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method public static getFileSizes(Ljava/io/File;)J
    .locals 9
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 262
    const-wide/16 v4, 0x0

    .line 263
    .local v4, "s":J
    const/4 v1, 0x0

    .line 265
    .local v1, "fis":Ljava/io/FileInputStream;
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 266
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    int-to-long v4, v3

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "file length = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 276
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    move-wide v6, v4

    .line 282
    .end local v4    # "s":J
    .local v6, "s":J
    :goto_1
    return-wide v6

    .line 271
    .end local v6    # "s":J
    .restart local v4    # "s":J
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v3, "PatchUtils"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 274
    if-eqz v1, :cond_0

    .line 276
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_3
    move-wide v6, v4

    .line 282
    .end local v4    # "s":J
    .restart local v6    # "s":J
    goto :goto_1

    .line 274
    .end local v6    # "s":J
    .restart local v4    # "s":J
    :catchall_0
    move-exception v3

    :goto_4
    if-eqz v1, :cond_1

    .line 276
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 279
    :cond_1
    :goto_5
    throw v3

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    goto :goto_0

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v8

    goto :goto_5

    .line 274
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 271
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static getPatchFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "patchUrl"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/patch/PatchUtils;->getStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "dir":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move-object v2, v3

    .line 79
    :cond_1
    :goto_0
    return-object v2

    .line 66
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".patch"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v2, v3

    .line 71
    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v2, v3

    .line 76
    goto :goto_0
.end method

.method public static getSDPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 286
    const/4 v1, 0x0

    .line 287
    .local v1, "sdDir":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 289
    .local v0, "sdCardExist":Z
    if-eqz v0, :cond_0

    .line 290
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 292
    :cond_0
    return-object v1
.end method

.method public static getStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 29
    if-nez p0, :cond_1

    move-object v0, v4

    .line 54
    :cond_0
    :goto_0
    return-object v0

    .line 36
    :cond_1
    const-string/jumbo v5, "patch"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 37
    .local v2, "externalFilesDir":Ljava/io/File;
    if-nez v2, :cond_3

    .line 38
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/patch/PatchUtils;->getSDPath()Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "sdcard":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v4

    .line 40
    goto :goto_0

    .line 42
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ExtDataTunnel"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "files"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "patch"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "extPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2    # "externalFilesDir":Ljava/io/File;
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .end local v1    # "extPath":Ljava/lang/String;
    .end local v3    # "sdcard":Ljava/lang/String;
    .restart local v2    # "externalFilesDir":Ljava/io/File;
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "dir":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getAbsolutePath = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "path not exist "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v4

    .line 52
    goto :goto_0
.end method

.method public static isEnoughSpaceDoPatch(Ljava/io/File;Ljava/io/File;)Z
    .locals 8
    .param p0, "patchFile"    # Ljava/io/File;
    .param p1, "oldFile"    # Ljava/io/File;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 296
    invoke-static {p0}, Lcom/alipay/mobile/nebulaappproxy/patch/PatchUtils;->getFileSizes(Ljava/io/File;)J

    move-result-wide v2

    .line 297
    .local v2, "patchLength":J
    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    .line 298
    const-string/jumbo v5, "PatchUtils"

    const-string/jumbo v6, "patchLength is 0"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :goto_0
    return v4

    .line 301
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/patch/PatchUtils;->getFileSizes(Ljava/io/File;)J

    move-result-wide v0

    .line 302
    .local v0, "oldLength":J
    cmp-long v5, v0, v6

    if-nez v5, :cond_1

    .line 303
    const-string/jumbo v5, "PatchUtils"

    const-string/jumbo v6, "oldFileLength is 0"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    :cond_1
    add-long v6, v2, v0

    :try_start_0
    invoke-static {v6, v7}, Lcom/alipay/mobile/nebulaappproxy/patch/PatchUtils;->isSDcardAvailableSpace(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 311
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v1

    .line 169
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSDcardAvailableSpace(J)Z
    .locals 12
    .param p0, "space"    # J

    .prologue
    const/4 v5, 0x0

    .line 245
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/patch/PatchUtils;->IsCanUseSdCard()Z

    move-result v6

    if-nez v6, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v5

    .line 248
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "sdcard":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .local v2, "file":Ljava/io/File;
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 251
    .local v4, "statFs":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    .line 252
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v8, v8

    const-wide/16 v10, 0x4

    sub-long/2addr v8, v10

    mul-long v0, v6, v8

    .line 253
    .local v0, "availableSpare":J
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "availableSpare = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 254
    cmp-long v6, p0, v0

    if-gez v6, :cond_0

    .line 255
    const/4 v5, 0x1

    goto :goto_0
.end method
