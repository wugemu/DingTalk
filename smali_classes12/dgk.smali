.class public final Ldgk;
.super Ljava/lang/Object;
.source "ScreenShotUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/ScrollView;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "scrollView"    # Landroid/widget/ScrollView;

    .prologue
    .line 34
    const/4 v2, 0x0

    .line 35
    .local v2, "h":I
    const/4 v0, 0x0

    .line 36
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 37
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    .line 36
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 40
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 43
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    :goto_1
    return-object v0

    .line 46
    :catch_0
    move-exception v4

    const-string/jumbo v4, "im"

    const-string/jumbo v5, "ScreenShotUtil"

    const-string/jumbo v6, "shotScrollView OutOfMemoryError"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "fName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 84
    const-string/jumbo v4, "screenshot"

    invoke-static {v4}, Lebj;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 86
    .local v3, "outfile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1115
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 1116
    if-eqz v6, :cond_1

    array-length v4, v6

    if-lez v4, :cond_1

    .line 1117
    array-length v7, v6

    move v4, v5

    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v8, v6, v4

    .line 1118
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1117
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "/"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "fileName":Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 99
    .local v2, "fos":Ljava/io/FileOutputStream;
    if-eqz v2, :cond_2

    .line 100
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {p0, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 101
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 102
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 109
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_2
    return-object v1

    .line 104
    :catch_1
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 106
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
