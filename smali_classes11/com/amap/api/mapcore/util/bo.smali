.class public Lcom/amap/api/mapcore/util/bo;
.super Ljava/lang/Object;
.source "FileCopy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/bo$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method private a(JJ)F
    .locals 3

    .prologue
    .line 102
    long-to-float v0, p1

    long-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;JJLcom/amap/api/mapcore/util/bo$a;)J
    .locals 19

    .prologue
    .line 21
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-nez v6, :cond_2

    .line 22
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v7, "sizeOfDirectory is the total Size,  must be a positive number"

    .line 23
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 24
    if-eqz p7, :cond_0

    .line 25
    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const/4 v8, -0x1

    move-object/from16 v0, p7

    invoke-interface {v0, v6, v7, v8}, Lcom/amap/api/mapcore/util/bo$a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 27
    :cond_0
    const-wide/16 v10, 0x0

    .line 97
    :cond_1
    :goto_0
    return-wide v10

    .line 30
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    .line 31
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    .line 34
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 35
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_3

    .line 36
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Cannot create dir "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :catch_0
    move-exception v6

    move-wide/from16 v10, p3

    .line 91
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    if-eqz p7, :cond_1

    .line 93
    const/4 v6, -0x1

    move-object/from16 v0, p7

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1, v6}, Lcom/amap/api/mapcore/util/bo$a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 41
    :cond_3
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->list()[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    .line 42
    if-eqz v17, :cond_9

    .line 43
    const/4 v6, 0x0

    move-wide/from16 v10, p3

    :goto_2
    :try_start_2
    move-object/from16 v0, v17

    array-length v7, v0

    if-ge v6, v7, :cond_1

    .line 44
    new-instance v8, Ljava/io/File;

    aget-object v7, v17, v6

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    aget-object v7, v17, v6

    move-object/from16 v0, p2

    invoke-direct {v9, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v7, p0

    move-wide/from16 v12, p5

    move-object/from16 v14, p7

    invoke-virtual/range {v7 .. v14}, Lcom/amap/api/mapcore/util/bo;->a(Ljava/io/File;Ljava/io/File;JJLcom/amap/api/mapcore/util/bo$a;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v10

    .line 43
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 54
    :cond_4
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 55
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    .line 56
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_5

    .line 57
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Cannot create dir "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 61
    :cond_5
    if-eqz p7, :cond_6

    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-gtz v6, :cond_6

    .line 62
    move-object/from16 v0, p7

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/amap/api/mapcore/util/bo$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_6
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 66
    new-instance v7, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 69
    const/16 v8, 0x400

    new-array v8, v8, [B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-wide/from16 v10, p3

    .line 71
    :goto_3
    :try_start_4
    invoke-virtual {v6, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_7

    .line 72
    const/4 v12, 0x0

    invoke-virtual {v7, v8, v12, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 73
    int-to-long v12, v9

    add-long p3, v10, v12

    .line 75
    if-eqz p7, :cond_8

    .line 76
    :try_start_5
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/mapcore/util/bo;->a(JJ)F

    move-result v9

    .line 78
    move-object/from16 v0, p7

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1, v9}, Lcom/amap/api/mapcore/util/bo$a;->a(Ljava/lang/String;Ljava/lang/String;F)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-wide/from16 v10, p3

    .line 80
    goto :goto_3

    .line 82
    :cond_7
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 83
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 84
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 86
    if-eqz p7, :cond_1

    const-wide/16 v6, 0x1

    sub-long v6, p5, v6

    cmp-long v6, v10, v6

    if-ltz v6, :cond_1

    .line 87
    move-object/from16 v0, p7

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/amap/api/mapcore/util/bo$a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 90
    :catch_1
    move-exception v6

    goto/16 :goto_1

    :cond_8
    move-wide/from16 v10, p3

    goto :goto_3

    :cond_9
    move-wide/from16 v10, p3

    goto/16 :goto_0
.end method
