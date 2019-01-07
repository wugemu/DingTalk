.class final Lcom/laiwang/update/base/DefaultDownloader$a;
.super Landroid/os/AsyncTask;
.source "DefaultDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/update/base/DefaultDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/laiwang/update/base/DefaultDownloader;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Ljat;

.field private g:Lorg/apache/http/client/methods/HttpGet;

.field private h:Lorg/apache/http/HttpResponse;

.field private i:Z

.field private j:J


# direct methods
.method public constructor <init>(Lcom/laiwang/update/base/DefaultDownloader;Ljava/lang/String;J)V
    .locals 1
    .param p2, "apkStorePath"    # Ljava/lang/String;
    .param p3, "fileSize"    # J

    .prologue
    const/4 v0, 0x0

    .line 93
    iput-object p1, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->b:Lcom/laiwang/update/base/DefaultDownloader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 82
    iput-boolean v0, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->a:Z

    .line 88
    iput-boolean v0, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->i:Z

    .line 94
    iput-object p2, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->c:Ljava/lang/String;

    .line 95
    iput-wide p3, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->e:J

    .line 96
    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)I
    .locals 12
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/RandomAccessFile;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 222
    const/4 v7, -0x6

    .line 300
    :goto_0
    return v7

    .line 225
    :cond_0
    const/16 v7, 0x2000

    new-array v0, v7, [B

    .line 226
    .local v0, "buffer":[B
    new-instance v5, Ljava/io/BufferedInputStream;

    const/16 v7, 0x2000

    invoke-direct {v5, p1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 227
    .local v5, "in":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 233
    .local v4, "fc":Ljava/nio/channels/FileChannel;
    :try_start_0
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 234
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :goto_1
    :try_start_1
    iget-boolean v7, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_6

    .line 243
    const/4 v7, 0x0

    const/16 v8, 0x2000

    :try_start_2
    invoke-virtual {v5, v0, v7, v8}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    .line 249
    .local v6, "n":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    .line 253
    const/4 v7, 0x0

    :try_start_3
    invoke-static {v0, v7, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 254
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v2

    .line 261
    .local v2, "downloadSize":J
    const/4 v7, 0x2

    :try_start_4
    new-array v7, v7, [Ljava/lang/Long;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-wide v10, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->e:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/laiwang/update/base/DefaultDownloader$a;->publishProgress([Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 275
    .end local v2    # "downloadSize":J
    .end local v6    # "n":I
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->f:Ljat;

    invoke-virtual {v8}, Ljat;->a()V

    .line 276
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->f:Ljat;

    .line 278
    :try_start_5
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_18

    .line 283
    :goto_2
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_19

    .line 288
    :goto_3
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1a

    .line 292
    :goto_4
    if-eqz v4, :cond_1

    .line 294
    :try_start_8
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1b

    .line 297
    :cond_1
    :goto_5
    throw v7

    .line 235
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 275
    iget-object v7, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->f:Ljat;

    invoke-virtual {v7}, Ljat;->a()V

    .line 276
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->f:Ljat;

    .line 278
    :try_start_a
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 283
    :goto_6
    :try_start_b
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 288
    :goto_7
    :try_start_c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 292
    :goto_8
    if-eqz v4, :cond_2

    .line 294
    :try_start_d
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 297
    :cond_2
    :goto_9
    const/4 v7, -0x6

    goto :goto_0

    .line 279
    :catch_1
    move-exception v1

    .line 280
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 284
    :catch_2
    move-exception v1

    .line 285
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 289
    :catch_3
    move-exception v1

    .line 290
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 295
    :catch_4
    move-exception v1

    .line 296
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 244
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 246
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 275
    iget-object v7, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->f:Ljat;

    invoke-virtual {v7}, Ljat;->a()V

    .line 276
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->f:Ljat;

    .line 278
    :try_start_f
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    .line 283
    :goto_a
    :try_start_10
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    .line 288
    :goto_b
    :try_start_11
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    .line 292
    :goto_c
    if-eqz v4, :cond_3

    .line 294
    :try_start_12
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    .line 297
    :cond_3
    :goto_d
    const/4 v7, -0x7

    goto/16 :goto_0

    .line 279
    :catch_6
    move-exception v1

    .line 280
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 284
    :catch_7
    move-exception v1

    .line 285
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 289
    :catch_8
    move-exception v1

    .line 290
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 295
    :catch_9
    move-exception v1

    .line 296
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 255
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v6    # "n":I
    :catch_a
    move-exception v1

    .line 257
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_13
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 275
    iget-object v7, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->f:Ljat;

    invoke-virtual {v7}, Ljat;->a()V

    .line 276
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->f:Ljat;

    .line 278
    :try_start_14
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_b

    .line 283
    :goto_e
    :try_start_15
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c

    .line 288
    :goto_f
    :try_start_16
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_d

    .line 292
    :goto_10
    if-eqz v4, :cond_4

    .line 294
    :try_start_17
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_e

    .line 297
    :cond_4
    :goto_11
    const/4 v7, -0x6

    goto/16 :goto_0

    .line 279
    :catch_b
    move-exception v1

    .line 280
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 284
    :catch_c
    move-exception v1

    .line 285
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 289
    :catch_d
    move-exception v1

    .line 290
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 295
    :catch_e
    move-exception v1

    .line 296
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 264
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    const/4 v7, 0x1

    :try_start_18
    iput-boolean v7, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->a:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto/16 :goto_1

    .line 269
    .end local v6    # "n":I
    :cond_6
    :try_start_19
    iget-wide v8, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->e:J

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_13
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_8

    .line 275
    iget-object v7, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->f:Ljat;

    invoke-virtual {v7}, Ljat;->a()V

    .line 276
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->f:Ljat;

    .line 278
    :try_start_1a
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_f

    .line 283
    :goto_12
    :try_start_1b
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_10

    .line 288
    :goto_13
    :try_start_1c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_11

    .line 292
    :goto_14
    if-eqz v4, :cond_7

    .line 294
    :try_start_1d
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_12

    .line 297
    :cond_7
    :goto_15
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 279
    :catch_f
    move-exception v1

    .line 280
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 284
    .end local v1    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v1

    .line 285
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 289
    .end local v1    # "e":Ljava/io/IOException;
    :catch_11
    move-exception v1

    .line 290
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14

    .line 295
    .end local v1    # "e":Ljava/io/IOException;
    :catch_12
    move-exception v1

    .line 296
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 271
    .end local v1    # "e":Ljava/io/IOException;
    :catch_13
    move-exception v1

    .line 272
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 275
    .end local v1    # "e":Ljava/io/IOException;
    :cond_8
    iget-object v7, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->f:Ljat;

    invoke-virtual {v7}, Ljat;->a()V

    .line 276
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->f:Ljat;

    .line 278
    :try_start_1f
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_14

    .line 283
    :goto_16
    :try_start_20
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_15

    .line 288
    :goto_17
    :try_start_21
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_16

    .line 292
    :goto_18
    if-eqz v4, :cond_9

    .line 294
    :try_start_22
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_17

    .line 300
    :cond_9
    :goto_19
    const/4 v7, -0x7

    goto/16 :goto_0

    .line 279
    :catch_14
    move-exception v1

    .line 280
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16

    .line 284
    .end local v1    # "e":Ljava/io/IOException;
    :catch_15
    move-exception v1

    .line 285
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    .line 289
    .end local v1    # "e":Ljava/io/IOException;
    :catch_16
    move-exception v1

    .line 290
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    .line 295
    .end local v1    # "e":Ljava/io/IOException;
    :catch_17
    move-exception v1

    .line 296
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 279
    .end local v1    # "e":Ljava/io/IOException;
    :catch_18
    move-exception v1

    .line 280
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 284
    .end local v1    # "e":Ljava/io/IOException;
    :catch_19
    move-exception v1

    .line 285
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 289
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1a
    move-exception v1

    .line 290
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 295
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1b
    move-exception v1

    .line 296
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 18
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 144
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/laiwang/update/base/DefaultDownloader$a;->i:Z

    if-nez v14, :cond_0

    .line 145
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 215
    :goto_0
    return-object v14

    .line 148
    :cond_0
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0xe

    if-lt v14, v15, :cond_1

    .line 149
    const v14, 0xa00c

    invoke-static {v14}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 155
    :cond_1
    :try_start_0
    new-instance v13, Ljava/net/URL;

    const/4 v14, 0x0

    aget-object v14, p1, v14

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .local v13, "url":Ljava/net/URL;
    new-instance v14, Ljava/io/File;

    invoke-virtual {v13}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 161
    .local v6, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/laiwang/update/base/DefaultDownloader$a;->c:Ljava/lang/String;

    invoke-direct {v2, v14, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .local v2, "apkfile":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/laiwang/update/base/DefaultDownloader$a;->c:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ".download"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .local v12, "tempFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/laiwang/update/base/DefaultDownloader$a;->d:Ljava/lang/String;

    .line 165
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/laiwang/update/base/DefaultDownloader$a;->e:J

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-nez v14, :cond_2

    .line 167
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Long;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/laiwang/update/base/DefaultDownloader$a;->e:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/laiwang/update/base/DefaultDownloader$a;->e:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/laiwang/update/base/DefaultDownloader$a;->publishProgress([Ljava/lang/Object;)V

    .line 168
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto/16 :goto_0

    .line 156
    .end local v2    # "apkfile":Ljava/io/File;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v12    # "tempFile":Ljava/io/File;
    .end local v13    # "url":Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 157
    .local v5, "e2":Ljava/net/MalformedURLException;
    invoke-virtual {v5}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 158
    const/4 v14, -0x5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto/16 :goto_0

    .line 172
    .end local v5    # "e2":Ljava/net/MalformedURLException;
    .restart local v2    # "apkfile":Ljava/io/File;
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v12    # "tempFile":Ljava/io/File;
    .restart local v13    # "url":Ljava/net/URL;
    :cond_2
    const-string/jumbo v14, "DefaultDownloader"

    invoke-static {v14}, Ljat;->a(Ljava/lang/String;)Ljat;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/laiwang/update/base/DefaultDownloader$a;->f:Ljat;

    .line 173
    new-instance v14, Lorg/apache/http/client/methods/HttpGet;

    const/4 v15, 0x0

    aget-object v15, p1, v15

    invoke-direct {v14, v15}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/laiwang/update/base/DefaultDownloader$a;->g:Lorg/apache/http/client/methods/HttpGet;

    .line 174
    const-wide/16 v10, 0x0

    .line 175
    .local v10, "prviousFileSize":J
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 177
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 178
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/laiwang/update/base/DefaultDownloader$a;->e:J

    cmp-long v14, v10, v14

    if-lez v14, :cond_5

    .line 180
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 181
    const-wide/16 v10, 0x0

    .line 186
    :cond_3
    :goto_1
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Long;

    const/4 v15, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/laiwang/update/base/DefaultDownloader$a;->e:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/laiwang/update/base/DefaultDownloader$a;->publishProgress([Ljava/lang/Object;)V

    .line 188
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/laiwang/update/base/DefaultDownloader$a;->e:J

    cmp-long v14, v10, v14

    if-eqz v14, :cond_6

    .line 192
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/laiwang/update/base/DefaultDownloader$a;->f:Ljat;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/laiwang/update/base/DefaultDownloader$a;->g:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v14, v15}, Ljat;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/laiwang/update/base/DefaultDownloader$a;->h:Lorg/apache/http/HttpResponse;

    .line 193
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/laiwang/update/base/DefaultDownloader$a;->h:Lorg/apache/http/HttpResponse;

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 201
    .local v7, "input":Ljava/io/InputStream;
    :try_start_2
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string/jumbo v14, "rw"

    invoke-direct {v8, v12, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 206
    .local v8, "outputStream":Ljava/io/RandomAccessFile;
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/laiwang/update/base/DefaultDownloader$a;->a(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)I

    move-result v9

    .line 212
    .end local v7    # "input":Ljava/io/InputStream;
    .end local v8    # "outputStream":Ljava/io/RandomAccessFile;
    .local v9, "ret":I
    :goto_2
    const/4 v14, 0x1

    if-ne v9, v14, :cond_4

    .line 213
    invoke-virtual {v12, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 215
    :cond_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto/16 :goto_0

    .line 182
    .end local v9    # "ret":I
    :cond_5
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/laiwang/update/base/DefaultDownloader$a;->e:J

    cmp-long v14, v10, v14

    if-gez v14, :cond_3

    .line 183
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/laiwang/update/base/DefaultDownloader$a;->g:Lorg/apache/http/client/methods/HttpGet;

    const-string/jumbo v15, "Range"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "bytes="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 194
    :catch_1
    move-exception v3

    .line 195
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    const/4 v14, -0x7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto/16 :goto_0

    .line 202
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v7    # "input":Ljava/io/InputStream;
    :catch_2
    move-exception v4

    .line 203
    .local v4, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 204
    const/4 v14, -0x6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto/16 :goto_0

    .line 209
    .end local v4    # "e1":Ljava/io/FileNotFoundException;
    .end local v7    # "input":Ljava/io/InputStream;
    :cond_6
    const/4 v9, 0x1

    .restart local v9    # "ret":I
    goto :goto_2
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 78
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/laiwang/update/base/DefaultDownloader$a;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "x0"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    check-cast p1, Ljava/lang/Integer;

    .line 1320
    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1321
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1322
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1323
    iget-object v0, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->b:Lcom/laiwang/update/base/DefaultDownloader;

    invoke-static {v0}, Lcom/laiwang/update/base/DefaultDownloader;->b(Lcom/laiwang/update/base/DefaultDownloader;)Ljau$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1324
    iget-object v0, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->b:Lcom/laiwang/update/base/DefaultDownloader;

    invoke-static {v0}, Lcom/laiwang/update/base/DefaultDownloader;->b(Lcom/laiwang/update/base/DefaultDownloader;)Ljau$a;

    move-result-object v0

    iget-object v1, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljau$a;->a(Ljava/lang/String;)V

    .line 1334
    :cond_0
    :goto_0
    return-void

    .line 1327
    :cond_1
    iget-object v0, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->b:Lcom/laiwang/update/base/DefaultDownloader;

    invoke-static {v0}, Lcom/laiwang/update/base/DefaultDownloader;->b(Lcom/laiwang/update/base/DefaultDownloader;)Ljau$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1328
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1336
    :pswitch_0
    iget-object v0, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->b:Lcom/laiwang/update/base/DefaultDownloader;

    invoke-static {v0}, Lcom/laiwang/update/base/DefaultDownloader;->b(Lcom/laiwang/update/base/DefaultDownloader;)Ljau$a;

    move-result-object v0

    const/4 v1, -0x7

    const-string/jumbo v2, "\u7f51\u7edc\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Ljau$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 1330
    :pswitch_1
    iget-object v0, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->b:Lcom/laiwang/update/base/DefaultDownloader;

    invoke-static {v0}, Lcom/laiwang/update/base/DefaultDownloader;->b(Lcom/laiwang/update/base/DefaultDownloader;)Ljau$a;

    move-result-object v0

    const/4 v1, -0x5

    const-string/jumbo v2, "url\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Ljau$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 1333
    :pswitch_2
    iget-object v0, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->b:Lcom/laiwang/update/base/DefaultDownloader;

    invoke-static {v0}, Lcom/laiwang/update/base/DefaultDownloader;->b(Lcom/laiwang/update/base/DefaultDownloader;)Ljau$a;

    move-result-object v0

    const/4 v1, -0x6

    const-string/jumbo v2, "\u6587\u4ef6\u8bfb\u5199\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Ljau$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 1328
    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected final onPreExecute()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 110
    iget-object v6, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->b:Lcom/laiwang/update/base/DefaultDownloader;

    invoke-static {v6}, Lcom/laiwang/update/base/DefaultDownloader;->a(Lcom/laiwang/update/base/DefaultDownloader;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 111
    iget-object v6, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->b:Lcom/laiwang/update/base/DefaultDownloader;

    invoke-static {v6}, Lcom/laiwang/update/base/DefaultDownloader;->b(Lcom/laiwang/update/base/DefaultDownloader;)Ljau$a;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 112
    iget-object v6, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->b:Lcom/laiwang/update/base/DefaultDownloader;

    invoke-static {v6}, Lcom/laiwang/update/base/DefaultDownloader;->b(Lcom/laiwang/update/base/DefaultDownloader;)Ljau$a;

    move-result-object v6

    const/4 v7, -0x3

    const-string/jumbo v8, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-interface {v6, v7, v8}, Ljau$a;->a(ILjava/lang/String;)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->c:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v3, "storePath":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 121
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 123
    :cond_2
    const/4 v1, 0x0

    .line 125
    .local v1, "statfs":Landroid/os/StatFs;
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "statfs":Landroid/os/StatFs;
    .local v2, "statfs":Landroid/os/StatFs;
    move-object v1, v2

    .line 129
    .end local v2    # "statfs":Landroid/os/StatFs;
    .restart local v1    # "statfs":Landroid/os/StatFs;
    :goto_1
    const-wide/16 v4, 0x0

    .line 130
    .local v4, "totalSpace":J
    if-eqz v1, :cond_3

    .line 131
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v8, v8

    mul-long v4, v6, v8

    .line 132
    :cond_3
    iget-wide v6, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->e:J

    const-wide/32 v8, 0x200000

    add-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-gez v6, :cond_4

    .line 133
    iget-object v6, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->b:Lcom/laiwang/update/base/DefaultDownloader;

    invoke-static {v6}, Lcom/laiwang/update/base/DefaultDownloader;->b(Lcom/laiwang/update/base/DefaultDownloader;)Ljau$a;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 134
    iget-object v6, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->b:Lcom/laiwang/update/base/DefaultDownloader;

    invoke-static {v6}, Lcom/laiwang/update/base/DefaultDownloader;->b(Lcom/laiwang/update/base/DefaultDownloader;)Ljau$a;

    move-result-object v6

    const/4 v7, -0x2

    const-string/jumbo v8, "\u7cfb\u7edf\u7a7a\u95f4\u4e0d\u8db3"

    invoke-interface {v6, v7, v8}, Ljau$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 126
    .end local v4    # "totalSpace":J
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "totalSpace":J
    :cond_4
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->i:Z

    goto :goto_0
.end method

.method protected final synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 8
    .param p1, "x0"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v0, 0x64

    .line 78
    check-cast p1, [Ljava/lang/Long;

    .line 1306
    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1307
    iget-wide v4, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->j:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 1308
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 1309
    if-le v1, v0, :cond_2

    .line 1310
    :goto_0
    iget-object v1, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->b:Lcom/laiwang/update/base/DefaultDownloader;

    invoke-static {v1}, Lcom/laiwang/update/base/DefaultDownloader;->b(Lcom/laiwang/update/base/DefaultDownloader;)Ljau$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1311
    iget-object v1, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->b:Lcom/laiwang/update/base/DefaultDownloader;

    invoke-static {v1}, Lcom/laiwang/update/base/DefaultDownloader;->b(Lcom/laiwang/update/base/DefaultDownloader;)Ljau$a;

    move-result-object v1

    invoke-interface {v1, v0}, Ljau$a;->a(I)V

    .line 1313
    :cond_0
    iput-wide v2, p0, Lcom/laiwang/update/base/DefaultDownloader$a;->j:J

    .line 78
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 1309
    goto :goto_0
.end method
