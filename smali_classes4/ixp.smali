.class public final Lixp;
.super Ljava/lang/Object;
.source "QRCodeWriter.java"

# interfaces
.implements Lixj;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lixw;III)Lixl;
    .locals 19
    .param p0, "code"    # Lixw;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "quietZone"    # I

    .prologue
    .line 82
    .line 1060
    move-object/from16 v0, p0

    iget-object v2, v0, Lixw;->e:Lixs;

    .line 83
    .local v2, "input":Lixs;
    if-nez v2, :cond_0

    .line 84
    new-instance v17, Ljava/lang/IllegalStateException;

    invoke-direct/range {v17 .. v17}, Ljava/lang/IllegalStateException;-><init>()V

    throw v17

    .line 2049
    :cond_0
    iget v4, v2, Lixs;->b:I

    .line 3045
    .local v4, "inputWidth":I
    iget v3, v2, Lixs;->c:I

    .line 88
    .local v3, "inputHeight":I
    shl-int/lit8 v17, p3, 0x1

    add-int v15, v4, v17

    .line 89
    .local v15, "qrWidth":I
    shl-int/lit8 v17, p3, 0x1

    add-int v14, v3, v17

    .line 90
    .local v14, "qrHeight":I
    move/from16 v0, p1

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 91
    .local v11, "outputWidth":I
    move/from16 v0, p2

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 93
    .local v10, "outputHeight":I
    div-int v17, v11, v15

    div-int v18, v10, v14

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 101
    .local v8, "multiple":I
    mul-int v17, v4, v8

    sub-int v17, v11, v17

    div-int/lit8 v7, v17, 0x2

    .line 102
    .local v7, "leftPadding":I
    mul-int v17, v3, v8

    sub-int v17, v10, v17

    div-int/lit8 v16, v17, 0x2

    .line 104
    .local v16, "topPadding":I
    new-instance v9, Lixl;

    invoke-direct {v9, v11, v10}, Lixl;-><init>(II)V

    .line 106
    .local v9, "output":Lixl;
    const/4 v6, 0x0

    .local v6, "inputY":I
    move/from16 v13, v16

    .local v13, "outputY":I
    :goto_0
    if-ge v6, v3, :cond_3

    .line 108
    const/4 v5, 0x0

    .local v5, "inputX":I
    move v12, v7

    .local v12, "outputX":I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 109
    invoke-virtual {v2, v5, v6}, Lixs;->a(II)B

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 110
    invoke-virtual {v9, v12, v13, v8, v8}, Lixl;->a(IIII)V

    .line 108
    :cond_1
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v12, v8

    goto :goto_1

    .line 106
    :cond_2
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v13, v8

    goto :goto_0

    .line 115
    .end local v5    # "inputX":I
    .end local v12    # "outputX":I
    :cond_3
    return-object v9
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lixl;
    .locals 8
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "format"    # Lcom/google/zxing/BarcodeFormat;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lixl;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 44
    .local p5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 45
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Found empty contents"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 48
    :cond_0
    sget-object v5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v5, :cond_1

    .line 49
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Can only encode QR_CODE, but got "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 53
    :cond_1
    if-ltz p3, :cond_2

    if-gez p4, :cond_3

    .line 54
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Requested dimensions are too small: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x78

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 59
    :cond_3
    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 60
    .local v1, "errorCorrectionLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    const/4 v2, 0x4

    .line 61
    .local v2, "quietZone":I
    if-eqz p5, :cond_5

    .line 62
    sget-object v5, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    .line 63
    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 64
    .local v4, "requestedECLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    if-eqz v4, :cond_4

    .line 65
    move-object v1, v4

    .line 67
    :cond_4
    sget-object v5, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 68
    .local v3, "quietZoneInt":Ljava/lang/Integer;
    if-eqz v3, :cond_5

    .line 69
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 73
    .end local v3    # "quietZoneInt":Ljava/lang/Integer;
    .end local v4    # "requestedECLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    :cond_5
    invoke-static {p1, v1, p5}, Lixt;->a(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lixw;

    move-result-object v0

    .line 74
    .local v0, "code":Lixw;
    invoke-static {v0, p3, p4, v2}, Lixp;->a(Lixw;III)Lixl;

    move-result-object v5

    return-object v5
.end method
