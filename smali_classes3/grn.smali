.class public final Lgrn;
.super Ljava/lang/Object;
.source "PDFConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 28
    .param p1, "savePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "correctInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;>;"
    invoke-static {}, Lgrn;->a()Z

    move-result v22

    if-nez v22, :cond_0

    .line 39
    const/16 v22, 0x0

    .line 95
    :goto_0
    return v22

    .line 42
    :cond_0
    if-eqz p0, :cond_1

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 43
    :cond_1
    const/16 v22, 0x0

    goto :goto_0

    .line 45
    :cond_2
    new-instance v9, Landroid/graphics/pdf/PdfDocument;

    invoke-direct {v9}, Landroid/graphics/pdf/PdfDocument;-><init>()V

    .line 47
    .local v9, "document":Landroid/graphics/pdf/PdfDocument;
    new-instance v18, Landroid/graphics/Paint;

    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 48
    .local v18, "paint":Landroid/graphics/Paint;
    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 49
    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 51
    const/16 v16, 0x0

    .line 52
    .local v16, "pageNum":I
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v19

    .line 53
    .local v19, "size":I
    const/4 v13, 0x0

    .local v13, "i":I
    move/from16 v17, v16

    .end local v16    # "pageNum":I
    .local v17, "pageNum":I
    :goto_1
    move/from16 v0, v19

    if-ge v13, v0, :cond_4

    .line 54
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;

    .line 55
    .local v8, "docCorrectInfo":Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;
    if-eqz v8, :cond_5

    .line 59
    :try_start_0
    invoke-virtual {v8}, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->getCorrectDocPath()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Lgzt;->a(Ljava/lang/String;Lgzt$a;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 60
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-nez v4, :cond_3

    move/from16 v16, v17

    .line 53
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v17    # "pageNum":I
    .restart local v16    # "pageNum":I
    :goto_2
    add-int/lit8 v13, v13, 0x1

    move/from16 v17, v16

    .end local v16    # "pageNum":I
    .restart local v17    # "pageNum":I
    goto :goto_1

    .line 63
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 64
    .local v21, "width":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 66
    .local v12, "height":I
    new-instance v20, Landroid/graphics/Rect;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 68
    .local v20, "src":Landroid/graphics/Rect;
    const/high16 v22, 0x44870000    # 1080.0f

    int-to-float v0, v12

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v7, v0

    .line 69
    .local v7, "destHeight":I
    new-instance v6, Landroid/graphics/Rect;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x438

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v6, v0, v1, v2, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 71
    .local v6, "dest":Landroid/graphics/Rect;
    const-string/jumbo v22, "PDFConverter"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v23

    const-string/jumbo v24, "create pdf page num : %d ,height : %d"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v23 .. v25}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 1018
    const-string/jumbo v24, "im"

    invoke-static/range {v22 .. v24}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v22, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v23, 0x438

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "pageNum":I
    .restart local v16    # "pageNum":I
    :try_start_1
    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v17

    invoke-direct {v0, v1, v7, v2}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;-><init>(III)V

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->create()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v15

    .line 74
    .local v15, "pageInfo":Landroid/graphics/pdf/PdfDocument$PageInfo;
    invoke-virtual {v9, v15}, Landroid/graphics/pdf/PdfDocument;->startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v14

    .line 75
    .local v14, "page":Landroid/graphics/pdf/PdfDocument$Page;
    invoke-virtual {v14}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v5

    .line 76
    .local v5, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v5, v4, v0, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 77
    invoke-virtual {v9, v14}, Landroid/graphics/pdf/PdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_2

    .line 78
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    .end local v14    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    .end local v15    # "pageInfo":Landroid/graphics/pdf/PdfDocument$PageInfo;
    :catch_0
    move-exception v10

    .line 79
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "dest":Landroid/graphics/Rect;
    .end local v7    # "destHeight":I
    .end local v12    # "height":I
    .end local v20    # "src":Landroid/graphics/Rect;
    .end local v21    # "width":I
    .local v10, "e":Ljava/io/IOException;
    :goto_3
    const-string/jumbo v22, "PDFConverter"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "decode bitmap fail"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v23 .. v23}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2018
    const-string/jumbo v24, "im"

    invoke-static/range {v22 .. v24}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 80
    .end local v10    # "e":Ljava/io/IOException;
    .end local v16    # "pageNum":I
    .restart local v17    # "pageNum":I
    :catch_1
    move-exception v11

    move/from16 v16, v17

    .line 81
    .end local v17    # "pageNum":I
    .local v11, "error":Ljava/lang/OutOfMemoryError;
    .restart local v16    # "pageNum":I
    :goto_4
    const-string/jumbo v22, "PDFConverter"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "decode bitmap oom "

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-virtual {v11}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v23 .. v23}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3018
    const-string/jumbo v24, "im"

    invoke-static/range {v22 .. v24}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 87
    .end local v8    # "docCorrectInfo":Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;
    .end local v11    # "error":Ljava/lang/OutOfMemoryError;
    .end local v16    # "pageNum":I
    .restart local v17    # "pageNum":I
    :cond_4
    :try_start_2
    new-instance v22, Ljava/io/FileOutputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/graphics/pdf/PdfDocument;->writeTo(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 93
    :goto_5
    invoke-virtual {v9}, Landroid/graphics/pdf/PdfDocument;->close()V

    .line 95
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 88
    :catch_2
    move-exception v10

    .line 89
    .restart local v10    # "e":Ljava/io/IOException;
    const-string/jumbo v22, "PDFConverter"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "write pdf document to file fail "

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v23 .. v23}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 4018
    const-string/jumbo v24, "im"

    invoke-static/range {v22 .. v24}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 80
    .end local v10    # "e":Ljava/io/IOException;
    .end local v17    # "pageNum":I
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "dest":Landroid/graphics/Rect;
    .restart local v7    # "destHeight":I
    .restart local v8    # "docCorrectInfo":Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;
    .restart local v12    # "height":I
    .restart local v16    # "pageNum":I
    .restart local v20    # "src":Landroid/graphics/Rect;
    .restart local v21    # "width":I
    :catch_3
    move-exception v11

    goto :goto_4

    .line 78
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "dest":Landroid/graphics/Rect;
    .end local v7    # "destHeight":I
    .end local v12    # "height":I
    .end local v16    # "pageNum":I
    .end local v20    # "src":Landroid/graphics/Rect;
    .end local v21    # "width":I
    .restart local v17    # "pageNum":I
    :catch_4
    move-exception v10

    move/from16 v16, v17

    .end local v17    # "pageNum":I
    .restart local v16    # "pageNum":I
    goto/16 :goto_3

    .end local v16    # "pageNum":I
    .restart local v17    # "pageNum":I
    :cond_5
    move/from16 v16, v17

    .end local v17    # "pageNum":I
    .restart local v16    # "pageNum":I
    goto/16 :goto_2
.end method
