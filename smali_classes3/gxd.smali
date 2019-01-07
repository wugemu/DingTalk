.class public final Lgxd;
.super Lgxe;
.source "ImageFetcher.java"


# instance fields
.field private h:Lgxb;

.field private i:Ljava/io/File;

.field private j:Z

.field private final k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageSize"    # I

    .prologue
    const/4 v1, 0x1

    .line 72
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lgxe;-><init>(Landroid/content/Context;I)V

    .line 49
    iput-boolean v1, p0, Lgxd;->j:Z

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgxd;->k:Ljava/lang/Object;

    .line 1170
    const-string/jumbo v0, "connectivity"

    .line 1171
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1172
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1173
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1174
    :cond_0
    const-string/jumbo v0, "R.string.no_network_connection_toast"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1175
    const-string/jumbo v0, "ImageFetcher"

    const-string/jumbo v1, "checkConnection - no connection found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_1
    const-string/jumbo v0, "http"

    invoke-static {p1, v0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lgxd;->i:Ljava/io/File;

    .line 74
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 191
    invoke-static {p1}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 192
    .local v6, "key":Ljava/lang/String;
    const/4 v4, 0x0

    .line 193
    .local v4, "fileDescriptor":Ljava/io/FileDescriptor;
    const/4 v5, 0x0

    .line 195
    .local v5, "fileInputStream":Ljava/io/FileInputStream;
    iget-object v9, p0, Lgxd;->k:Ljava/lang/Object;

    monitor-enter v9

    .line 197
    :goto_0
    :try_start_0
    iget-boolean v8, p0, Lgxd;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v8, :cond_0

    .line 199
    :try_start_1
    iget-object v8, p0, Lgxd;->k:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 200
    :catch_0
    move-exception v8

    goto :goto_0

    .line 203
    :cond_0
    :try_start_2
    iget-object v8, p0, Lgxd;->h:Lgxb;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_4

    .line 205
    :try_start_3
    iget-object v8, p0, Lgxd;->h:Lgxb;

    invoke-virtual {v8, v6}, Lgxb;->a(Ljava/lang/String;)Lgxb$c;

    move-result-object v7

    .line 206
    .local v7, "snapshot":Lgxb$c;
    if-nez v7, :cond_2

    .line 210
    iget-object v8, p0, Lgxd;->h:Lgxb;

    invoke-virtual {v8, v6}, Lgxb;->b(Ljava/lang/String;)Lgxb$a;

    move-result-object v3

    .line 211
    .local v3, "editor":Lgxb$a;
    if-eqz v3, :cond_1

    .line 212
    const/4 v8, 0x0

    .line 213
    invoke-virtual {v3, v8}, Lgxb$a;->a(I)Ljava/io/OutputStream;

    move-result-object v8

    .line 212
    invoke-static {p1, v8}, Lgxd;->a(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 214
    invoke-virtual {v3}, Lgxb$a;->a()V

    .line 219
    :cond_1
    :goto_1
    iget-object v8, p0, Lgxd;->h:Lgxb;

    invoke-virtual {v8, v6}, Lgxb;->a(Ljava/lang/String;)Lgxb$c;

    move-result-object v7

    .line 221
    .end local v3    # "editor":Lgxb$a;
    :cond_2
    if-eqz v7, :cond_3

    .line 1754
    iget-object v8, v7, Lgxb$c;->a:[Ljava/io/InputStream;

    const/4 v10, 0x0

    aget-object v8, v8, v10

    .line 223
    move-object v0, v8

    check-cast v0, Ljava/io/FileInputStream;

    move-object v5, v0

    .line 224
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 231
    :cond_3
    if-nez v4, :cond_4

    if-eqz v5, :cond_4

    .line 233
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 238
    .end local v7    # "snapshot":Lgxb$c;
    :cond_4
    :goto_2
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_5

    .line 242
    iget v8, p0, Lgxd;->a:I

    iget v9, p0, Lgxd;->b:I

    .line 2196
    iget-object v10, p0, Lgxf;->c:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    .line 242
    invoke-static {v4, v8, v9, v10}, Lgxd;->a(Ljava/io/FileDescriptor;IILcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 245
    :cond_5
    if-eqz v5, :cond_6

    .line 247
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 250
    :cond_6
    :goto_3
    return-object v1

    .line 216
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "editor":Lgxb$a;
    .restart local v7    # "snapshot":Lgxb$c;
    :cond_7
    :try_start_7
    invoke-virtual {v3}, Lgxb$a;->b()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 226
    .end local v3    # "editor":Lgxb$a;
    .end local v7    # "snapshot":Lgxb$c;
    :catch_1
    move-exception v2

    .line 227
    .local v2, "e":Ljava/io/IOException;
    :try_start_8
    const-string/jumbo v8, "ImageFetcher"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "processBitmap - "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 231
    if-eqz v5, :cond_4

    .line 233
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .line 234
    :catch_2
    move-exception v8

    goto :goto_2

    .line 228
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 229
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_a
    const-string/jumbo v8, "ImageFetcher"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "processBitmap - "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 231
    if-eqz v5, :cond_4

    .line 233
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_2

    .line 234
    :catch_4
    move-exception v8

    goto :goto_2

    .line 231
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v8

    if-eqz v5, :cond_8

    .line 233
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 234
    :cond_8
    :goto_4
    :try_start_d
    throw v8

    .line 238
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v8

    .line 234
    .restart local v7    # "snapshot":Lgxb$c;
    :catch_5
    move-exception v8

    goto :goto_2

    .end local v7    # "snapshot":Lgxb$c;
    :catch_6
    move-exception v10

    goto :goto_4

    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_7
    move-exception v8

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 12
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 2305
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x8

    if-ge v9, v10, :cond_0

    .line 2306
    const-string/jumbo v9, "http.keepAlive"

    const-string/jumbo v10, "false"

    invoke-static {v9, v10}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    :cond_0
    const/4 v8, 0x0

    .line 267
    .local v8, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 268
    .local v5, "out":Ljava/io/BufferedOutputStream;
    const/4 v3, 0x0

    .line 271
    .local v3, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 272
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 273
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    const/16 v10, 0x2000

    invoke-direct {v4, v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .local v4, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    const/16 v9, 0x2000

    invoke-direct {v6, p1, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 277
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .local v6, "out":Ljava/io/BufferedOutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    .local v1, "b":I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_4

    .line 278
    invoke-virtual {v6, v1}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 281
    .end local v1    # "b":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .line 282
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .end local v7    # "url":Ljava/net/URL;
    .local v2, "e":Ljava/io/IOException;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :goto_1
    :try_start_3
    const-string/jumbo v9, "ImageFetcher"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Error in downloadBitmap - "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 284
    if-eqz v8, :cond_1

    .line 285
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 288
    :cond_1
    if-eqz v5, :cond_2

    .line 289
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 291
    :cond_2
    if-eqz v3, :cond_3

    .line 292
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 296
    :cond_3
    :goto_2
    const/4 v9, 0x0

    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    return v9

    .line 284
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "b":I
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v7    # "url":Ljava/net/URL;
    :cond_4
    if-eqz v8, :cond_5

    .line 285
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 289
    :cond_5
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 292
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 280
    :goto_4
    const/4 v9, 0x1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_3

    .line 284
    .end local v1    # "b":I
    .end local v7    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v8, :cond_6

    .line 285
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 288
    :cond_6
    if-eqz v5, :cond_7

    .line 289
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 291
    :cond_7
    if-eqz v3, :cond_8

    .line 292
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 294
    :cond_8
    :goto_6
    throw v9

    :catch_1
    move-exception v10

    goto :goto_6

    .line 284
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v7    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    goto :goto_5

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v9

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_5

    .line 295
    .end local v7    # "url":Ljava/net/URL;
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v9

    goto :goto_2

    .line 281
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    goto :goto_1

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v7    # "url":Ljava/net/URL;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    goto :goto_1

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "b":I
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    :catch_5
    move-exception v9

    goto :goto_4
.end method

.method private e()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/32 v4, 0xa00000

    .line 88
    iget-object v0, p0, Lgxd;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lgxd;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 91
    :cond_0
    iget-object v1, p0, Lgxd;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v0, p0, Lgxd;->i:Ljava/io/File;

    invoke-static {v0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a(Ljava/io/File;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 94
    :try_start_1
    iget-object v0, p0, Lgxd;->i:Ljava/io/File;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/32 v4, 0xa00000

    invoke-static {v0, v2, v3, v4, v5}, Lgxb;->a(Ljava/io/File;IIJ)Lgxb;

    move-result-object v0

    iput-object v0, p0, Lgxd;->h:Lgxb;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :cond_1
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lgxd;->j:Z

    .line 103
    iget-object v0, p0, Lgxd;->k:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 104
    monitor-exit v1

    return-void

    .line 99
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lgxd;->h:Lgxb;

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 255
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgxd;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Lgxe;->a()V

    .line 84
    invoke-direct {p0}, Lgxd;->e()V

    .line 85
    return-void
.end method

.method protected final b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 109
    invoke-super {p0}, Lgxe;->b()V

    .line 110
    iget-object v2, p0, Lgxd;->k:Ljava/lang/Object;

    monitor-enter v2

    .line 111
    :try_start_0
    iget-object v1, p0, Lgxd;->h:Lgxb;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgxd;->h:Lgxb;

    invoke-virtual {v1}, Lgxb;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 113
    :try_start_1
    iget-object v1, p0, Lgxd;->h:Lgxb;

    invoke-virtual {v1}, Lgxb;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lgxd;->h:Lgxb;

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgxd;->j:Z

    .line 122
    invoke-direct {p0}, Lgxd;->e()V

    .line 124
    :cond_0
    monitor-exit v2

    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "ImageFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "clearCacheInternal - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected final c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 129
    invoke-super {p0}, Lgxe;->c()V

    .line 130
    iget-object v2, p0, Lgxd;->k:Ljava/lang/Object;

    monitor-enter v2

    .line 131
    :try_start_0
    iget-object v1, p0, Lgxd;->h:Lgxb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 133
    :try_start_1
    iget-object v1, p0, Lgxd;->h:Lgxb;

    invoke-virtual {v1}, Lgxb;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "ImageFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "flush - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected final d()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 146
    invoke-super {p0}, Lgxe;->d()V

    .line 147
    iget-object v2, p0, Lgxd;->k:Ljava/lang/Object;

    monitor-enter v2

    .line 148
    :try_start_0
    iget-object v1, p0, Lgxd;->h:Lgxb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 150
    :try_start_1
    iget-object v1, p0, Lgxd;->h:Lgxb;

    invoke-virtual {v1}, Lgxb;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Lgxd;->h:Lgxb;

    invoke-virtual {v1}, Lgxb;->close()V

    .line 152
    const/4 v1, 0x0

    iput-object v1, p0, Lgxd;->h:Lgxb;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "ImageFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "closeCacheInternal - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
