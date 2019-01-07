.class public final Liis;
.super Ljava/lang/Object;
.source "MaAnalyzeAPI.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static varargs a(Landroid/graphics/YuvImage;Landroid/graphics/Rect;[Lcom/alipay/ma/decode/DecodeType;)[Lcom/alipay/ma/decode/DecodeResult;
    .locals 10
    .param p0, "yuvImage"    # Landroid/graphics/YuvImage;
    .param p1, "region"    # Landroid/graphics/Rect;
    .param p2, "decodeTypes"    # [Lcom/alipay/ma/decode/DecodeType;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 51
    if-nez p0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-object v5

    .line 55
    :cond_1
    if-nez p1, :cond_2

    .line 56
    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v8

    .line 1101
    sub-int v9, v7, v8

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    and-int/lit8 v9, v9, -0x4

    .line 1102
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    and-int/lit8 v7, v7, -0x8

    .line 1103
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "region":Landroid/graphics/Rect;
    invoke-direct {p1, v9, v6, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 58
    .restart local p1    # "region":Landroid/graphics/Rect;
    :cond_2
    const/4 v3, 0x0

    .line 59
    .local v3, "scanMode":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-gtz v2, :cond_3

    .line 60
    aget-object v7, p2, v6

    invoke-virtual {v7}, Lcom/alipay/ma/decode/DecodeType;->getCodeType()I

    move-result v7

    or-int/lit8 v3, v7, 0x0

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 63
    :cond_3
    const-string/jumbo v7, ""

    invoke-static {p0, p1, v3, v7, v5}, Lcom/alipay/ma/decode/MaDecode;->yuvcodeDecode(Landroid/graphics/YuvImage;Landroid/graphics/Rect;ILjava/lang/String;[Ljava/lang/String;)[Lcom/alipay/ma/decode/DecodeResult;

    move-result-object v1

    .line 65
    .local v1, "decodeResults":[Lcom/alipay/ma/decode/DecodeResult;
    if-eqz v1, :cond_0

    .line 68
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v4, "validDecodeResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alipay/ma/decode/DecodeResult;>;"
    array-length v7, v1

    move v5, v6

    :goto_2
    if-ge v5, v7, :cond_5

    aget-object v0, v1, v5

    .line 70
    .local v0, "decodeResult":Lcom/alipay/ma/decode/DecodeResult;
    if-eqz v0, :cond_4

    iget-object v6, v0, Lcom/alipay/ma/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 73
    iget v6, v0, Lcom/alipay/ma/decode/DecodeResult;->type:I

    or-int/2addr v6, v3

    if-lez v6, :cond_4

    .line 76
    invoke-static {v0}, Liiu;->a(Lcom/alipay/ma/decode/DecodeResult;)Lcom/alipay/ma/common/result/ResultMaType;

    move-result-object v6

    iput-object v6, v0, Lcom/alipay/ma/decode/DecodeResult;->resultMaType:Lcom/alipay/ma/common/result/ResultMaType;

    .line 77
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 79
    .end local v0    # "decodeResult":Lcom/alipay/ma/decode/DecodeResult;
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/alipay/ma/decode/DecodeResult;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/alipay/ma/decode/DecodeResult;

    goto :goto_0
.end method

.method public static varargs a([BIILandroid/graphics/Rect;I[Lcom/alipay/ma/decode/DecodeType;)[Lcom/alipay/ma/decode/DecodeResult;
    .locals 13
    .param p0, "bitMatrix"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "region"    # Landroid/graphics/Rect;
    .param p4, "binarizeMethod"    # I
    .param p5, "maTypes"    # [Lcom/alipay/ma/decode/DecodeType;

    .prologue
    .line 19
    const/4 v5, 0x0

    .line 20
    .local v5, "scanMode":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-gtz v11, :cond_0

    .line 21
    const/4 v0, 0x0

    aget-object v0, p5, v0

    invoke-virtual {v0}, Lcom/alipay/ma/decode/DecodeType;->getCodeType()I

    move-result v0

    or-int/lit8 v5, v0, 0x0

    .line 20
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 23
    :cond_0
    const-string/jumbo v7, ""

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move-object/from16 v4, p3

    move/from16 v6, p4

    invoke-static/range {v0 .. v8}, Lcom/alipay/ma/decode/MaDecode;->codeDecodeBinarizedData([BIIILandroid/graphics/Rect;IILjava/lang/String;[Ljava/lang/String;)[Lcom/alipay/ma/decode/DecodeResult;

    move-result-object v10

    .line 25
    .local v10, "decodeResults":[Lcom/alipay/ma/decode/DecodeResult;
    if-nez v10, :cond_1

    .line 26
    const/4 v0, 0x0

    .line 39
    :goto_1
    return-object v0

    .line 28
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v12, "validDecodeResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alipay/ma/decode/DecodeResult;>;"
    array-length v1, v10

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_3

    aget-object v9, v10, v0

    .line 30
    .local v9, "decodeResult":Lcom/alipay/ma/decode/DecodeResult;
    if-eqz v9, :cond_2

    iget-object v2, v9, Lcom/alipay/ma/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 33
    iget v2, v9, Lcom/alipay/ma/decode/DecodeResult;->type:I

    or-int/2addr v2, v5

    if-lez v2, :cond_2

    .line 36
    invoke-static {v9}, Liiu;->a(Lcom/alipay/ma/decode/DecodeResult;)Lcom/alipay/ma/common/result/ResultMaType;

    move-result-object v2

    iput-object v2, v9, Lcom/alipay/ma/decode/DecodeResult;->resultMaType:Lcom/alipay/ma/common/result/ResultMaType;

    .line 37
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 39
    .end local v9    # "decodeResult":Lcom/alipay/ma/decode/DecodeResult;
    :cond_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alipay/ma/decode/DecodeResult;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/ma/decode/DecodeResult;

    goto :goto_1
.end method
