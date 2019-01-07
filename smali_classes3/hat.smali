.class public final Lhat;
.super Ljava/lang/Object;
.source "DDGifDecoder.java"


# static fields
.field private static a:Lhaw;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alibaba/doraemon/image/ImageInputStream;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 8
    .param p0, "requestInputStream"    # Lcom/alibaba/doraemon/image/ImageInputStream;

    .prologue
    .line 41
    if-nez p0, :cond_1

    .line 42
    const/4 v3, 0x0

    .line 65
    :cond_0
    :goto_0
    return-object v3

    .line 47
    :cond_1
    const/4 v3, 0x0

    .line 48
    .local v3, "ret":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x0

    .line 50
    .local v1, "os":Ljava/io/FileOutputStream;
    :try_start_0
    const-string/jumbo v6, "rimet_gif"

    const-string/jumbo v7, "gif"

    invoke-static {v6, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 51
    .local v5, "tmpFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p0, v2}, Lcom/alibaba/doraemon/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 53
    new-instance v4, Llgd;

    new-instance v6, Llgf;

    invoke-direct {v6, v5}, Llgf;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Llgd;-><init>(Llgf;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    .end local v3    # "ret":Landroid/graphics/drawable/BitmapDrawable;
    .local v4, "ret":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 62
    .end local v4    # "ret":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3    # "ret":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    .line 60
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .end local v3    # "ret":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v4    # "ret":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 62
    .end local v4    # "ret":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3    # "ret":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    .line 54
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "tmpFile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    if-eqz v1, :cond_0

    .line 59
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 60
    :catch_2
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v1, :cond_2

    .line 59
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 62
    :cond_2
    :goto_3
    throw v6

    .line 60
    :catch_3
    move-exception v0

    .line 61
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 57
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "tmpFile":Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 54
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static a(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "requestInputStream"    # Lcom/alibaba/doraemon/image/ImageInputStream;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {}, Llge;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    invoke-static {}, Lgzo;->a()Lgzo;

    move-result-object v0

    invoke-virtual {v0}, Lgzo;->c()Lgzl;

    move-result-object v0

    invoke-interface {v0}, Lgzl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p0, p1}, Lhat;->b(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    .line 30
    :cond_0
    invoke-static {p0}, Lhat;->a(Lcom/alibaba/doraemon/image/ImageInputStream;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    .line 33
    :cond_1
    sget-object v0, Lhat;->a:Lhaw;

    if-nez v0, :cond_2

    .line 34
    new-instance v0, Lhaw;

    invoke-direct {v0}, Lhaw;-><init>()V

    sput-object v0, Lhat;->a:Lhaw;

    .line 36
    :cond_2
    sget-object v0, Lhat;->a:Lhaw;

    invoke-virtual {v0, p0, p1}, Lhaw;->a(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 10
    .param p0, "requestInputStream"    # Lcom/alibaba/doraemon/image/ImageInputStream;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 69
    if-nez p0, :cond_1

    .line 70
    const/4 v5, 0x0

    .line 108
    :cond_0
    :goto_0
    return-object v5

    .line 74
    :cond_1
    const/4 v0, 0x0

    .line 75
    .local v0, "canUseV2":Z
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/ImageInputStream;->markSupported()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/ImageInputStream;->length()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/alibaba/doraemon/image/ImageInputStream;->mark(I)V

    .line 77
    const/4 v0, 0x1

    .line 79
    :cond_2
    const/4 v5, 0x0

    .line 80
    .local v5, "ret":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v3, 0x0

    .line 82
    .local v3, "os":Ljava/io/FileOutputStream;
    :try_start_0
    const-string/jumbo v8, "rimet_gif"

    const-string/jumbo v9, "gif"

    invoke-static {v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 83
    .local v7, "tmpFile":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .local v4, "os":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p0, v4}, Lcom/alibaba/doraemon/utils/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 85
    new-instance v6, Llgd;

    new-instance v8, Llgf;

    invoke-direct {v8, v7}, Llgf;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v8}, Llgd;-><init>(Llgf;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    .end local v5    # "ret":Landroid/graphics/drawable/BitmapDrawable;
    .local v6, "ret":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .end local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 105
    .end local v6    # "ret":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v5    # "ret":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    .line 103
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .end local v5    # "ret":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v6    # "ret":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 105
    .end local v6    # "ret":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v5    # "ret":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    .line 86
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "tmpFile":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    if-eqz v0, :cond_4

    .line 90
    :try_start_4
    invoke-virtual {p0}, Lcom/alibaba/doraemon/image/ImageInputStream;->reset()V

    .line 91
    sget-object v8, Lhat;->a:Lhaw;

    if-nez v8, :cond_3

    .line 92
    new-instance v8, Lhaw;

    invoke-direct {v8}, Lhaw;-><init>()V

    sput-object v8, Lhat;->a:Lhaw;

    .line 94
    :cond_3
    sget-object v8, Lhat;->a:Lhaw;

    invoke-virtual {v8, p0, p1}, Lhaw;->a(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    .line 100
    :cond_4
    :goto_2
    if-eqz v3, :cond_0

    .line 102
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 103
    :catch_2
    move-exception v1

    .line 104
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 95
    .local v1, "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v2

    .line 96
    .local v2, "ex":Ljava/lang/Throwable;
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 100
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v3, :cond_5

    .line 102
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 105
    :cond_5
    :goto_4
    throw v8

    .line 103
    :catch_4
    move-exception v1

    .line 104
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 100
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v7    # "tmpFile":Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 86
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
