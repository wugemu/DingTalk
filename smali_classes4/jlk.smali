.class public final Ljlk;
.super Ljava/lang/Object;
.source "DefaultDownloader2.java"

# interfaces
.implements Ljli;


# instance fields
.field private a:Ljll;

.field private b:Ljlm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 321
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a()Z
    .locals 18

    .prologue
    .line 120
    const/4 v2, 0x0

    .line 121
    .local v2, "dlConnection":Ljlo;
    const/4 v3, 0x0

    .line 122
    .local v3, "dlInputStream":Ljlp;
    const/4 v5, 0x0

    .line 125
    .local v5, "outputStream":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 126
    .local v8, "start":J
    invoke-direct/range {p0 .. p0}, Ljlk;->b()Ljlo;

    move-result-object v2

    .line 127
    move-object/from16 v0, p0

    iget-object v12, v0, Ljlk;->b:Ljlm;

    iget-object v12, v12, Ljlm;->f:Ljmd$a;

    iget-wide v14, v12, Ljmd$a;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v8

    add-long v14, v14, v16

    iput-wide v14, v12, Ljmd$a;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    if-nez v2, :cond_1

    .line 195
    if-eqz v2, :cond_0

    .line 197
    :try_start_1
    invoke-interface {v2}, Ljlo;->f()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 200
    :cond_0
    :goto_0
    const/4 v12, 0x0

    :goto_1
    return v12

    .line 198
    :catch_0
    move-exception v4

    .line 199
    .local v4, "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "Downloader"

    const-string/jumbo v13, "on exception"

    invoke-static {v12, v13, v4}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 135
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_2
    invoke-interface {v2}, Ljlo;->d()Ljlp;

    move-result-object v3

    .line 136
    if-nez v3, :cond_4

    .line 137
    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v13, "inputstream is null"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    :catch_1
    move-exception v4

    .line 140
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v12, "Downloader"

    const-string/jumbo v13, "conn.getinputstream exception"

    invoke-static {v12, v13, v4}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v12, v0, Ljlk;->b:Ljlm;

    iget-object v12, v12, Ljlm;->e:Ljlm$a;

    const/16 v13, -0xc

    const/16 v14, 0xcd

    invoke-interface {v2}, Ljlo;->e()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Ljlm$a;->a(IILjava/lang/String;)Ljlm$a;

    move-result-object v12

    const/4 v13, 0x1

    iput-boolean v13, v12, Ljlm$a;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    if-eqz v3, :cond_2

    .line 190
    :try_start_4
    invoke-interface {v3}, Ljlp;->a()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 195
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 197
    :try_start_5
    invoke-interface {v2}, Ljlo;->f()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 200
    :cond_3
    :goto_3
    const/4 v12, 0x0

    goto :goto_1

    .line 191
    .restart local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 192
    .local v4, "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "Downloader"

    const-string/jumbo v13, "on exception"

    invoke-static {v12, v13, v4}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 198
    .end local v4    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v4

    .line 199
    .restart local v4    # "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "Downloader"

    const-string/jumbo v13, "on exception"

    invoke-static {v12, v13, v4}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 147
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_4
    :try_start_6
    move-object/from16 v0, p0

    iget-object v12, v0, Ljlk;->a:Ljll;

    .line 3098
    new-instance v6, Ljava/io/RandomAccessFile;

    iget-object v12, v12, Ljll;->d:Ljava/io/File;

    const-string/jumbo v13, "rw"

    invoke-direct {v6, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_17
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 148
    .end local v5    # "outputStream":Ljava/io/RandomAccessFile;
    .local v6, "outputStream":Ljava/io/RandomAccessFile;
    if-nez v6, :cond_8

    .line 149
    :try_start_7
    new-instance v12, Ljava/io/FileNotFoundException;

    const-string/jumbo v13, "outputStream is null"

    invoke-direct {v12, v13}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 151
    :catch_4
    move-exception v4

    move-object v5, v6

    .line 152
    .end local v6    # "outputStream":Ljava/io/RandomAccessFile;
    .local v4, "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "outputStream":Ljava/io/RandomAccessFile;
    :goto_4
    :try_start_8
    const-string/jumbo v12, "Downloader"

    const-string/jumbo v13, "getRandomAccessFile"

    invoke-static {v12, v13, v4}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v12, v0, Ljlk;->b:Ljlm;

    iget-object v12, v12, Ljlm;->e:Ljlm$a;

    const/16 v13, -0xb

    const/16 v14, 0x67

    invoke-interface {v2}, Ljlo;->e()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Ljlm$a;->a(IILjava/lang/String;)Ljlm$a;

    move-result-object v12

    const/4 v13, 0x1

    iput-boolean v13, v12, Ljlm$a;->e:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 181
    if-eqz v5, :cond_5

    .line 183
    :try_start_9
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 188
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :cond_5
    :goto_5
    if-eqz v3, :cond_6

    .line 190
    :try_start_a
    invoke-interface {v3}, Ljlp;->a()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6

    .line 195
    :cond_6
    :goto_6
    if-eqz v2, :cond_7

    .line 197
    :try_start_b
    invoke-interface {v2}, Ljlo;->f()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_7

    .line 200
    :cond_7
    :goto_7
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 184
    .restart local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v4

    .line 185
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v12, "Downloader"

    const-string/jumbo v13, "on exception"

    invoke-static {v12, v13, v4}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 191
    .end local v4    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 192
    .local v4, "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "Downloader"

    const-string/jumbo v13, "on exception"

    invoke-static {v12, v13, v4}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 198
    .end local v4    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v4

    .line 199
    .restart local v4    # "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "Downloader"

    const-string/jumbo v13, "on exception"

    invoke-static {v12, v13, v4}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 157
    .end local v4    # "e":Ljava/lang/Throwable;
    .end local v5    # "outputStream":Ljava/io/RandomAccessFile;
    .restart local v6    # "outputStream":Ljava/io/RandomAccessFile;
    :cond_8
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 158
    .local v10, "start2":J
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Ljlk;->a(Ljlp;Ljava/io/RandomAccessFile;)Z

    move-result v7

    .line 159
    .local v7, "saveResult":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Ljlk;->b:Ljlm;

    iget-object v12, v12, Ljlm;->f:Ljmd$a;

    iget-wide v14, v12, Ljmd$a;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v10

    add-long v14, v14, v16

    iput-wide v14, v12, Ljmd$a;->f:J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 161
    if-nez v7, :cond_c

    .line 181
    if-eqz v6, :cond_9

    .line 183
    :try_start_d
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 188
    :cond_9
    :goto_8
    if-eqz v3, :cond_a

    .line 190
    :try_start_e
    invoke-interface {v3}, Ljlp;->a()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_9

    .line 195
    :cond_a
    :goto_9
    if-eqz v2, :cond_b

    .line 197
    :try_start_f
    invoke-interface {v2}, Ljlo;->f()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_a

    .line 200
    :cond_b
    :goto_a
    const/4 v12, 0x0

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/RandomAccessFile;
    .restart local v5    # "outputStream":Ljava/io/RandomAccessFile;
    goto/16 :goto_1

    .line 184
    .end local v5    # "outputStream":Ljava/io/RandomAccessFile;
    .restart local v6    # "outputStream":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v4

    .line 185
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v12, "Downloader"

    const-string/jumbo v13, "on exception"

    invoke-static {v12, v13, v4}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 191
    .end local v4    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v4

    .line 192
    .local v4, "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "Downloader"

    const-string/jumbo v13, "on exception"

    invoke-static {v12, v13, v4}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 198
    .end local v4    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v4

    .line 199
    .restart local v4    # "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "Downloader"

    const-string/jumbo v13, "on exception"

    invoke-static {v12, v13, v4}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 165
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_c
    :try_start_10
    move-object/from16 v0, p0

    iget-object v12, v0, Ljlk;->a:Ljll;

    invoke-virtual {v12}, Ljll;->a()Z

    move-result v12

    if-eqz v12, :cond_15

    .line 166
    move-object/from16 v0, p0

    iget-object v12, v0, Ljlk;->a:Ljll;

    iget-object v12, v12, Ljll;->d:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Ljlk;->a:Ljll;

    iget-object v13, v13, Ljll;->e:Ljava/io/File;

    invoke-static {v12, v13}, Ljlz;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 167
    move-object/from16 v0, p0

    iget-object v12, v0, Ljlk;->b:Ljlm;

    const/16 v13, 0xa

    iput v13, v12, Ljlm;->a:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 181
    if-eqz v6, :cond_d

    .line 183
    :try_start_11
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 188
    :cond_d
    :goto_b
    if-eqz v3, :cond_e

    .line 190
    :try_start_12
    invoke-interface {v3}, Ljlp;->a()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_c

    .line 195
    :cond_e
    :goto_c
    if-eqz v2, :cond_f

    .line 197
    :try_start_13
    invoke-interface {v2}, Ljlo;->f()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_d

    .line 200
    :cond_f
    :goto_d
    const/4 v12, 0x1

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/RandomAccessFile;
    .restart local v5    # "outputStream":Ljava/io/RandomAccessFile;
    goto/16 :goto_1

    .line 184
    .end local v5    # "outputStream":Ljava/io/RandomAccessFile;
    .restart local v6    # "outputStream":Ljava/io/RandomAccessFile;
    :catch_b
    move-exception v4

    .line 185
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v12, "Downloader"

    const-string/jumbo v13, "on exception"

    invoke-static {v12, v13, v4}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 191
    .end local v4    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v4

    .line 192
    .local v4, "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "Downloader"

    const-string/jumbo v13, "on exception"

    invoke-static {v12, v13, v4}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 198
    .end local v4    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v4

    .line 199
    .restart local v4    # "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "Downloader"

    const-string/jumbo v13, "on exception"

    invoke-static {v12, v13, v4}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 170
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_10
    :try_start_14
    move-object/from16 v0, p0

    iget-object v12, v0, Ljlk;->b:Ljlm;

    iget-object v13, v12, Ljlm;->e:Ljlm$a;

    const/16 v14, -0xb

    move-object/from16 v0, p0

    iget-object v12, v0, Ljlk;->a:Ljll;

    iget-object v12, v12, Ljll;->e:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->canWrite()Z

    move-result v12

    if-eqz v12, :cond_14

    const/16 v12, 0x68

    :goto_e
    const-string/jumbo v15, "rename tmp file error"

    invoke-virtual {v13, v14, v12, v15}, Ljlm$a;->a(IILjava/lang/String;)Ljlm$a;

    move-result-object v12

    const/4 v13, 0x1

    iput-boolean v13, v12, Ljlm$a;->e:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 181
    if-eqz v6, :cond_11

    .line 183
    :try_start_15
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e

    .line 188
    :cond_11
    :goto_f
    if-eqz v3, :cond_12

    .line 190
    :try_start_16
    invoke-interface {v3}, Ljlp;->a()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_f

    .line 195
    :cond_12
    :goto_10
    if-eqz v2, :cond_13

    .line 197
    :try_start_17
    invoke-interface {v2}, Ljlo;->f()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_10

    .line 200
    :cond_13
    :goto_11
    const/4 v12, 0x0

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/RandomAccessFile;
    .restart local v5    # "outputStream":Ljava/io/RandomAccessFile;
    goto/16 :goto_1

    .line 170
    .end local v5    # "outputStream":Ljava/io/RandomAccessFile;
    .restart local v6    # "outputStream":Ljava/io/RandomAccessFile;
    :cond_14
    const/16 v12, 0x69

    goto :goto_e

    .line 184
    :catch_e
    move-exception v4

    .line 185
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v12, "Downloader"

    const-string/jumbo v13, "on exception"

    invoke-static {v12, v13, v4}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    .line 191
    .end local v4    # "e":Ljava/io/IOException;
    :catch_f
    move-exception v4

    .line 192
    .local v4, "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "Downloader"

    const-string/jumbo v13, "on exception"

    invoke-static {v12, v13, v4}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 198
    .end local v4    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v4

    .line 199
    .restart local v4    # "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "Downloader"

    const-string/jumbo v13, "on exception"

    invoke-static {v12, v13, v4}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    .line 176
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_15
    :try_start_18
    move-object/from16 v0, p0

    iget-object v12, v0, Ljlk;->a:Ljll;

    iget-object v12, v12, Ljll;->d:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 177
    move-object/from16 v0, p0

    iget-object v12, v0, Ljlk;->b:Ljlm;

    iget-object v13, v12, Ljlm;->e:Ljlm$a;

    move-object/from16 v0, p0

    iget-object v12, v0, Ljlk;->a:Ljll;

    .line 3126
    const-wide/16 v14, 0x0

    iget-object v0, v12, Ljll;->b:Ljlw;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Ljlw;->e:Ljlu;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljlu;->b:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_19

    iget-object v14, v12, Ljll;->b:Ljlw;

    iget-object v14, v14, Ljlw;->e:Ljlu;

    iget-wide v14, v14, Ljlu;->b:J

    iget-object v0, v12, Ljll;->d:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_19

    .line 3127
    const/16 v12, -0x12

    .line 177
    :goto_12
    const/16 v14, 0x6a

    const-string/jumbo v15, "download invalid"

    invoke-virtual {v13, v12, v14, v15}, Ljlm$a;->a(IILjava/lang/String;)Ljlm$a;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 181
    if-eqz v6, :cond_16

    .line 183
    :try_start_19
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_11

    .line 188
    :cond_16
    :goto_13
    if-eqz v3, :cond_17

    .line 190
    :try_start_1a
    invoke-interface {v3}, Ljlp;->a()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_12

    .line 195
    :cond_17
    :goto_14
    if-eqz v2, :cond_18

    .line 197
    :try_start_1b
    invoke-interface {v2}, Ljlo;->f()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_13

    .line 200
    :cond_18
    :goto_15
    const/4 v12, 0x0

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/RandomAccessFile;
    .restart local v5    # "outputStream":Ljava/io/RandomAccessFile;
    goto/16 :goto_1

    .line 3128
    .end local v5    # "outputStream":Ljava/io/RandomAccessFile;
    .restart local v6    # "outputStream":Ljava/io/RandomAccessFile;
    :cond_19
    :try_start_1c
    iget-object v14, v12, Ljll;->b:Ljlw;

    iget-object v14, v14, Ljlw;->e:Ljlu;

    iget-object v14, v14, Ljlu;->c:Ljava/lang/String;

    iget-object v12, v12, Ljll;->d:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Ljmc;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    move-result v12

    if-nez v12, :cond_1a

    .line 3129
    const/16 v12, -0xf

    goto :goto_12

    .line 3131
    :cond_1a
    const/16 v12, -0xe

    goto :goto_12

    .line 184
    :catch_11
    move-exception v4

    .line 185
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v12, "Downloader"

    const-string/jumbo v13, "on exception"

    invoke-static {v12, v13, v4}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    .line 191
    .end local v4    # "e":Ljava/io/IOException;
    :catch_12
    move-exception v4

    .line 192
    .local v4, "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "Downloader"

    const-string/jumbo v13, "on exception"

    invoke-static {v12, v13, v4}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    .line 198
    .end local v4    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v4

    .line 199
    .restart local v4    # "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "Downloader"

    const-string/jumbo v13, "on exception"

    invoke-static {v12, v13, v4}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    .line 181
    .end local v4    # "e":Ljava/lang/Throwable;
    .end local v6    # "outputStream":Ljava/io/RandomAccessFile;
    .end local v7    # "saveResult":Z
    .end local v8    # "start":J
    .end local v10    # "start2":J
    .restart local v5    # "outputStream":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v12

    :goto_16
    if-eqz v5, :cond_1b

    .line 183
    :try_start_1d
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_14

    .line 188
    :cond_1b
    :goto_17
    if-eqz v3, :cond_1c

    .line 190
    :try_start_1e
    invoke-interface {v3}, Ljlp;->a()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_15

    .line 195
    :cond_1c
    :goto_18
    if-eqz v2, :cond_1d

    .line 197
    :try_start_1f
    invoke-interface {v2}, Ljlo;->f()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_16

    .line 200
    :cond_1d
    :goto_19
    throw v12

    .line 184
    :catch_14
    move-exception v4

    .line 185
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v13, "Downloader"

    const-string/jumbo v14, "on exception"

    invoke-static {v13, v14, v4}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17

    .line 191
    .end local v4    # "e":Ljava/io/IOException;
    :catch_15
    move-exception v4

    .line 192
    .local v4, "e":Ljava/lang/Throwable;
    const-string/jumbo v13, "Downloader"

    const-string/jumbo v14, "on exception"

    invoke-static {v13, v14, v4}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18

    .line 198
    .end local v4    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v4

    .line 199
    .restart local v4    # "e":Ljava/lang/Throwable;
    const-string/jumbo v13, "Downloader"

    const-string/jumbo v14, "on exception"

    invoke-static {v13, v14, v4}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19

    .line 181
    .end local v4    # "e":Ljava/lang/Throwable;
    .end local v5    # "outputStream":Ljava/io/RandomAccessFile;
    .restart local v6    # "outputStream":Ljava/io/RandomAccessFile;
    .restart local v8    # "start":J
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6    # "outputStream":Ljava/io/RandomAccessFile;
    .restart local v5    # "outputStream":Ljava/io/RandomAccessFile;
    goto :goto_16

    .line 151
    :catch_17
    move-exception v4

    goto/16 :goto_4
.end method

.method private a(Ljlp;Ljava/io/RandomAccessFile;)Z
    .locals 13
    .param p1, "input"    # Ljlp;
    .param p2, "out"    # Ljava/io/RandomAccessFile;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v12, -0xb

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 259
    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    .line 260
    :cond_0
    iget-object v5, p0, Ljlk;->b:Ljlm;

    iget-object v8, v5, Ljlm;->e:Ljlm$a;

    const/16 v9, -0x13

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "savedataParam:"

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_1

    move v5, v6

    :goto_0
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, "|"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p2, :cond_2

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v9, v7, v5}, Ljlm$a;->a(IILjava/lang/String;)Ljlm$a;

    .line 315
    :goto_2
    return v7

    :cond_1
    move v5, v7

    .line 260
    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1

    .line 265
    :cond_3
    iget-object v5, p0, Ljlk;->b:Ljlm;

    iget-object v8, p0, Ljlk;->a:Ljll;

    iget-object v8, v8, Ljll;->d:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    iput-wide v8, v5, Ljlm;->c:J

    .line 267
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 269
    .local v2, "fc":Ljava/nio/channels/FileChannel;
    :try_start_0
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5068
    sget v5, Ljln;->a:I

    .line 276
    new-array v0, v5, [B

    .line 5345
    .local v0, "buffer":[B
    :cond_4
    :goto_3
    const/4 v4, 0x0

    .line 281
    .local v4, "status":I
    if-lez v4, :cond_5

    .line 282
    iget-object v5, p0, Ljlk;->b:Ljlm;

    iget-object v5, v5, Ljlm;->e:Ljlm$a;

    const/16 v6, -0x14

    const-string/jumbo v8, ""

    invoke-virtual {v5, v6, v4, v8}, Ljlm$a;->a(IILjava/lang/String;)Ljlm$a;

    goto :goto_2

    .line 270
    .end local v0    # "buffer":[B
    .end local v4    # "status":I
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "Downloader"

    const-string/jumbo v8, "fc.position exception"

    invoke-static {v5, v8, v1}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    iget-object v5, p0, Ljlk;->b:Ljlm;

    iget-object v5, v5, Ljlm;->e:Ljlm$a;

    const/16 v8, 0x65

    invoke-static {v1}, Ljlk;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v12, v8, v9}, Ljlm$a;->a(IILjava/lang/String;)Ljlm$a;

    move-result-object v5

    iput-boolean v6, v5, Ljlm$a;->e:Z

    goto :goto_2

    .line 288
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v4    # "status":I
    :cond_5
    :try_start_1
    invoke-interface {p1, v0}, Ljlp;->a([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 294
    .local v3, "readCount":I
    const/4 v5, -0x1

    if-eq v5, v3, :cond_6

    .line 297
    iget-object v5, p0, Ljlk;->b:Ljlm;

    iput-boolean v6, v5, Ljlm;->d:Z

    .line 302
    const/4 v5, 0x0

    :try_start_2
    invoke-static {v0, v5, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 310
    iget-object v5, p0, Ljlk;->b:Ljlm;

    iget-wide v8, v5, Ljlm;->c:J

    int-to-long v10, v3

    add-long/2addr v8, v10

    iput-wide v8, v5, Ljlm;->c:J

    .line 311
    iget-object v5, p0, Ljlk;->b:Ljlm;

    iget-object v5, v5, Ljlm;->f:Ljmd$a;

    iget-wide v8, v5, Ljmd$a;->j:J

    int-to-long v10, v3

    add-long/2addr v8, v10

    iput-wide v8, v5, Ljmd$a;->j:J

    .line 312
    iget-object v5, p0, Ljlk;->b:Ljlm;

    .line 6092
    iget-object v8, v5, Ljlm;->b:Ljlj;

    if-eqz v8, :cond_4

    .line 6093
    iget-object v8, v5, Ljlm;->b:Ljlj;

    iget-wide v10, v5, Ljlm;->c:J

    invoke-interface {v8, v10, v11}, Ljlj;->a(J)V

    goto :goto_3

    .line 289
    .end local v3    # "readCount":I
    :catch_1
    move-exception v1

    .line 290
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Downloader"

    const-string/jumbo v8, "input.read exception"

    invoke-static {v5, v8, v1}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    iget-object v5, p0, Ljlk;->b:Ljlm;

    iget-object v5, v5, Ljlm;->e:Ljlm$a;

    const/16 v8, -0xc

    const/16 v9, 0xc9

    invoke-static {v1}, Ljlk;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v8, v9, v10}, Ljlm$a;->a(IILjava/lang/String;)Ljlm$a;

    move-result-object v5

    iput-boolean v6, v5, Ljlm$a;->d:Z

    goto/16 :goto_2

    .line 303
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "readCount":I
    :catch_2
    move-exception v1

    .line 304
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "Downloader"

    const-string/jumbo v8, "fc.write exception"

    invoke-static {v5, v8, v1}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    iget-object v5, p0, Ljlk;->b:Ljlm;

    iget-object v5, v5, Ljlm;->e:Ljlm$a;

    const/16 v8, 0x66

    invoke-static {v1}, Ljlk;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v12, v8, v9}, Ljlm$a;->a(IILjava/lang/String;)Ljlm$a;

    move-result-object v5

    iput-boolean v6, v5, Ljlm$a;->e:Z

    goto/16 :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    move v7, v6

    .line 315
    goto/16 :goto_2
.end method

.method private b()Ljlo;
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 208
    iget-object v6, p0, Ljlk;->a:Ljll;

    iget-object v6, v6, Ljll;->b:Ljlw;

    iget-object v6, v6, Ljlw;->e:Ljlu;

    iget-object v6, p0, Ljlk;->a:Ljll;

    iget-object v6, v6, Ljll;->a:Ljln;

    .line 4030
    new-instance v0, Ljlq;

    invoke-direct {v0}, Ljlq;-><init>()V

    .line 209
    .local v0, "dlConnection":Ljlo;
    const-string/jumbo v6, "Downloader"

    const-string/jumbo v7, "use connction {}"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Ljlk;->a:Ljll;

    iget-object v10, v10, Ljll;->b:Ljlw;

    iget-object v10, v10, Ljlw;->e:Ljlu;

    iget-object v10, v10, Ljlu;->a:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljmb;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :try_start_0
    iget-object v6, p0, Ljlk;->a:Ljll;

    iget-object v6, v6, Ljll;->c:Ljava/net/URL;

    iget-object v7, p0, Ljlk;->a:Ljll;

    iget-object v7, v7, Ljll;->a:Ljln;

    invoke-interface {v0, v6, v7}, Ljlo;->a(Ljava/net/URL;Ljln;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    const-string/jumbo v6, "f-refer"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "download_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Ljlk;->a:Ljll;

    iget-object v8, v8, Ljll;->b:Ljlw;

    iget-object v8, v8, Ljlw;->f:Ljlv;

    iget-object v8, v8, Ljlv;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljlo;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v6, p0, Ljlk;->a:Ljll;

    .line 4085
    iget-object v7, v6, Ljll;->d:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4087
    iget-object v7, v6, Ljll;->d:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 4088
    const-wide/16 v8, 0x0

    iget-object v7, v6, Ljll;->b:Ljlw;

    iget-object v7, v7, Ljlw;->e:Ljlu;

    iget-wide v10, v7, Ljlu;->b:J

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    iget-object v7, v6, Ljll;->b:Ljlw;

    iget-object v7, v7, Ljlw;->e:Ljlu;

    iget-wide v8, v7, Ljlu;->b:J

    cmp-long v7, v2, v8

    if-gez v7, :cond_2

    .line 223
    .local v2, "previousFileSize":J
    :cond_0
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v6, v2

    if-eqz v6, :cond_4

    .line 224
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "bytes="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "rangeValue":Ljava/lang/String;
    const-string/jumbo v6, "Downloader"

    const-string/jumbo v7, "add request property range {}"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v6, v7, v8}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    const-string/jumbo v6, "Range"

    invoke-interface {v0, v6, v4}, Ljlo;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v6, p0, Ljlk;->b:Ljlm;

    iget-object v6, v6, Ljlm;->f:Ljmd$a;

    const/4 v7, 0x1

    iput-boolean v7, v6, Ljmd$a;->d:Z

    .line 233
    .end local v4    # "rangeValue":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljlo;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 242
    :try_start_2
    invoke-interface {v0}, Ljlo;->b()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    .line 249
    .local v5, "responseCode":I
    iget-object v10, p0, Ljlk;->a:Ljll;

    invoke-interface {v0}, Ljlo;->c()J

    move-result-wide v6

    .line 4103
    const/16 v8, 0xc8

    if-eq v8, v5, :cond_5

    const/16 v8, 0xce

    if-eq v8, v5, :cond_5

    .line 4104
    const/4 v6, 0x0

    .line 249
    :goto_2
    if-nez v6, :cond_1

    .line 250
    iget-object v6, p0, Ljlk;->b:Ljlm;

    iget-object v6, v6, Ljlm;->e:Ljlm$a;

    const/16 v7, -0xc

    invoke-interface {v0}, Ljlo;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v5, v8}, Ljlm$a;->a(IILjava/lang/String;)Ljlm$a;

    move-result-object v6

    const/4 v7, 0x1

    iput-boolean v7, v6, Ljlm$a;->c:Z

    .line 251
    const/4 v0, 0x0

    .line 254
    .end local v0    # "dlConnection":Ljlo;
    .end local v2    # "previousFileSize":J
    .end local v5    # "responseCode":I
    :cond_1
    :goto_3
    return-object v0

    .line 213
    .restart local v0    # "dlConnection":Ljlo;
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v6, "Downloader"

    const-string/jumbo v7, "conn.open exception"

    invoke-static {v6, v7, v1}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    iget-object v6, p0, Ljlk;->b:Ljlm;

    iget-object v6, v6, Ljlm;->e:Ljlm$a;

    const/16 v7, -0xc

    const/16 v8, 0xca

    invoke-interface {v0}, Ljlo;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Ljlm$a;->a(IILjava/lang/String;)Ljlm$a;

    move-result-object v6

    const/4 v7, 0x1

    iput-boolean v7, v6, Ljlm$a;->c:Z

    .line 216
    const/4 v0, 0x0

    goto :goto_3

    .line 4091
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    iget-object v6, v6, Ljll;->d:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 4094
    :cond_3
    const-wide/16 v2, 0x0

    goto/16 :goto_0

    .line 229
    .restart local v2    # "previousFileSize":J
    :cond_4
    iget-object v6, p0, Ljlk;->b:Ljlm;

    iget-object v6, v6, Ljlm;->f:Ljmd$a;

    const/4 v7, 0x0

    iput-boolean v7, v6, Ljmd$a;->d:Z

    goto :goto_1

    .line 234
    :catch_1
    move-exception v1

    .line 235
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "Downloader"

    const-string/jumbo v7, "conn.conn exception"

    invoke-static {v6, v7, v1}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    iget-object v6, p0, Ljlk;->b:Ljlm;

    iget-object v6, v6, Ljlm;->e:Ljlm$a;

    const/16 v7, -0xc

    const/16 v8, 0xcb

    invoke-interface {v0}, Ljlo;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Ljlm$a;->a(IILjava/lang/String;)Ljlm$a;

    move-result-object v6

    const/4 v7, 0x1

    iput-boolean v7, v6, Ljlm$a;->c:Z

    .line 237
    const/4 v0, 0x0

    goto :goto_3

    .line 243
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "Downloader"

    const-string/jumbo v7, "conn.getstatuscode exception"

    invoke-static {v6, v7, v1}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    iget-object v6, p0, Ljlk;->b:Ljlm;

    iget-object v6, v6, Ljlm;->e:Ljlm$a;

    const/16 v7, -0xc

    const/16 v8, 0xcc

    invoke-interface {v0}, Ljlo;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Ljlm$a;->a(IILjava/lang/String;)Ljlm$a;

    move-result-object v6

    const/4 v7, 0x1

    iput-boolean v7, v6, Ljlm$a;->c:Z

    .line 246
    const/4 v0, 0x0

    goto :goto_3

    .line 4107
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "responseCode":I
    :cond_5
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_9

    .line 4109
    const-wide/16 v8, 0x0

    .line 4110
    const/16 v11, 0xce

    if-ne v11, v5, :cond_7

    .line 4111
    iget-object v8, v10, Ljll;->d:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 4115
    :cond_6
    :goto_4
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_8

    iget-object v8, v10, Ljll;->b:Ljlw;

    iget-object v8, v8, Ljlw;->e:Ljlu;

    iget-wide v8, v8, Ljlu;->b:J

    const-wide/16 v12, 0x0

    cmp-long v8, v8, v12

    if-eqz v8, :cond_8

    iget-object v8, v10, Ljll;->b:Ljlw;

    iget-object v8, v8, Ljlw;->e:Ljlu;

    iget-wide v8, v8, Ljlu;->b:J

    cmp-long v8, v6, v8

    if-eqz v8, :cond_8

    .line 4116
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 4112
    :cond_7
    const/16 v11, 0xc8

    if-eq v11, v5, :cond_6

    move-wide v6, v8

    goto :goto_4

    .line 4118
    :cond_8
    const-wide/16 v8, 0x0

    iget-object v11, v10, Ljll;->b:Ljlw;

    iget-object v11, v11, Ljlw;->e:Ljlu;

    iget-wide v12, v11, Ljlu;->b:J

    cmp-long v8, v8, v12

    if-nez v8, :cond_9

    .line 4119
    iget-object v8, v10, Ljll;->b:Ljlw;

    iget-object v8, v8, Ljlw;->e:Ljlu;

    iput-wide v6, v8, Ljlu;->b:J

    .line 4122
    :cond_9
    const/4 v6, 0x1

    goto/16 :goto_2
.end method


# virtual methods
.method public final a(Ljlw;Ljlj;)V
    .locals 10
    .param p1, "task"    # Ljlw;
    .param p2, "listener"    # Ljlj;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 66
    new-instance v4, Ljll;

    invoke-direct {v4, p1}, Ljll;-><init>(Ljlw;)V

    iput-object v4, p0, Ljlk;->a:Ljll;

    .line 67
    new-instance v4, Ljlm;

    invoke-direct {v4, p2}, Ljlm;-><init>(Ljlj;)V

    iput-object v4, p0, Ljlk;->b:Ljlm;

    .line 1345
    const/4 v1, 0x0

    .line 72
    .local v1, "status":I
    if-lez v1, :cond_0

    .line 73
    :try_start_0
    iget-object v2, p0, Ljlk;->b:Ljlm;

    iget-object v2, v2, Ljlm;->e:Ljlm$a;

    const/16 v3, -0x14

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v1, v4}, Ljlm$a;->a(IILjava/lang/String;)Ljlm$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object v2, p0, Ljlk;->b:Ljlm;

    iget-object v3, p0, Ljlk;->a:Ljll;

    invoke-virtual {v2, v3}, Ljlm;->a(Ljll;)V

    .line 114
    :goto_0
    return-void

    .line 79
    :cond_0
    :try_start_1
    iget-object v5, p0, Ljlk;->a:Ljll;

    .line 2042
    iget-object v4, v5, Ljll;->c:Ljava/net/URL;

    if-nez v4, :cond_3

    .line 2043
    new-instance v4, Ljava/net/URL;

    iget-object v6, v5, Ljll;->b:Ljlw;

    iget-object v6, v6, Ljlw;->e:Ljlu;

    iget-object v6, v6, Ljlu;->a:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v4, v5, Ljll;->c:Ljava/net/URL;

    .line 2044
    iget-object v4, v5, Ljll;->b:Ljlw;

    iget-object v4, v4, Ljlw;->e:Ljlu;

    iget-object v4, v4, Ljlu;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/io/File;

    iget-object v6, v5, Ljll;->c:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2045
    :goto_1
    new-instance v6, Ljava/io/File;

    iget-object v7, v5, Ljll;->b:Ljlw;

    iget-object v7, v7, Ljlw;->g:Ljava/lang/String;

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v5, Ljll;->e:Ljava/io/File;

    .line 2049
    new-instance v4, Ljava/io/File;

    iget-object v6, v5, Ljll;->b:Ljlw;

    iget-object v6, v6, Ljlw;->g:Ljava/lang/String;

    iget-object v7, v5, Ljll;->b:Ljlw;

    iget-object v7, v7, Ljlw;->e:Ljlu;

    iget-object v7, v7, Ljlu;->a:Ljava/lang/String;

    invoke-static {v7}, Ljmc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v5, Ljll;->d:Ljava/io/File;

    .line 2050
    iget-object v4, v5, Ljll;->d:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2051
    iget-object v4, v5, Ljll;->d:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 2055
    :cond_1
    iget-object v4, v5, Ljll;->d:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2056
    iget-object v4, v5, Ljll;->d:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/io/File;->setWritable(Z)Z

    .line 2060
    :cond_2
    iget-object v4, v5, Ljll;->b:Ljlw;

    iget-object v4, v4, Ljlw;->f:Ljlv;

    iget-boolean v4, v4, Ljlv;->i:Z

    if-nez v4, :cond_3

    iget-object v4, v5, Ljll;->b:Ljlw;

    iget-object v4, v4, Ljlw;->e:Ljlu;

    iget-object v4, v4, Ljlu;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2061
    iget-object v4, v5, Ljll;->e:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2062
    iget-object v4, v5, Ljll;->d:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :cond_3
    :try_start_2
    iget-object v4, p0, Ljlk;->a:Ljll;

    .line 3068
    iget-object v5, v4, Ljll;->e:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    const-wide/16 v6, 0x0

    iget-object v5, v4, Ljll;->b:Ljlw;

    iget-object v5, v5, Ljlw;->e:Ljlu;

    iget-wide v8, v5, Ljlu;->b:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    iget-object v5, v4, Ljll;->b:Ljlw;

    iget-object v5, v5, Ljlw;->e:Ljlu;

    iget-wide v6, v5, Ljlu;->b:J

    iget-object v5, v4, Ljll;->e:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_6

    :cond_4
    iget-object v5, v4, Ljll;->b:Ljlw;

    iget-object v5, v5, Ljlw;->e:Ljlu;

    iget-object v5, v5, Ljlu;->c:Ljava/lang/String;

    iget-object v4, v4, Ljll;->e:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Ljmc;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 87
    :goto_2
    if-eqz v2, :cond_7

    .line 88
    iget-object v2, p0, Ljlk;->b:Ljlm;

    const/16 v3, 0xb

    iput v3, v2, Ljlm;->a:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    iget-object v2, p0, Ljlk;->b:Ljlm;

    iget-object v3, p0, Ljlk;->a:Ljll;

    invoke-virtual {v2, v3}, Ljlm;->a(Ljll;)V

    goto/16 :goto_0

    .line 2044
    :cond_5
    :try_start_3
    iget-object v4, v5, Ljll;->b:Ljlw;

    iget-object v4, v4, Ljlw;->e:Ljlu;

    iget-object v4, v4, Ljlu;->d:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_4
    iget-object v2, p0, Ljlk;->b:Ljlm;

    iget-object v2, v2, Ljlm;->e:Ljlm$a;

    const/16 v3, -0xa

    const/4 v4, 0x0

    iget-object v5, p1, Ljlw;->e:Ljlu;

    iget-object v5, v5, Ljlu;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Ljlm$a;->a(IILjava/lang/String;)Ljlm$a;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljlm$a;->b:Z

    .line 82
    const-string/jumbo v2, "Downloader"

    const-string/jumbo v3, "prepare download exception"

    invoke-static {v2, v3, v0}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 112
    iget-object v2, p0, Ljlk;->b:Ljlm;

    iget-object v3, p0, Ljlk;->a:Ljll;

    invoke-virtual {v2, v3}, Ljlm;->a(Ljll;)V

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_6
    move v2, v3

    .line 3068
    goto :goto_2

    .line 93
    :cond_7
    :try_start_5
    iget-object v2, p0, Ljlk;->a:Ljll;

    invoke-virtual {v2}, Ljll;->a()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 94
    iget-object v2, p0, Ljlk;->a:Ljll;

    iget-object v2, v2, Ljll;->d:Ljava/io/File;

    iget-object v3, p0, Ljlk;->a:Ljll;

    iget-object v3, v3, Ljll;->e:Ljava/io/File;

    invoke-static {v2, v3}, Ljlz;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 95
    iget-object v2, p0, Ljlk;->b:Ljlm;

    const/16 v3, 0xb

    iput v3, v2, Ljlm;->a:I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 112
    :goto_3
    iget-object v2, p0, Ljlk;->b:Ljlm;

    iget-object v3, p0, Ljlk;->a:Ljll;

    invoke-virtual {v2, v3}, Ljlm;->a(Ljll;)V

    goto/16 :goto_0

    .line 97
    :cond_8
    :try_start_6
    iget-object v2, p0, Ljlk;->b:Ljlm;

    iget-object v3, v2, Ljlm;->e:Ljlm$a;

    const/16 v4, -0xb

    iget-object v2, p0, Ljlk;->a:Ljll;

    iget-object v2, v2, Ljll;->e:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0x68

    :goto_4
    const-string/jumbo v5, "rename tmp file error"

    invoke-virtual {v3, v4, v2, v5}, Ljlm$a;->a(IILjava/lang/String;)Ljlm$a;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljlm$a;->e:Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 106
    :catch_1
    move-exception v0

    .line 107
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_7
    const-string/jumbo v2, "Downloader"

    const-string/jumbo v3, "do download exception"

    invoke-static {v2, v3, v0}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    iget-object v2, p0, Ljlk;->b:Ljlm;

    iget-object v2, v2, Ljlm;->e:Ljlm$a;

    const/16 v3, -0x13

    const/16 v4, 0x12d

    invoke-static {v0}, Ljlk;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Ljlm$a;->a(IILjava/lang/String;)Ljlm$a;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 112
    iget-object v2, p0, Ljlk;->b:Ljlm;

    iget-object v3, p0, Ljlk;->a:Ljll;

    invoke-virtual {v2, v3}, Ljlm;->a(Ljll;)V

    goto/16 :goto_0

    .line 97
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_9
    const/16 v2, 0x69

    goto :goto_4

    .line 104
    :cond_a
    :try_start_8
    invoke-direct {p0}, Ljlk;->a()Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 112
    iget-object v2, p0, Ljlk;->b:Ljlm;

    iget-object v3, p0, Ljlk;->a:Ljll;

    invoke-virtual {v2, v3}, Ljlm;->a(Ljll;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Ljlk;->b:Ljlm;

    iget-object v4, p0, Ljlk;->a:Ljll;

    invoke-virtual {v3, v4}, Ljlm;->a(Ljll;)V

    throw v2
.end method
