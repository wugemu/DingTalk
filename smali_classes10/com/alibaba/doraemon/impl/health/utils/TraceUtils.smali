.class public Lcom/alibaba/doraemon/impl/health/utils/TraceUtils;
.super Ljava/lang/Object;
.source "TraceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils;->gzipTraceFile(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static fill2OutputStream(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 7
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/util/Date;
    .param p3, "to"    # Ljava/util/Date;

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    const-string/jumbo v1, "TRACE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/trace/Trace;

    .line 74
    .local v0, "trace":Lcom/alibaba/doraemon/trace/Trace;
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 75
    .local v6, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Lcom/alibaba/doraemon/statistics/Statistics;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2}, Lcom/alibaba/doraemon/trace/Trace;->startTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Lcom/alibaba/doraemon/statistics/Statistics;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/trace/Trace;->fill2OutputStream(Ljava/io/OutputStream;Ljava/lang/String;ILjava/util/Date;Ljava/util/Date;)V

    .line 80
    .end local v0    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    .end local v6    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :cond_0
    return-void
.end method

.method private static gzipTraceFile(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "srcFile"    # Ljava/io/File;

    .prologue
    .line 155
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    const-string/jumbo v12, "trace"

    invoke-direct {v0, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 157
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_1

    .line 158
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 161
    :cond_1
    new-instance v9, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ".gz"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 162
    .local v9, "outFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 163
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 164
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 165
    .local v6, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    const/4 v10, 0x0

    .line 167
    .local v10, "tmpBytes":[B
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v5, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v7, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v7, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 172
    .end local v6    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .local v7, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    const/16 v11, 0x800

    :try_start_3
    invoke-static {v11}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v10

    .line 173
    :goto_0
    invoke-virtual {v3, v10}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .local v8, "len":I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_6

    .line 174
    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11, v8}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 176
    .end local v8    # "len":I
    :catch_0
    move-exception v1

    move-object v6, v7

    .end local v7    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v6    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 177
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    const/4 v9, 0x0

    .line 181
    if-eqz v6, :cond_2

    .line 183
    :try_start_5
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 184
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 190
    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    .line 192
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 198
    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    .line 200
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 206
    :cond_4
    :goto_4
    if-eqz v2, :cond_5

    .line 207
    invoke-static {v10}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    .line 212
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    :goto_5
    return-object v9

    .line 181
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v6    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "len":I
    :cond_6
    if-eqz v7, :cond_7

    .line 183
    :try_start_8
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 184
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 190
    :cond_7
    :goto_6
    if-eqz v5, :cond_8

    .line 192
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 198
    :cond_8
    :goto_7
    if-eqz v3, :cond_9

    .line 200
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 206
    :cond_9
    :goto_8
    if-eqz v3, :cond_e

    .line 207
    invoke-static {v10}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    move-object v6, v7

    .end local v7    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v6    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 185
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v6    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catch_1
    move-exception v1

    .line 186
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 193
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 194
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 201
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 202
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 185
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v7    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v8    # "len":I
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catch_4
    move-exception v1

    .line 186
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 193
    :catch_5
    move-exception v1

    .line 194
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 201
    :catch_6
    move-exception v1

    .line 202
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 181
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_9
    if-eqz v6, :cond_a

    .line 183
    :try_start_b
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 184
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 190
    :cond_a
    :goto_a
    if-eqz v4, :cond_b

    .line 192
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 198
    :cond_b
    :goto_b
    if-eqz v2, :cond_c

    .line 200
    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 206
    :cond_c
    :goto_c
    if-eqz v2, :cond_d

    .line 207
    invoke-static {v10}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    :cond_d
    throw v11

    .line 185
    :catch_7
    move-exception v1

    .line 186
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 193
    .end local v1    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v1

    .line 194
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 201
    .end local v1    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v1

    .line 202
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 181
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_9

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v11

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_9

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v6    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catchall_3
    move-exception v11

    move-object v6, v7

    .end local v7    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v6    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_9

    .line 176
    :catch_a
    move-exception v1

    goto/16 :goto_1

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_b
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_c
    move-exception v1

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v6    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v7    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "len":I
    :cond_e
    move-object v6, v7

    .end local v7    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v6    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_5
.end method

.method public static startTrace(Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;
    .locals 4
    .param p0, "module"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string/jumbo v2, "TRACE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/trace/Trace;

    .line 44
    .local v1, "trace":Lcom/alibaba/doraemon/trace/Trace;
    const-string/jumbo v2, "STATISTICS"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 45
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/alibaba/doraemon/statistics/Statistics;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, p0, v2, v3}, Lcom/alibaba/doraemon/trace/Trace;->startTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 49
    :cond_0
    return-object v1
.end method

.method public static trace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    const/4 v0, 0x0

    .line 57
    .local v0, "trace":Lcom/alibaba/doraemon/trace/Trace;
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils;->startTrace(Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_0
    if-eqz v0, :cond_1

    .line 63
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 69
    .end local v0    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :cond_1
    return-void

    .line 62
    .restart local v0    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 63
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    :cond_2
    throw v1
.end method

.method public static uploadFileAsync(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    .line 84
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 85
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    const-string/jumbo v1, "uploadFileAsync"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 86
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 87
    new-instance v1, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method
