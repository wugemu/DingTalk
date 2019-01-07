.class public final Lail;
.super Ljava/lang/Object;
.source "BodyUtils.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lail;->a:Ljava/util/Map;

    .line 108
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(JILjava/lang/String;Z)Landroid/net/Uri;
    .locals 10
    .param p0, "accountId"    # J
    .param p2, "type"    # I
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "isHtml"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 164
    invoke-static {p0, p1, p2}, Lail;->b(JI)Landroid/net/Uri;

    move-result-object v0

    .line 167
    .local v0, "baseUri":Landroid/net/Uri;
    if-eqz p4, :cond_1

    .line 168
    new-array v5, v7, [Ljava/lang/String;

    aput-object p3, v5, v8

    const-string/jumbo v6, "_html"

    aput-object v6, v5, v9

    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "fileName":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .local v3, "saveFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 176
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_0
    :goto_1
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 184
    .local v4, "uri":Landroid/net/Uri;
    return-object v4

    .line 170
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "saveFile":Ljava/io/File;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_1
    new-array v5, v7, [Ljava/lang/String;

    aput-object p3, v5, v8

    const-string/jumbo v6, "_text"

    aput-object v6, v5, v9

    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "fileName":Ljava/lang/String;
    goto :goto_0

    .line 177
    .restart local v3    # "saveFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "BodyUtils"

    new-array v6, v7, [Ljava/lang/String;

    const-string/jumbo v7, "create new file fail for file: "

    aput-object v7, v6, v8

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static a(JILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "accountId"    # J
    .param p2, "type"    # I
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "htmlContent"    # Ljava/lang/String;

    .prologue
    .line 195
    const-string/jumbo v0, "CMail"

    const-string/jumbo v1, "mail_body_save_file"

    const-string/jumbo v2, "file_size"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "totalTime"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "size"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lyn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 197
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v14, v0

    .line 198
    .local v14, "size":J
    :goto_0
    invoke-static {v14, v15}, Lais;->a(J)Ljava/lang/String;

    move-result-object v12

    .line 199
    .local v12, "range":Ljava/lang/String;
    new-instance v10, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 200
    .local v10, "dimensionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "file_size"

    invoke-virtual {v10, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v11, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v11, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 202
    .local v11, "measureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string/jumbo v0, "size"

    long-to-double v2, v14

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 205
    .local v6, "begin":J
    const/4 v5, 0x1

    move-wide/from16 v0, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static/range {v0 .. v5}, Lail;->a(JILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 207
    .local v13, "result":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v8, v0, v6

    .line 208
    .local v8, "cost":J
    const-string/jumbo v0, "totalTime"

    long-to-double v2, v8

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "mail_body_save_file"

    invoke-static {v0, v1, v2, v10, v11}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 211
    return-object v13

    .line 197
    .end local v6    # "begin":J
    .end local v8    # "cost":J
    .end local v10    # "dimensionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "measureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v12    # "range":Ljava/lang/String;
    .end local v13    # "result":Ljava/lang/String;
    .end local v14    # "size":J
    :cond_0
    const-wide/16 v14, 0x0

    goto :goto_0
.end method

.method private static a(JILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 24
    .param p0, "accountId"    # J
    .param p2, "type"    # I
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "isHtml"    # Z

    .prologue
    .line 248
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 249
    const-string/jumbo v19, "BodyUtils"

    const-string/jumbo v20, "saveBodyContent fail for serverId is empty!!!\'"

    invoke-static/range {v19 .. v20}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string/jumbo v19, "mail_body_save_file_fail"

    const/16 v20, 0x5

    const-string/jumbo v21, "save body file fail serverId is empty"

    invoke-static/range {v19 .. v21}, Lahc;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 252
    const/16 v19, 0x0

    .line 360
    :goto_0
    return-object v19

    .line 255
    :cond_0
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 256
    const-string/jumbo v19, "BodyUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "saveBodyContent fail for content is empty!!!\', serverId: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string/jumbo v19, "mail_body_save_file_fail"

    const/16 v20, 0x5

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "save body file fail serverId is empty, serverId: "

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object p3, v21, v22

    .line 258
    invoke-static/range {v21 .. v21}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 257
    invoke-static/range {v19 .. v21}, Lahc;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 259
    const/16 v19, 0x0

    goto :goto_0

    .line 262
    :cond_1
    move-wide/from16 v0, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lail;->a(JILjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v17

    .line 263
    .local v17, "saveUri":Landroid/net/Uri;
    if-nez v17, :cond_2

    .line 264
    const-string/jumbo v19, "BodyUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "saveBodyContent fail for saveUri is null\', serverId: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string/jumbo v19, "mail_body_save_file_fail"

    const/16 v20, 0x5

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "save body file for saveUri is null, serverId: "

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object p3, v21, v22

    .line 266
    invoke-static/range {v21 .. v21}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 265
    invoke-static/range {v19 .. v21}, Lahc;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 267
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 271
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 272
    .local v16, "saveFilePath":Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .local v15, "saveFile":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v16, v19, v20

    const/16 v20, 0x1

    const-string/jumbo v21, "_encrypt"

    aput-object v21, v19, v20

    invoke-static/range {v19 .. v19}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v10, "encryptFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 275
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 278
    :cond_3
    const/4 v14, 0x0

    .line 279
    .local v14, "os":Ljava/io/OutputStream;
    const/4 v11, 0x0

    .line 280
    .local v11, "in":Ljava/io/InputStream;
    const/4 v13, 0x1

    .line 282
    .local v13, "isSuccess":Z
    :try_start_0
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v14

    .line 283
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    .end local v11    # "in":Ljava/io/InputStream;
    .local v12, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v12, v14}, Lcom/alibaba/alimei/restfulapi/support/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 298
    if-eqz v14, :cond_4

    .line 300
    :try_start_2
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    .line 301
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c

    .line 307
    :cond_4
    :goto_1
    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 317
    :goto_2
    sget-boolean v19, Lzb;->b:Z

    if-eqz v19, :cond_5

    .line 318
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "origin file length: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 321
    :cond_5
    move-object/from16 v8, p3

    .line 2024
    .local v8, "encryKey":Ljava/lang/String;
    sget-object v9, Lzj;->a:Lzk;

    .line 323
    .local v9, "encrypt":Lzk;
    if-eqz v9, :cond_11

    .line 324
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v19

    const-string/jumbo v20, "mail_dynamic_key"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v9, v0, v1}, Lzk;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 325
    .local v6, "bodyKey":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_10

    .line 326
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v6, v20, v21

    const/16 v21, 0x1

    aput-object p3, v20, v21

    invoke-static/range {v20 .. v20}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v9, v0, v1}, Lzk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 340
    .end local v6    # "bodyKey":Ljava/lang/String;
    :goto_3
    :try_start_4
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Lzf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 347
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 348
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 352
    :cond_6
    sget-boolean v19, Lzb;->b:Z

    if-eqz v19, :cond_7

    .line 353
    sget-object v19, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "encrypt file length: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 356
    :cond_7
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 358
    invoke-virtual {v10, v15}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 360
    :cond_8
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0

    .line 285
    .end local v8    # "encryKey":Ljava/lang/String;
    .end local v9    # "encrypt":Lzk;
    .end local v12    # "in":Ljava/io/InputStream;
    .restart local v11    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v7

    .line 286
    .local v7, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    const-string/jumbo v19, "BodyUtils"

    const-string/jumbo v20, "Can\'t save body for file not found exception: "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    const-string/jumbo v19, "mail_body_save_file_fail"

    const/16 v20, 0x1

    const-string/jumbo v21, "save body file fail for file not found exception"

    .line 288
    invoke-static {v7}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v22

    .line 287
    invoke-static/range {v19 .. v22}, Lahc;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 289
    const/4 v13, 0x0

    .line 298
    if-eqz v14, :cond_9

    .line 300
    :try_start_6
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    .line 301
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    .line 305
    :cond_9
    :goto_5
    if-eqz v11, :cond_a

    .line 307
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 313
    :cond_a
    :goto_6
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    const/16 v19, 0x0

    goto/16 :goto_0

    .line 291
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    .line 292
    .local v7, "e":Ljava/io/IOException;
    :goto_7
    :try_start_8
    const-string/jumbo v19, "BodyUtils"

    const-string/jumbo v20, "Can\'t save body for io exception"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    const-string/jumbo v19, "mail_body_save_file_fail"

    const/16 v20, 0x4

    const-string/jumbo v21, "save body file fail for file io exception"

    .line 294
    invoke-static {v7}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v22

    .line 293
    invoke-static/range {v19 .. v22}, Lahc;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 295
    const/4 v13, 0x0

    .line 298
    if-eqz v14, :cond_b

    .line 300
    :try_start_9
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    .line 301
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 305
    :cond_b
    :goto_8
    if-eqz v11, :cond_c

    .line 307
    :try_start_a
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 313
    :cond_c
    :goto_9
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    const/16 v19, 0x0

    goto/16 :goto_0

    .line 298
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    :goto_a
    if-eqz v14, :cond_d

    .line 300
    :try_start_b
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    .line 301
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 305
    :cond_d
    :goto_b
    if-eqz v11, :cond_e

    .line 307
    :try_start_c
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 312
    :cond_e
    :goto_c
    if-nez v13, :cond_f

    .line 313
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    :cond_f
    throw v19

    .line 328
    .end local v11    # "in":Ljava/io/InputStream;
    .restart local v6    # "bodyKey":Ljava/lang/String;
    .restart local v8    # "encryKey":Ljava/lang/String;
    .restart local v9    # "encrypt":Lzk;
    .restart local v12    # "in":Ljava/io/InputStream;
    :cond_10
    const-string/jumbo v19, "BodyUtils"

    const-string/jumbo v20, "body key is empty, so use origin key for encrypt file"

    invoke-static/range {v19 .. v20}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string/jumbo v19, "mail_body_save_file_fail"

    const/16 v20, 0x5

    const-string/jumbo v21, "body key is empty, so use origin key for encrypt file "

    invoke-static/range {v19 .. v21}, Lahc;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 333
    .end local v6    # "bodyKey":Ljava/lang/String;
    :cond_11
    const-string/jumbo v19, "BodyUtils"

    const-string/jumbo v20, "use origin key for encrypt file"

    invoke-static/range {v19 .. v20}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string/jumbo v19, "mail_body_save_file_fail"

    const/16 v20, 0x5

    const-string/jumbo v21, "use origin key for encrypt file"

    invoke-static/range {v19 .. v21}, Lahc;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 341
    :catch_2
    move-exception v18

    .line 342
    .local v18, "tr":Ljava/lang/Throwable;
    :try_start_d
    const-string/jumbo v19, "BodyUtils"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "encrypt body fail for uriString: "

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v16, v20, v21

    invoke-static/range {v20 .. v20}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    const-string/jumbo v19, "mail_body_encrypt_fail"

    const/16 v20, 0x2

    const-string/jumbo v21, "encrypt body fail"

    .line 344
    invoke-static/range {v18 .. v18}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v22

    .line 343
    invoke-static/range {v19 .. v22}, Lahc;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 347
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_12

    .line 348
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    :cond_12
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 347
    .end local v18    # "tr":Ljava/lang/Throwable;
    :catchall_1
    move-exception v19

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_13

    .line 348
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    :cond_13
    throw v19

    .line 312
    .end local v8    # "encryKey":Ljava/lang/String;
    .end local v9    # "encrypt":Lzk;
    :catch_3
    move-exception v19

    goto/16 :goto_2

    .end local v12    # "in":Ljava/io/InputStream;
    .local v7, "e":Ljava/io/FileNotFoundException;
    .restart local v11    # "in":Ljava/io/InputStream;
    :catch_4
    move-exception v19

    goto/16 :goto_6

    .local v7, "e":Ljava/io/IOException;
    :catch_5
    move-exception v19

    goto/16 :goto_9

    .end local v7    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v20

    goto/16 :goto_c

    :catch_7
    move-exception v20

    goto/16 :goto_b

    .line 298
    .end local v11    # "in":Ljava/io/InputStream;
    .restart local v12    # "in":Ljava/io/InputStream;
    :catchall_2
    move-exception v19

    move-object v11, v12

    .end local v12    # "in":Ljava/io/InputStream;
    .restart local v11    # "in":Ljava/io/InputStream;
    goto/16 :goto_a

    .restart local v7    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v19

    goto/16 :goto_8

    .line 291
    .end local v7    # "e":Ljava/io/IOException;
    .end local v11    # "in":Ljava/io/InputStream;
    .restart local v12    # "in":Ljava/io/InputStream;
    :catch_9
    move-exception v7

    move-object v11, v12

    .end local v12    # "in":Ljava/io/InputStream;
    .restart local v11    # "in":Ljava/io/InputStream;
    goto/16 :goto_7

    .local v7, "e":Ljava/io/FileNotFoundException;
    :catch_a
    move-exception v19

    goto/16 :goto_5

    .line 285
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .end local v11    # "in":Ljava/io/InputStream;
    .restart local v12    # "in":Ljava/io/InputStream;
    :catch_b
    move-exception v7

    move-object v11, v12

    .end local v12    # "in":Ljava/io/InputStream;
    .restart local v11    # "in":Ljava/io/InputStream;
    goto/16 :goto_4

    .end local v11    # "in":Ljava/io/InputStream;
    .restart local v12    # "in":Ljava/io/InputStream;
    :catch_c
    move-exception v19

    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 33
    .param p0, "uriString"    # Ljava/lang/String;

    .prologue
    .line 369
    const-string/jumbo v27, "CMail"

    const-string/jumbo v28, "mail_body_read_file"

    const-string/jumbo v29, "file_size"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-string/jumbo v32, "totalTime"

    aput-object v32, v30, v31

    const/16 v31, 0x1

    const-string/jumbo v32, "size"

    aput-object v32, v30, v31

    invoke-static/range {v27 .. v30}, Lyn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 373
    .local v4, "begin":J
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 375
    const-string/jumbo v27, "BodyUtils"

    const-string/jumbo v28, "readBody fail for uriString is empty!!!"

    invoke-static/range {v27 .. v28}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string/jumbo v27, "mail_body_read_file_fail"

    const/16 v28, 0x5

    const-string/jumbo v29, "read body file fail uriString is empty"

    invoke-static/range {v27 .. v29}, Lahc;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 378
    const/16 v20, 0x0

    .line 486
    :goto_0
    return-object v20

    .line 2495
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_2

    .line 2499
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    .line 2500
    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v27

    .line 2501
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_2

    .line 2502
    const-string/jumbo v28, "_html"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 2503
    const-string/jumbo v28, "_html"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v28

    .line 2504
    if-lez v28, :cond_2

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_2

    .line 2505
    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 382
    .local v23, "serverId":Ljava/lang/String;
    :goto_1
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 383
    const-string/jumbo v27, "BodyUtils"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string/jumbo v30, "readBody fail for serverId is empty, uriString: "

    aput-object v30, v28, v29

    const/16 v29, 0x1

    aput-object p0, v28, v29

    invoke-static/range {v28 .. v28}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string/jumbo v27, "mail_body_read_file_fail"

    const/16 v28, 0x5

    const-string/jumbo v29, "read body file fail serverId is empty, uriString: "

    invoke-static/range {v27 .. v29}, Lahc;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 385
    const/16 v20, 0x0

    goto :goto_0

    .line 2507
    .end local v23    # "serverId":Ljava/lang/String;
    :cond_1
    const-string/jumbo v28, "_text"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 2508
    const-string/jumbo v28, "_text"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v28

    .line 2509
    if-lez v28, :cond_2

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_2

    .line 2510
    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    goto :goto_1

    .line 2515
    :cond_2
    const/16 v23, 0x0

    goto :goto_1

    .line 388
    .restart local v23    # "serverId":Ljava/lang/String;
    :cond_3
    new-instance v21, Ljava/io/File;

    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    .local v21, "saveFile":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v27

    if-nez v27, :cond_4

    .line 391
    const-string/jumbo v27, "BodyUtils"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string/jumbo v30, "save file not exists, uriString: "

    aput-object v30, v28, v29

    const/16 v29, 0x1

    aput-object p0, v28, v29

    invoke-static/range {v28 .. v28}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string/jumbo v27, "mail_body_read_file_fail"

    const/16 v28, 0x1

    const-string/jumbo v29, "read body file fail file not exist"

    invoke-static/range {v27 .. v29}, Lahc;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 393
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 396
    :cond_4
    new-instance v12, Ljava/io/File;

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    const-string/jumbo v29, "_decrypt"

    aput-object v29, v27, v28

    invoke-static/range {v27 .. v27}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    .local v12, "decryptFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_5

    .line 399
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 403
    :cond_5
    :try_start_0
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 411
    move-object/from16 v11, v23

    .line 3024
    .local v11, "decKey":Ljava/lang/String;
    sget-object v15, Lzj;->a:Lzk;

    .line 413
    .local v15, "encrypt":Lzk;
    if-eqz v15, :cond_9

    .line 414
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v27

    const-string/jumbo v28, "mail_dynamic_key"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v15, v0, v1}, Lzk;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 415
    .local v6, "bodyKey":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_8

    .line 416
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v27

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v6, v28, v29

    const/16 v29, 0x1

    aput-object v23, v28, v29

    invoke-static/range {v28 .. v28}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v15, v0, v1}, Lzk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 430
    .end local v6    # "bodyKey":Ljava/lang/String;
    :goto_2
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v11}, Lzf;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 439
    const/16 v20, 0x0

    .line 440
    .local v20, "result":Ljava/lang/String;
    const/16 v16, 0x0

    .line 441
    .local v16, "in":Ljava/io/InputStream;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_7

    .line 444
    :try_start_2
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 446
    .end local v16    # "in":Ljava/io/InputStream;
    .local v17, "in":Ljava/io/InputStream;
    :try_start_3
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v27, Ljava/io/InputStreamReader;

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v28, 0x2000

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v7, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 448
    .local v7, "br":Ljava/io/BufferedReader;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .local v22, "sb":Ljava/lang/StringBuilder;
    :goto_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, "data":Ljava/lang/String;
    if-eqz v10, :cond_a

    .line 450
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 453
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v10    # "data":Ljava/lang/String;
    .end local v22    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v14

    move-object/from16 v16, v17

    .line 454
    .end local v17    # "in":Ljava/io/InputStream;
    .local v14, "e":Ljava/io/FileNotFoundException;
    .restart local v16    # "in":Ljava/io/InputStream;
    :goto_4
    :try_start_4
    const-string/jumbo v27, "BodyUtils"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string/jumbo v30, "file not found for read body, uriString: "

    aput-object v30, v28, v29

    const/16 v29, 0x1

    aput-object p0, v28, v29

    invoke-static/range {v28 .. v28}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v14}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    const-string/jumbo v27, "mail_body_read_file_fail"

    const/16 v28, 0x1

    const-string/jumbo v29, "read body file fail for file not found exception: "

    .line 456
    invoke-static {v14}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v30

    .line 455
    invoke-static/range {v27 .. v30}, Lahc;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 462
    if-eqz v16, :cond_6

    .line 464
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 470
    :cond_6
    :goto_5
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 474
    .end local v14    # "e":Ljava/io/FileNotFoundException;
    :cond_7
    :goto_6
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_d

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 475
    .local v24, "size":J
    :goto_7
    invoke-static/range {v24 .. v25}, Lais;->a(J)Ljava/lang/String;

    move-result-object v19

    .line 476
    .local v19, "range":Ljava/lang/String;
    new-instance v13, Ljava/util/HashMap;

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-direct {v13, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 477
    .local v13, "dimensionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v27, "file_size"

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    new-instance v18, Ljava/util/HashMap;

    const/16 v27, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 479
    .local v18, "measureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string/jumbo v27, "size"

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v8, v28, v4

    .line 482
    .local v8, "cost":J
    const-string/jumbo v27, "totalTime"

    long-to-double v0, v8

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v27, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v28, "CMail"

    const-string/jumbo v29, "mail_body_read_file"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v13, v3}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 404
    .end local v8    # "cost":J
    .end local v11    # "decKey":Ljava/lang/String;
    .end local v13    # "dimensionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "encrypt":Lzk;
    .end local v16    # "in":Ljava/io/InputStream;
    .end local v18    # "measureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v19    # "range":Ljava/lang/String;
    .end local v20    # "result":Ljava/lang/String;
    .end local v24    # "size":J
    :catch_1
    move-exception v14

    .line 405
    .local v14, "e":Ljava/io/IOException;
    const-string/jumbo v27, "BodyUtils"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string/jumbo v30, "file not found for create new file fail, uriString: "

    aput-object v30, v28, v29

    const/16 v29, 0x1

    aput-object p0, v28, v29

    invoke-static/range {v28 .. v28}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v14}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    const-string/jumbo v27, "mail_body_read_file_fail"

    const/16 v28, 0x1

    const-string/jumbo v29, "read body file fail for create new file fail"

    .line 407
    invoke-static {v14}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v30

    .line 406
    invoke-static/range {v27 .. v30}, Lahc;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 408
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 418
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v6    # "bodyKey":Ljava/lang/String;
    .restart local v11    # "decKey":Ljava/lang/String;
    .restart local v15    # "encrypt":Lzk;
    :cond_8
    const-string/jumbo v27, "BodyUtils"

    const-string/jumbo v28, "body key is empty, so use origin key for decrypt file"

    invoke-static/range {v27 .. v28}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string/jumbo v27, "mail_body_decrypt_fail"

    const/16 v28, 0x3

    const-string/jumbo v29, "body key is empty, so use origin key for decrypt file"

    invoke-static/range {v27 .. v29}, Lahc;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 423
    .end local v6    # "bodyKey":Ljava/lang/String;
    :cond_9
    const-string/jumbo v27, "BodyUtils"

    const-string/jumbo v28, "encrypt is null, use origin key for decrypt file"

    invoke-static/range {v27 .. v28}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string/jumbo v27, "mail_body_decrypt_fail"

    const/16 v28, 0x3

    const-string/jumbo v29, "encrypt is null, so use origin key for decrypt file"

    invoke-static/range {v27 .. v29}, Lahc;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 431
    :catch_2
    move-exception v26

    .line 432
    .local v26, "tr":Ljava/lang/Throwable;
    const-string/jumbo v27, "BodyUtils"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string/jumbo v30, "decrypt body content fail for uriString: "

    aput-object v30, v28, v29

    const/16 v29, 0x1

    aput-object p0, v28, v29

    invoke-static/range {v28 .. v28}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    const-string/jumbo v27, "mail_body_decrypt_fail"

    const/16 v28, 0x3

    const-string/jumbo v29, "decrypt body fail"

    .line 434
    invoke-static/range {v26 .. v26}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v30

    .line 433
    invoke-static/range {v27 .. v30}, Lahc;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 436
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 452
    .end local v26    # "tr":Ljava/lang/Throwable;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "data":Ljava/lang/String;
    .restart local v17    # "in":Ljava/io/InputStream;
    .restart local v20    # "result":Ljava/lang/String;
    .restart local v22    # "sb":Ljava/lang/StringBuilder;
    :cond_a
    :try_start_6
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v20

    .line 464
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 470
    :goto_8
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-object/from16 v16, v17

    .line 471
    .end local v17    # "in":Ljava/io/InputStream;
    .restart local v16    # "in":Ljava/io/InputStream;
    goto/16 :goto_6

    .line 457
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v10    # "data":Ljava/lang/String;
    .end local v22    # "sb":Ljava/lang/StringBuilder;
    :catch_3
    move-exception v14

    .line 458
    .restart local v14    # "e":Ljava/io/IOException;
    :goto_9
    :try_start_8
    const-string/jumbo v27, "BodyUtils"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string/jumbo v30, "read from file exception, uriString: "

    aput-object v30, v28, v29

    const/16 v29, 0x1

    aput-object p0, v28, v29

    invoke-static/range {v28 .. v28}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v14}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    const-string/jumbo v27, "mail_body_read_file_fail"

    const/16 v28, 0x4

    const-string/jumbo v29, "read body file fail for io exception: "

    .line 460
    invoke-static {v14}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v30

    .line 459
    invoke-static/range {v27 .. v30}, Lahc;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 462
    if-eqz v16, :cond_b

    .line 464
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 470
    :cond_b
    :goto_a
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    goto/16 :goto_6

    .line 462
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v27

    :goto_b
    if-eqz v16, :cond_c

    .line 464
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 470
    :cond_c
    :goto_c
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    throw v27

    .line 474
    :cond_d
    const-wide/16 v24, 0x0

    goto/16 :goto_7

    .end local v16    # "in":Ljava/io/InputStream;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "data":Ljava/lang/String;
    .restart local v17    # "in":Ljava/io/InputStream;
    .restart local v22    # "sb":Ljava/lang/StringBuilder;
    :catch_4
    move-exception v27

    goto :goto_8

    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v10    # "data":Ljava/lang/String;
    .end local v17    # "in":Ljava/io/InputStream;
    .end local v22    # "sb":Ljava/lang/StringBuilder;
    .local v14, "e":Ljava/io/FileNotFoundException;
    .restart local v16    # "in":Ljava/io/InputStream;
    :catch_5
    move-exception v27

    goto/16 :goto_5

    .local v14, "e":Ljava/io/IOException;
    :catch_6
    move-exception v27

    goto :goto_a

    .end local v14    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v28

    goto :goto_c

    .line 462
    .end local v16    # "in":Ljava/io/InputStream;
    .restart local v17    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v27

    move-object/from16 v16, v17

    .end local v17    # "in":Ljava/io/InputStream;
    .restart local v16    # "in":Ljava/io/InputStream;
    goto :goto_b

    .line 457
    .end local v16    # "in":Ljava/io/InputStream;
    .restart local v17    # "in":Ljava/io/InputStream;
    :catch_8
    move-exception v14

    move-object/from16 v16, v17

    .end local v17    # "in":Ljava/io/InputStream;
    .restart local v16    # "in":Ljava/io/InputStream;
    goto :goto_9

    .line 453
    :catch_9
    move-exception v14

    goto/16 :goto_4
.end method

.method public static a(JI)V
    .locals 6
    .param p0, "accountId"    # J
    .param p2, "type"    # I

    .prologue
    .line 562
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-gtz v4, :cond_0

    .line 563
    const-string/jumbo v4, "BodyUtils"

    const-string/jumbo v5, "remove body files fail for account is less equal than 0"

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :goto_0
    return-void

    .line 567
    :cond_0
    invoke-static {p0, p1, p2}, Lail;->b(JI)Landroid/net/Uri;

    move-result-object v0

    .line 568
    .local v0, "attUri":Landroid/net/Uri;
    if-nez v0, :cond_1

    .line 569
    const-string/jumbo v4, "BodyUtils"

    const-string/jumbo v5, "remove body files fail for attUri is null"

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 573
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 574
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 575
    const-string/jumbo v4, "BodyUtils"

    const-string/jumbo v5, "remove body files fail for dir is file"

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 579
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 580
    .local v2, "children":[Ljava/io/File;
    if-eqz v2, :cond_4

    array-length v4, v2

    if-lez v4, :cond_4

    .line 581
    array-length v5, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v1, v2, v4

    .line 582
    .local v1, "bodyFile":Ljava/io/File;
    if-nez v1, :cond_3

    .line 581
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 585
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 588
    .end local v1    # "bodyFile":Ljava/io/File;
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private static b(JI)Landroid/net/Uri;
    .locals 8
    .param p0, "accountId"    # J
    .param p2, "type"    # I

    .prologue
    .line 116
    sget-object v5, Lail;->a:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 117
    .local v4, "uriTypeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/net/Uri;>;"
    if-nez v4, :cond_0

    .line 118
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v5}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 119
    sget-object v5, Lail;->a:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 122
    .local v1, "baseUri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 134
    .end local v1    # "baseUri":Landroid/net/Uri;
    .local v2, "baseUri":Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 126
    .end local v2    # "baseUri":Landroid/net/Uri;
    .restart local v1    # "baseUri":Landroid/net/Uri;
    :cond_1
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v3

    .line 127
    .local v3, "context":Landroid/content/Context;
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    const/4 v7, 0x1

    .line 1143
    packed-switch p2, :pswitch_data_0

    .line 1152
    const-string/jumbo v5, ".body"

    .line 127
    :goto_1
    aput-object v5, v6, v7

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 128
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 132
    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 133
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 134
    .end local v1    # "baseUri":Landroid/net/Uri;
    .restart local v2    # "baseUri":Landroid/net/Uri;
    goto :goto_0

    .line 1145
    .end local v0    # "baseDir":Ljava/io/File;
    .end local v2    # "baseUri":Landroid/net/Uri;
    .restart local v1    # "baseUri":Landroid/net/Uri;
    :pswitch_0
    const-string/jumbo v5, ".body"

    goto :goto_1

    .line 1147
    :pswitch_1
    const-string/jumbo v5, ".mail_cal_body"

    goto :goto_1

    .line 1149
    :pswitch_2
    const-string/jumbo v5, ".cal_body"

    goto :goto_1

    .line 1143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b(JILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "accountId"    # J
    .param p2, "type"    # I
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "textContent"    # Ljava/lang/String;

    .prologue
    .line 221
    const-string/jumbo v0, "CMail"

    const-string/jumbo v1, "mail_body_save_file"

    const-string/jumbo v2, "file_size"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "totalTime"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "size"

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lyn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 223
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v14, v0

    .line 224
    .local v14, "size":J
    :goto_0
    invoke-static {v14, v15}, Lais;->a(J)Ljava/lang/String;

    move-result-object v12

    .line 225
    .local v12, "range":Ljava/lang/String;
    new-instance v10, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 226
    .local v10, "dimensionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "file_size"

    invoke-virtual {v10, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    new-instance v11, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v11, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 228
    .local v11, "measureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string/jumbo v0, "size"

    long-to-double v2, v14

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 231
    .local v6, "begin":J
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-wide/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static/range {v0 .. v5}, Lail;->a(JILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 233
    .local v13, "result":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v8, v0, v6

    .line 234
    .local v8, "cost":J
    const-string/jumbo v0, "totalTime"

    long-to-double v2, v8

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "mail_body_save_file"

    invoke-static {v0, v1, v2, v10, v11}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 237
    return-object v13

    .line 223
    .end local v6    # "begin":J
    .end local v8    # "cost":J
    .end local v10    # "dimensionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "measureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v12    # "range":Ljava/lang/String;
    .end local v13    # "result":Ljava/lang/String;
    .end local v14    # "size":J
    :cond_0
    const-wide/16 v14, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 13
    .param p0, "uriStr"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 523
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 524
    const-string/jumbo v5, "BodyUtils"

    const-string/jumbo v6, "remove body fail for uriStr is empty!!!"

    invoke-static {v5, v6}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :goto_0
    return-void

    .line 528
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 529
    .local v4, "uri":Landroid/net/Uri;
    if-nez v4, :cond_1

    .line 530
    new-array v5, v11, [Ljava/lang/String;

    const-string/jumbo v6, "removeBodyFile fail for uri null, uriStr: "

    aput-object v6, v5, v9

    aput-object p0, v5, v10

    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "errMsg":Ljava/lang/String;
    const-string/jumbo v5, "BodyUtils"

    invoke-static {v5, v0}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string/jumbo v5, "remove.mail.body.file"

    const-string/jumbo v6, "2"

    invoke-static {v5, v6, v0, v12}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 536
    .end local v0    # "errMsg":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 537
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 538
    new-array v5, v11, [Ljava/lang/String;

    const-string/jumbo v6, "removeBodyFile fail for path null, uriStr: "

    aput-object v6, v5, v9

    aput-object p0, v5, v10

    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    .restart local v0    # "errMsg":Ljava/lang/String;
    const-string/jumbo v5, "BodyUtils"

    invoke-static {v5, v0}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string/jumbo v5, "remove.mail.body.file"

    const-string/jumbo v6, "2"

    invoke-static {v5, v6, v0, v12}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 544
    .end local v0    # "errMsg":Ljava/lang/String;
    :cond_2
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 545
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 546
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 550
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 551
    .local v3, "tr":Ljava/lang/Throwable;
    const-string/jumbo v5, "BodyUtils"

    invoke-static {v5, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    new-array v5, v11, [Ljava/lang/String;

    const-string/jumbo v6, "removeBodyFile fail for excption: "

    aput-object v6, v5, v9

    invoke-static {v3}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    .restart local v0    # "errMsg":Ljava/lang/String;
    const-string/jumbo v5, "remove.mail.body.file"

    const-string/jumbo v6, "2"

    invoke-static {v5, v6, v0, v12}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 548
    .end local v0    # "errMsg":Ljava/lang/String;
    .end local v3    # "tr":Ljava/lang/Throwable;
    .restart local v1    # "file":Ljava/io/File;
    :cond_3
    :try_start_1
    const-string/jumbo v5, "BodyUtils"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "removeBodyFile fail for file not exists, uriStr: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p0, v6, v7

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 4
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 597
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
