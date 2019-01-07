.class public final Ljtb;
.super Ljtj;
.source "ProGuard"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field a:Landroid/os/HandlerThread;

.field private c:Ljtc;

.field private d:Ljava/io/FileWriter;

.field private e:Ljava/io/File;

.field private f:[C

.field private volatile g:Ljth;

.field private volatile h:Ljth;

.field private volatile i:Ljth;

.field private volatile j:Ljth;

.field private volatile k:Z

.field private l:Landroid/os/Handler;


# direct methods
.method private constructor <init>(IZLjti;Ljtc;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 90
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, p3}, Ljtj;-><init>(IZLjti;)V

    .line 60
    iput-boolean v0, p0, Ljtb;->k:Z

    .line 1333
    iput-object p4, p0, Ljtb;->c:Ljtc;

    .line 95
    new-instance v1, Ljth;

    invoke-direct {v1}, Ljth;-><init>()V

    iput-object v1, p0, Ljtb;->g:Ljth;

    .line 96
    new-instance v1, Ljth;

    invoke-direct {v1}, Ljth;-><init>()V

    iput-object v1, p0, Ljtb;->h:Ljth;

    .line 98
    iget-object v1, p0, Ljtb;->g:Ljth;

    iput-object v1, p0, Ljtb;->i:Ljth;

    .line 99
    iget-object v1, p0, Ljtb;->h:Ljth;

    iput-object v1, p0, Ljtb;->j:Ljth;

    .line 1442
    iget v1, p4, Ljtc;->d:I

    .line 101
    new-array v1, v1, [C

    iput-object v1, p0, Ljtb;->f:[C

    .line 2484
    iget-object v1, p4, Ljtc;->e:Ljava/io/File;

    .line 2314
    if-eqz v1, :cond_1

    .line 3484
    iget-object v1, p4, Ljtc;->e:Ljava/io/File;

    .line 2319
    sget-object v2, Ljtc;->b:Ljava/io/FileFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 2321
    if-eqz v1, :cond_1

    .line 2326
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 2328
    invoke-static {v3}, Ljtc;->a(Ljava/io/File;)J

    move-result-wide v4

    .line 2330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    .line 3547
    iget-wide v6, p4, Ljtc;->h:J

    .line 2330
    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 2332
    invoke-static {v3}, Ljte$b;->a(Ljava/io/File;)Z

    .line 2326
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    invoke-direct {p0}, Ljtb;->d()Ljava/io/Writer;

    .line 107
    new-instance v0, Landroid/os/HandlerThread;

    .line 4384
    iget-object v1, p4, Ljtc;->c:Ljava/lang/String;

    .line 4505
    iget v2, p4, Ljtc;->f:I

    .line 107
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Ljtb;->a:Landroid/os/HandlerThread;

    .line 109
    iget-object v0, p0, Ljtb;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Ljtb;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 114
    :cond_2
    iget-object v0, p0, Ljtb;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljtb;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 116
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Ljtb;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Ljtb;->l:Landroid/os/Handler;

    .line 122
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljtc;)V
    .locals 3

    .prologue
    .line 73
    sget v0, Ljtd;->b:I

    const/4 v1, 0x1

    sget-object v2, Ljti;->a:Ljti;

    invoke-direct {p0, v0, v1, v2, p1}, Ljtb;-><init>(IZLjti;Ljtc;)V

    .line 74
    return-void
.end method

.method private d()Ljava/io/Writer;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 250
    .line 9322
    iget-object v0, p0, Ljtb;->c:Ljtc;

    .line 10219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 10245
    new-instance v1, Ljava/io/File;

    .line 10484
    iget-object v4, v0, Ljtc;->e:Ljava/io/File;

    .line 10245
    sget-object v5, Ljtc;->a:Ljava/text/SimpleDateFormat;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10247
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 10233
    invoke-virtual {v0, v1}, Ljtc;->b(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_0

    iget-object v1, p0, Ljtb;->e:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    iput-object v0, p0, Ljtb;->e:Ljava/io/File;

    .line 257
    invoke-virtual {p0}, Ljtb;->c()V

    .line 261
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    iget-object v1, p0, Ljtb;->e:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Ljtb;->d:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_0
    iget-object v0, p0, Ljtb;->d:Ljava/io/FileWriter;

    :goto_0
    return-object v0

    .line 265
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 300
    monitor-enter p0

    .line 302
    :try_start_0
    iget-object v0, p0, Ljtb;->i:Ljth;

    iget-object v1, p0, Ljtb;->g:Ljth;

    if-ne v0, v1, :cond_0

    .line 304
    iget-object v0, p0, Ljtb;->h:Ljth;

    iput-object v0, p0, Ljtb;->i:Ljth;

    .line 305
    iget-object v0, p0, Ljtb;->g:Ljth;

    iput-object v0, p0, Ljtb;->j:Ljth;

    .line 312
    :goto_0
    monitor-exit p0

    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Ljtb;->g:Ljth;

    iput-object v0, p0, Ljtb;->i:Ljth;

    .line 310
    iget-object v0, p0, Ljtb;->h:Ljth;

    iput-object v0, p0, Ljtb;->j:Ljth;

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v1, 0x400

    .line 130
    iget-object v0, p0, Ljtb;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Ljtb;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    :cond_0
    iget-object v0, p0, Ljtb;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 137
    return-void
.end method

.method protected final a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 156
    .line 5191
    iget-object v0, p0, Ljtj;->b:Ljti;

    .line 6109
    const-wide/16 v0, 0x3e8

    rem-long v0, p3, v0

    .line 6111
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 6113
    invoke-virtual {v2, p3, p4}, Landroid/text/format/Time;->set(J)V

    .line 6115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 6117
    invoke-static {p1}, Ljti;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6119
    const-wide/16 v4, 0xa

    cmp-long v2, v0, v4

    if-gez v2, :cond_3

    .line 6121
    const-string/jumbo v2, "00"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6128
    :cond_0
    :goto_0
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6130
    if-nez p2, :cond_4

    .line 6132
    const-string/jumbo v0, "N/A"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6139
    :goto_1
    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6141
    if-eqz p7, :cond_1

    .line 6143
    const-string/jumbo v0, "* Exception : \n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6146
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6164
    iget-object v1, p0, Ljtb;->i:Ljth;

    .line 7052
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 7054
    iget-object v3, v1, Ljth;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 7056
    iget-object v0, v1, Ljth;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 6167
    iget-object v0, p0, Ljtb;->i:Ljth;

    .line 7137
    iget-object v0, v0, Ljth;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 7322
    iget-object v1, p0, Ljtb;->c:Ljtc;

    .line 7442
    iget v1, v1, Ljtc;->d:I

    .line 6167
    if-lt v0, v1, :cond_2

    .line 6169
    invoke-virtual {p0}, Ljtb;->a()V

    .line 159
    :cond_2
    return-void

    .line 6123
    :cond_3
    const-wide/16 v4, 0x64

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 6125
    const/16 v2, 0x30

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 6136
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Ljtb;->c()V

    .line 150
    iget-object v0, p0, Ljtb;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 151
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 283
    :try_start_0
    iget-object v0, p0, Ljtb;->d:Ljava/io/FileWriter;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Ljtb;->d:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 286
    iget-object v0, p0, Ljtb;->d:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v12, 0x1

    const/4 v5, 0x0

    .line 176
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 189
    :cond_0
    :goto_0
    return v12

    .line 8209
    :pswitch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Ljtb;->a:Landroid/os/HandlerThread;

    if-ne v0, v1, :cond_0

    .line 8214
    iget-boolean v0, p0, Ljtb;->k:Z

    if-nez v0, :cond_0

    .line 8219
    iput-boolean v12, p0, Ljtb;->k:Z

    .line 8222
    invoke-direct {p0}, Ljtb;->e()V

    .line 8226
    :try_start_0
    iget-object v0, p0, Ljtb;->j:Ljth;

    invoke-direct {p0}, Ljtb;->d()Ljava/io/Writer;

    move-result-object v9

    iget-object v10, p0, Ljtb;->f:[C

    .line 9073
    if-eqz v9, :cond_1

    if-eqz v10, :cond_1

    array-length v1, v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 8235
    :cond_1
    :goto_1
    iget-object v0, p0, Ljtb;->j:Ljth;

    invoke-virtual {v0}, Ljth;->a()V

    .line 8239
    :goto_2
    iput-boolean v5, p0, Ljtb;->k:Z

    goto :goto_0

    .line 9084
    :cond_2
    :try_start_1
    array-length v6, v10

    .line 9088
    invoke-virtual {v0}, Ljth;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v1, v5

    move v3, v6

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9092
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    move v4, v1

    move v8, v5

    .line 9096
    :goto_4
    if-lez v2, :cond_4

    .line 9099
    if-le v3, v2, :cond_3

    move v1, v2

    .line 9101
    :goto_5
    add-int v7, v8, v1

    invoke-virtual {v0, v8, v7, v10, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 9103
    sub-int v7, v3, v1

    .line 9104
    add-int v3, v4, v1

    .line 9106
    sub-int/2addr v2, v1

    .line 9107
    add-int/2addr v1, v8

    .line 9109
    if-nez v7, :cond_7

    .line 9111
    const/4 v3, 0x0

    invoke-virtual {v9, v10, v3, v6}, Ljava/io/Writer;->write([CII)V

    move v4, v5

    move v3, v6

    move v8, v1

    .line 9114
    goto :goto_4

    :cond_3
    move v1, v3

    .line 9099
    goto :goto_5

    :cond_4
    move v1, v4

    .line 9114
    goto :goto_3

    .line 9121
    :cond_5
    if-lez v1, :cond_6

    .line 9123
    const/4 v0, 0x0

    invoke-virtual {v9, v10, v0, v1}, Ljava/io/Writer;->write([CII)V

    .line 9127
    :cond_6
    invoke-virtual {v9}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 8235
    :catch_0
    move-exception v0

    iget-object v0, p0, Ljtb;->j:Ljth;

    invoke-virtual {v0}, Ljth;->a()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ljtb;->j:Ljth;

    invoke-virtual {v1}, Ljth;->a()V

    throw v0

    :cond_7
    move v4, v3

    move v8, v1

    move v3, v7

    goto :goto_4

    .line 176
    :pswitch_data_0
    .packed-switch 0x400
        :pswitch_0
    .end packed-switch
.end method
