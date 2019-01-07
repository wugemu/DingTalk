.class public final Ljtp;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static c:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljtq;

.field public d:J

.field e:Landroid/os/Handler;

.field public f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljtp$2;

    invoke-direct {v0, p0}, Ljtp$2;-><init>(Ljtp;)V

    iput-object v0, p0, Ljtp;->f:Ljava/lang/Runnable;

    .line 44
    new-instance v0, Ljtp$1;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljtp$1;-><init>(Ljtp;Landroid/os/Looper;)V

    iput-object v0, p0, Ljtp;->e:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 123
    const-string/jumbo v0, "AsynLoadImg"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getbitmap:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljtg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 130
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 131
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 132
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 133
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 136
    const-string/jumbo v2, "AsynLoadImg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "image download finished."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljtg;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    :goto_0
    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 139
    const-string/jumbo v0, "AsynLoadImg"

    const-string/jumbo v2, "getbitmap bmp fail---"

    invoke-static {v0, v2}, Ljtg;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 140
    goto :goto_0

    .line 141
    :catch_1
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 143
    const-string/jumbo v0, "AsynLoadImg"

    const-string/jumbo v2, "getbitmap bmp fail---"

    invoke-static {v0, v2}, Ljtg;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 144
    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 85
    sget-object v0, Ljtp;->c:Ljava/lang/String;

    .line 86
    const/4 v1, 0x0

    .line 88
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 90
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 92
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    const-string/jumbo v2, "AsynLoadImg"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "saveFile:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljtg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x50

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 97
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 98
    :catch_1
    move-exception v0

    .line 99
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 100
    const-string/jumbo v0, "AsynLoadImg"

    const-string/jumbo v2, "saveFile bmp fail---"

    invoke-static {v0, v2}, Ljtg;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    if-eqz v1, :cond_1

    .line 105
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 109
    :cond_1
    :goto_3
    const/4 v0, 0x0

    goto :goto_1

    .line 106
    :catch_2
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 103
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_2

    .line 105
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 109
    :cond_2
    :goto_5
    throw v0

    .line 106
    :catch_3
    move-exception v1

    .line 107
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 103
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 98
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method
