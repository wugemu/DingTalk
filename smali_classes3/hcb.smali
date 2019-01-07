.class public final Lhcb;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "mBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "bitName"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1286
    const/4 v0, 0x0

    .line 1287
    invoke-static {}, Lhcs;->a()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1289
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x8

    if-lt v6, v7, :cond_5

    .line 1290
    invoke-static {v5}, Lhcs;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 1295
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1296
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1299
    :cond_1
    if-nez v0, :cond_2

    .line 1300
    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 21
    .local v0, "cacheDir":Ljava/io/File;
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .local v2, "f":Ljava/io/File;
    const/4 v3, 0x0

    .line 24
    .local v3, "fOut":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "fOut":Ljava/io/FileOutputStream;
    .local v4, "fOut":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 28
    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .restart local v3    # "fOut":Ljava/io/FileOutputStream;
    :goto_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x50

    invoke-virtual {p0, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 30
    if-eqz v3, :cond_3

    .line 31
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 38
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 42
    :cond_4
    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1292
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fOut":Ljava/io/FileOutputStream;
    :cond_5
    invoke-static {v5}, Lhcs;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 25
    .restart local v0    # "cacheDir":Ljava/io/File;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "fOut":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 26
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 33
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 34
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 39
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 40
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method
