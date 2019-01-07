.class public final Lixg;
.super Ljava/lang/Object;
.source "QRCodeEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 20
    .param p0, "contents"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "paintColor"    # Ljava/lang/Integer;
    .param p3, "backgroudColor"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 55
    const/high16 v3, -0x1000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 58
    :cond_0
    if-nez p3, :cond_1

    .line 59
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 63
    :cond_1
    move-object/from16 v2, p0

    .local v2, "contentsToEncode":Ljava/lang/String;
    if-nez p0, :cond_2

    .line 64
    const/4 v7, 0x0

    .line 97
    :goto_0
    return-object v7

    .line 66
    :cond_2
    new-instance v6, Ljava/util/EnumMap;

    const-class v3, Lcom/google/zxing/EncodeHintType;

    invoke-direct {v6, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 67
    .local v6, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    invoke-static {v2}, Lixg;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 68
    .local v15, "encoding":Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 69
    sget-object v3, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v6, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v3, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v4, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->M:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_3
    sget-object v3, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v1, Lixi;

    invoke-direct {v1}, Lixi;-><init>()V

    .line 77
    .local v1, "writer":Lixi;
    :try_start_0
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move/from16 v4, p1

    move/from16 v5, p1

    invoke-virtual/range {v1 .. v6}, Lixi;->a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lixl;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 1298
    .local v17, "result":Lixl;
    move-object/from16 v0, v17

    iget v10, v0, Lixl;->a:I

    .line 1305
    .local v10, "width":I
    move-object/from16 v0, v17

    iget v14, v0, Lixl;->b:I

    .line 85
    .local v14, "height":I
    mul-int v3, v10, v14

    new-array v8, v3, [I

    .line 86
    .local v8, "pixels":[I
    const/16 v19, 0x0

    .local v19, "y":I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v14, :cond_6

    .line 87
    mul-int v16, v19, v10

    .line 88
    .local v16, "offset":I
    const/16 v18, 0x0

    .local v18, "x":I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v10, :cond_5

    .line 89
    add-int v4, v16, v18

    invoke-virtual/range {v17 .. v19}, Lixl;->a(II)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v3, p2

    :goto_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v8, v4

    .line 88
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 81
    .end local v8    # "pixels":[I
    .end local v10    # "width":I
    .end local v14    # "height":I
    .end local v16    # "offset":I
    .end local v17    # "result":Lixl;
    .end local v18    # "x":I
    .end local v19    # "y":I
    :catch_0
    move-exception v3

    const/4 v7, 0x0

    goto :goto_0

    .restart local v8    # "pixels":[I
    .restart local v10    # "width":I
    .restart local v14    # "height":I
    .restart local v16    # "offset":I
    .restart local v17    # "result":Lixl;
    .restart local v18    # "x":I
    .restart local v19    # "y":I
    :cond_4
    move-object/from16 v3, p3

    .line 89
    goto :goto_3

    .line 86
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 94
    .end local v16    # "offset":I
    .end local v18    # "x":I
    :cond_6
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v14, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 96
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v10

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p0, "contents"    # Ljava/lang/CharSequence;

    .prologue
    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 108
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    .line 109
    const-string/jumbo v1, "UTF-8"

    .line 112
    :goto_1
    return-object v1

    .line 107
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
