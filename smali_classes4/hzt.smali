.class public final Lhzt;
.super Ljava/lang/Object;
.source "TraceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lhzv;
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "module"    # Ljava/lang/String;

    .prologue
    .line 46
    const-string/jumbo v1, "TRACE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/trace/Trace;

    .line 47
    .local v0, "trace":Lcom/alibaba/doraemon/trace/Trace;
    if-eqz v0, :cond_0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, p0, v1, v2}, Lcom/alibaba/doraemon/trace/Trace;->startTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 52
    :goto_0
    new-instance v1, Lhzv;

    invoke-direct {v1, v0}, Lhzv;-><init>(Lcom/alibaba/doraemon/trace/Trace;)V

    return-object v1

    .line 50
    :cond_0
    const-string/jumbo v1, "WKLog"

    const-string/jumbo v2, "Trace getArtifact is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;JJILjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "from"    # J
    .param p3, "to"    # J
    .param p5, "level"    # I
    .param p6, "category"    # Ljava/lang/String;
    .param p7, "bizType"    # Ljava/lang/String;

    .prologue
    .line 174
    new-instance v14, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v5, "trace"

    invoke-direct {v14, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    .local v14, "dir":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    :cond_0
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    .line 180
    :cond_1
    new-instance v19, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ".gz"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v14, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 181
    .local v19, "outFile":Ljava/io/File;
    const/16 v16, 0x0

    .line 182
    .local v16, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v18, 0x0

    .line 184
    .local v18, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 185
    .end local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v17, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 187
    .end local v18    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .local v4, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_2
    const-string/jumbo v3, "TRACE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/trace/Trace;

    .line 188
    .local v2, "trace":Lcom/alibaba/doraemon/trace/Trace;
    if-eqz v2, :cond_6

    .line 189
    new-instance v6, Ljava/util/Date;

    move-wide/from16 v0, p1

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 190
    .local v6, "startTime":Ljava/util/Date;
    new-instance v7, Ljava/util/Date;

    move-wide/from16 v0, p3

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 191
    .local v7, "endTime":Ljava/util/Date;
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v3, p6

    move/from16 v5, p5

    .line 192
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/doraemon/trace/Trace;->fillAll2OutputStream(Ljava/lang/String;Ljava/io/OutputStream;ILjava/util/Date;Ljava/util/Date;)V

    .line 193
    const-string/jumbo v3, "0"

    move/from16 v5, p5

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/doraemon/trace/Trace;->fillAll2OutputStream(Ljava/lang/String;Ljava/io/OutputStream;ILjava/util/Date;Ljava/util/Date;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    .end local v6    # "startTime":Ljava/util/Date;
    .end local v7    # "endTime":Ljava/util/Date;
    :goto_0
    if-eqz v4, :cond_2

    .line 208
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 209
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 215
    :cond_2
    :goto_1
    if-eqz v17, :cond_9

    .line 217
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v16, v17

    .line 223
    .end local v2    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    .end local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    return-object v19

    .line 195
    .end local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    .restart local v6    # "startTime":Ljava/util/Date;
    .restart local v7    # "endTime":Ljava/util/Date;
    .restart local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_4
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v8, v2

    move-object v9, v4

    move/from16 v11, p5

    move-object v12, v6

    move-object v13, v7

    invoke-interface/range {v8 .. v13}, Lcom/alibaba/doraemon/trace/Trace;->fill2OutputStream(Ljava/io/OutputStream;Ljava/lang/String;ILjava/util/Date;Ljava/util/Date;)V

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "0"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v8, v2

    move-object v9, v4

    move/from16 v11, p5

    move-object v12, v6

    move-object v13, v7

    invoke-interface/range {v8 .. v13}, Lcom/alibaba/doraemon/trace/Trace;->fill2OutputStream(Ljava/io/OutputStream;Ljava/lang/String;ILjava/util/Date;Ljava/util/Date;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 201
    .end local v2    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    .end local v6    # "startTime":Ljava/util/Date;
    .end local v7    # "endTime":Ljava/util/Date;
    :catch_0
    move-exception v15

    move-object/from16 v16, v17

    .line 202
    .end local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v15, "e":Ljava/io/IOException;
    .restart local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_6
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 204
    const/16 v19, 0x0

    .line 206
    if-eqz v4, :cond_5

    .line 208
    :try_start_7
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 209
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 215
    :cond_5
    :goto_4
    if-eqz v16, :cond_3

    .line 217
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 218
    :catch_1
    move-exception v15

    .line 219
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 199
    .end local v15    # "e":Ljava/io/IOException;
    .end local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    .restart local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_6
    :try_start_9
    const-string/jumbo v3, "WKLog"

    const-string/jumbo v5, "Trace getArtifact is null"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 206
    .end local v2    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :catchall_0
    move-exception v3

    move-object/from16 v16, v17

    .end local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_5
    if-eqz v4, :cond_7

    .line 208
    :try_start_a
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 209
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 215
    :cond_7
    :goto_6
    if-eqz v16, :cond_8

    .line 217
    :try_start_b
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 220
    :cond_8
    :goto_7
    throw v3

    .line 210
    .end local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    .restart local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v15

    .line 211
    .restart local v15    # "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 218
    .end local v15    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v15

    .line 219
    .restart local v15    # "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v16, v17

    .line 220
    .end local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 210
    .end local v2    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :catch_4
    move-exception v15

    .line 211
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 210
    .end local v15    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v15

    .line 211
    .restart local v15    # "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 218
    .end local v15    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v15

    .line 219
    .restart local v15    # "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 206
    .end local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v18    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catchall_1
    move-exception v3

    move-object/from16 v4, v18

    .end local v18    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    goto :goto_5

    .end local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v18    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catchall_2
    move-exception v3

    move-object/from16 v4, v18

    .end local v18    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_5

    .restart local v15    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v3

    goto :goto_5

    .line 201
    .end local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v18    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catch_7
    move-exception v15

    move-object/from16 v4, v18

    .end local v18    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    goto :goto_3

    .end local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v18    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catch_8
    move-exception v15

    move-object/from16 v4, v18

    .end local v18    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    .restart local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_9
    move-object/from16 v16, v17

    .end local v17    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

.method public static a(JJILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 12
    .param p0, "from"    # J
    .param p2, "to"    # J
    .param p4, "level"    # I
    .param p5, "category"    # Ljava/lang/String;
    .param p6, "bizType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p7, "callbackParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/auth/AuthService;->getContext()Landroid/content/Context;

    move-result-object v3

    move-wide v4, p0

    move-wide v6, p2

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-static/range {v3 .. v10}, Lhzt;->a(Landroid/content/Context;JJILjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 90
    .local v2, "traceFile":Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 91
    const-string/jumbo v3, "TraceUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "upload trace "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "base"

    invoke-static {v3, v4, v5}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lify;->a()Lify;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lhzt$1;

    move-object/from16 v0, p7

    invoke-direct {v5, v2, v0}, Lhzt$1;-><init>(Ljava/io/File;Ljava/util/Map;)V

    invoke-virtual {v3, v4, v5}, Lify;->a(Ljava/lang/String;Lifv;)V

    .line 133
    :cond_0
    return-void
.end method

.method public static a(Lhzv;)V
    .locals 0
    .param p0, "trace"    # Lhzv;

    .prologue
    .line 147
    if-eqz p0, :cond_0

    .line 148
    invoke-virtual {p0}, Lhzv;->a()V

    .line 149
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, "trace":Lhzv;
    :try_start_0
    invoke-static {p0, p2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 155
    invoke-virtual {v0, p1}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "mid"    # Ljava/lang/String;
    .param p3, "module"    # Ljava/lang/String;

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 64
    .local v0, "trace":Lhzv;
    :try_start_0
    invoke-static {p0, p3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p1, p2}, Lhzv;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    throw v1
.end method

.method public static a(Ljava/util/Date;ILjava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "level"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "bizType"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 79
    .local v8, "from":Ljava/util/Calendar;
    invoke-virtual {v8, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 80
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 82
    .local v9, "to":Ljava/util/Calendar;
    invoke-virtual {v9, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 83
    const/16 v0, 0xb

    const/16 v1, 0x18

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 85
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1136
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1137
    const-string/jumbo v5, "pushTime"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    const-string/jumbo v5, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    const-string/jumbo v5, "targetUid"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "@"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/wukong/auth/AuthService;->getDomain()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    const-string/jumbo v5, "startTime"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    const-string/jumbo v5, "endTime"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    const-string/jumbo v5, "bizType"

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, p2

    .line 1143
    invoke-static/range {v0 .. v7}, Lhzt;->a(JJILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 86
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, "trace":Lhzv;
    :try_start_0
    invoke-static {p0, p2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p1}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    throw v1
.end method
