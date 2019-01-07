.class public Lcom/alipay/mobile/security/bio/utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field public static final STREAM_BUFFER_SIZE:I = 0x2000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assetsToString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 348
    const/4 v2, 0x0

    .line 350
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 351
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v4, Ljava/util/Scanner;

    invoke-direct {v4, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string/jumbo v5, "\\A"

    invoke-virtual {v4, v5}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v3

    .line 352
    .local v3, "s":Ljava/util/Scanner;
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v2

    .line 356
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "s":Ljava/util/Scanner;
    :goto_0
    return-object v2

    .line 352
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "s":Ljava/util/Scanner;
    :cond_0
    const-string/jumbo v2, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "s":Ljava/util/Scanner;
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "ZCAuth"

    const-string/jumbo v5, "extractAssets: "

    invoke-static {v4, v5, v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static bitmapToByteArray(Landroid/graphics/Bitmap;I)[B
    .locals 3
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "quality"    # I

    .prologue
    .line 79
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 80
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v2, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 82
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 83
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static closeSafely(Ljava/io/Closeable;)V
    .locals 3
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 338
    if-eqz p0, :cond_0

    .line 339
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ContentValues"

    const-string/jumbo v2, "closeSafely(Closeable): Exception occur."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static copyDirectory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .local v1, "filePath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 270
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 271
    .local v3, "list":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v3

    if-ge v2, v9, :cond_3

    .line 272
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v3, v2

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 273
    .local v6, "newPath":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v3, v2

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, "newCopyPath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    .local v5, "newFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 276
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 278
    :cond_0
    invoke-static {v6, v4}, Lcom/alipay/mobile/security/bio/utils/FileUtil;->copyDirectory(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    .end local v2    # "i":I
    .end local v3    # "list":[Ljava/io/File;
    .end local v4    # "newCopyPath":Ljava/lang/String;
    .end local v5    # "newFile":Ljava/io/File;
    .end local v6    # "newPath":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 281
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 283
    .local v7, "read":Ljava/io/DataInputStream;
    new-instance v8, Ljava/io/DataOutputStream;

    new-instance v9, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v8, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 285
    .local v8, "write":Ljava/io/DataOutputStream;
    const/high16 v9, 0x80000

    new-array v0, v9, [B

    .line 286
    .local v0, "buf":[B
    :goto_1
    invoke-virtual {v7, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    .line 287
    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_1

    .line 289
    :cond_2
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    .line 290
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    .line 294
    .end local v0    # "buf":[B
    .end local v7    # "read":Ljava/io/DataInputStream;
    .end local v8    # "write":Ljava/io/DataOutputStream;
    :cond_3
    :goto_2
    return-void

    .line 292
    :cond_4
    const-string/jumbo v9, "please input correct path!"

    invoke-static {v9}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static extractAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 298
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .local v3, "filesDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 300
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 302
    .local v2, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 303
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v4, v5}, Lcom/alipay/mobile/security/bio/utils/FileUtil;->streamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_0
    :goto_0
    return-object v2

    .line 305
    :catch_0
    move-exception v1

    .line 306
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "ZCAuth"

    const-string/jumbo v5, "extractAssets: "

    invoke-static {v4, v5, v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getAssetsData(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetFilename"    # Ljava/lang/String;

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, "fileContext":[B
    const/4 v2, 0x0

    .line 94
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 96
    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/InputStreamUtils;->input2byte(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 100
    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/InputStreamUtils;->close(Ljava/io/InputStream;)V

    .line 102
    :goto_0
    return-object v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/InputStreamUtils;->close(Ljava/io/InputStream;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/InputStreamUtils;->close(Ljava/io/InputStream;)V

    throw v3
.end method

.method public static getAssetsData(Landroid/content/res/Resources;Ljava/lang/String;)[B
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "assetFilename"    # Ljava/lang/String;

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, "fileContext":[B
    const/4 v2, 0x0

    .line 109
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 111
    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/InputStreamUtils;->input2byte(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 115
    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/InputStreamUtils;->close(Ljava/io/InputStream;)V

    .line 117
    :goto_0
    return-object v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/InputStreamUtils;->close(Ljava/io/InputStream;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/InputStreamUtils;->close(Ljava/io/InputStream;)V

    throw v3
.end method

.method public static getRawData(Landroid/content/Context;I)[B
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resID"    # I

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, "fileContext":[B
    const/4 v2, 0x0

    .line 124
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 126
    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/InputStreamUtils;->input2byte(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 130
    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/InputStreamUtils;->close(Ljava/io/InputStream;)V

    .line 132
    :goto_0
    return-object v1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/InputStreamUtils;->close(Ljava/io/InputStream;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/InputStreamUtils;->close(Ljava/io/InputStream;)V

    throw v3
.end method

.method public static recursionDeleteFile(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 238
    if-nez p0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 246
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 248
    .local v0, "childFile":[Ljava/io/File;
    if-eqz v0, :cond_3

    array-length v2, v0

    if-nez v2, :cond_4

    .line 249
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 252
    :cond_4
    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v1, v0, v2

    .line 253
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/FileUtil;->recursionDeleteFile(Ljava/io/File;)V

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 255
    .end local v1    # "f":Ljava/io/File;
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static declared-synchronized save(Ljava/io/File;[B)Z
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B

    .prologue
    .line 144
    const-class v7, Lcom/alipay/mobile/security/bio/utils/FileUtil;

    monitor-enter v7

    const/4 v5, 0x0

    .line 145
    .local v5, "isSuccess":Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 147
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 148
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :goto_0
    const/4 v3, 0x0

    .line 158
    .local v3, "fout":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 160
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 161
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .local v4, "fout":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 162
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_3
    invoke-virtual {v1, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 163
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 164
    const/4 v5, 0x1

    .line 168
    :try_start_4
    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/OutputStreamUtils;->close(Ljava/io/OutputStream;)V

    .line 169
    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/OutputStreamUtils;->close(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 172
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    monitor-exit v7

    return v5

    .line 151
    :cond_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v2

    .line 153
    .local v2, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 144
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 165
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 166
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 168
    :try_start_8
    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/OutputStreamUtils;->close(Ljava/io/OutputStream;)V

    .line 169
    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/OutputStreamUtils;->close(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 168
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    :goto_3
    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/OutputStreamUtils;->close(Ljava/io/OutputStream;)V

    .line 169
    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/OutputStreamUtils;->close(Ljava/io/OutputStream;)V

    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 168
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v6

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 165
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static declared-synchronized saveContent(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "isAppend"    # Z

    .prologue
    .line 198
    const-class v4, Lcom/alipay/mobile/security/bio/utils/FileUtil;

    monitor-enter v4

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 199
    :try_start_0
    new-instance v3, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;

    invoke-direct {v3}, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 202
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 204
    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 206
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 215
    .local v1, "out":Ljava/io/BufferedWriter;
    :try_start_3
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 216
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .local v2, "out":Ljava/io/BufferedWriter;
    :try_start_4
    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 223
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v1, v2

    .line 228
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    :cond_2
    :goto_1
    monitor-exit v4

    return-void

    .line 207
    .end local v1    # "out":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    .line 226
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v1, v2

    .line 228
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_1

    .line 218
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 222
    if-eqz v1, :cond_2

    .line 223
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 225
    :catch_3
    move-exception v0

    .line 226
    .local v0, "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 221
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    .line 222
    :goto_3
    if-eqz v1, :cond_3

    .line 223
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 227
    :cond_3
    :goto_4
    :try_start_b
    throw v3

    .line 225
    :catch_4
    move-exception v0

    .line 226
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    .line 221
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 218
    .end local v1    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v1    # "out":Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method public static streamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 312
    const/4 v0, 0x0

    .line 314
    .local v0, "bRet":Z
    const/16 v4, 0x2000

    :try_start_0
    new-array v1, v4, [B

    .line 316
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "length":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 317
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 321
    .end local v1    # "buffer":[B
    .end local v3    # "length":I
    :catch_0
    move-exception v2

    .line 322
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "ContentValues"

    const-string/jumbo v5, "streamToStream(InputStream, OutputStream): Exception occur."

    invoke-static {v4, v5, v2}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    invoke-static {p1}, Lcom/alipay/mobile/security/bio/utils/FileUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 325
    invoke-static {p0}, Lcom/alipay/mobile/security/bio/utils/FileUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 327
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v0

    .line 319
    .restart local v1    # "buffer":[B
    .restart local v3    # "length":I
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    const/4 v0, 0x1

    .line 324
    invoke-static {p1}, Lcom/alipay/mobile/security/bio/utils/FileUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 325
    invoke-static {p0}, Lcom/alipay/mobile/security/bio/utils/FileUtil;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_1

    .line 324
    .end local v1    # "buffer":[B
    .end local v3    # "length":I
    :catchall_0
    move-exception v4

    invoke-static {p1}, Lcom/alipay/mobile/security/bio/utils/FileUtil;->closeSafely(Ljava/io/Closeable;)V

    .line 325
    invoke-static {p0}, Lcom/alipay/mobile/security/bio/utils/FileUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v4
.end method

.method public static declared-synchronized toByteArray(Ljava/lang/String;)[B
    .locals 12
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    const-class v9, Lcom/alipay/mobile/security/bio/utils/FileUtil;

    monitor-enter v9

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 51
    new-instance v8, Ljava/io/FileNotFoundException;

    invoke-direct {v8, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .end local v3    # "f":Ljava/io/File;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 54
    .restart local v3    # "f":Ljava/io/File;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v8, v10

    invoke-direct {v0, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 58
    .local v5, "in":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 60
    .end local v5    # "in":Ljava/io/BufferedInputStream;
    .local v6, "in":Ljava/io/BufferedInputStream;
    const/16 v8, 0x400

    :try_start_3
    new-array v1, v8, [B

    .line 62
    .local v1, "buffer":[B
    :goto_0
    const/4 v8, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x400

    invoke-virtual {v6, v1, v10, v11}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    .local v7, "len":I
    if-eq v8, v7, :cond_1

    .line 63
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    .line 67
    .end local v1    # "buffer":[B
    .end local v7    # "len":I
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 68
    .end local v6    # "in":Ljava/io/BufferedInputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v5    # "in":Ljava/io/BufferedInputStream;
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    .line 70
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 72
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v8

    :goto_2
    :try_start_5
    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/InputStreamUtils;->close(Ljava/io/InputStream;)V

    .line 73
    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/OutputStreamUtils;->close(Ljava/io/OutputStream;)V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 65
    .end local v5    # "in":Ljava/io/BufferedInputStream;
    .restart local v1    # "buffer":[B
    .restart local v6    # "in":Ljava/io/BufferedInputStream;
    .restart local v7    # "len":I
    :cond_1
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v4

    .line 72
    .local v4, "fileContext":[B
    :try_start_7
    invoke-static {v6}, Lcom/alipay/mobile/security/bio/utils/InputStreamUtils;->close(Ljava/io/InputStream;)V

    .line 73
    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/OutputStreamUtils;->close(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 75
    monitor-exit v9

    return-object v4

    .line 72
    .end local v1    # "buffer":[B
    .end local v4    # "fileContext":[B
    .end local v7    # "len":I
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "in":Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 67
    :catch_1
    move-exception v2

    goto :goto_1
.end method
