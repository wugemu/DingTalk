.class public Liit;
.super Ljava/lang/Object;
.source "MaEngineAPI.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MaEngineAPI"


# instance fields
.field protected mAvgGray:I

.field protected mCodeSize:F

.field protected recognizeType:Lcom/alipay/ma/EngineType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
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


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public doProcess([BLandroid/hardware/Camera;Landroid/graphics/Rect;Landroid/hardware/Camera$Size;IZI)[Lcom/alipay/ma/decode/DecodeResult;
    .locals 11
    .param p1, "mData"    # [B
    .param p2, "mCamera"    # Landroid/hardware/Camera;
    .param p3, "region"    # Landroid/graphics/Rect;
    .param p4, "previewSize"    # Landroid/hardware/Camera$Size;
    .param p5, "previewFormat"    # I
    .param p6, "binarized"    # Z
    .param p7, "binarizeMethod"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 60
    const-string/jumbo v1, "MaEngineAPI"

    const-string/jumbo v1, "doProcess"

    .line 2029
    sget-object v1, Liir;->a:Liir$a;

    .line 61
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 62
    :cond_0
    const/4 v8, 0x0

    .line 162
    :goto_0
    return-object v8

    .line 64
    :cond_1
    if-eqz p4, :cond_2

    if-gez p5, :cond_3

    .line 65
    :cond_2
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    .line 66
    .local v9, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p4

    .line 67
    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result p5

    .line 69
    .end local v9    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_3
    const/4 v0, 0x0

    .line 70
    .local v0, "yuvImage":Landroid/graphics/YuvImage;
    if-nez p6, :cond_4

    .line 71
    new-instance v0, Landroid/graphics/YuvImage;

    .end local v0    # "yuvImage":Landroid/graphics/YuvImage;
    iget v3, p4, Landroid/hardware/Camera$Size;->width:I

    iget v4, p4, Landroid/hardware/Camera$Size;->height:I

    const/4 v5, 0x0

    move-object v1, p1

    move/from16 v2, p5

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 73
    .restart local v0    # "yuvImage":Landroid/graphics/YuvImage;
    :cond_4
    const/4 v4, 0x0

    .line 74
    .local v4, "scanRect":Landroid/graphics/Rect;
    if-eqz p3, :cond_9

    .line 75
    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-gez v1, :cond_5

    .line 76
    const/4 v1, 0x0

    iput v1, p3, Landroid/graphics/Rect;->left:I

    .line 78
    :cond_5
    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-gez v1, :cond_6

    .line 79
    const/4 v1, 0x0

    iput v1, p3, Landroid/graphics/Rect;->top:I

    .line 81
    :cond_6
    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p4, Landroid/hardware/Camera$Size;->width:I

    if-le v1, v2, :cond_7

    .line 82
    iget v1, p4, Landroid/hardware/Camera$Size;->width:I

    iput v1, p3, Landroid/graphics/Rect;->right:I

    .line 84
    :cond_7
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p4, Landroid/hardware/Camera$Size;->height:I

    if-le v1, v2, :cond_8

    .line 85
    iget v1, p4, Landroid/hardware/Camera$Size;->height:I

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 87
    :cond_8
    move-object v4, p3

    .line 89
    :cond_9
    const/4 v8, 0x0

    .line 90
    .local v8, "maResults":[Lcom/alipay/ma/decode/DecodeResult;
    if-nez v4, :cond_b

    .line 91
    const/4 v8, 0x0

    .line 150
    :cond_a
    :goto_1
    if-nez v8, :cond_19

    .line 151
    invoke-static {}, Lcom/alipay/ma/decode/MaDecode;->getLastFrameAverageGray()I

    move-result v1

    iput v1, p0, Liit;->mAvgGray:I

    .line 152
    invoke-static {}, Lcom/alipay/ma/decode/MaDecode;->getMaProportion()F

    move-result v10

    .line 153
    .local v10, "qrAreaProportion":F
    if-eqz v4, :cond_18

    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-ltz v1, :cond_18

    .line 154
    mul-float v1, v10, v10

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Liit;->mCodeSize:F

    goto :goto_0

    .line 93
    .end local v10    # "qrAreaProportion":F
    :cond_b
    iget-object v1, p0, Liit;->recognizeType:Lcom/alipay/ma/EngineType;

    if-eqz v1, :cond_c

    iget-object v1, p0, Liit;->recognizeType:Lcom/alipay/ma/EngineType;

    sget-object v2, Lcom/alipay/ma/EngineType;->DEFAULT:Lcom/alipay/ma/EngineType;

    if-ne v1, v2, :cond_f

    .line 94
    :cond_c
    if-eqz p6, :cond_e

    .line 95
    iget v2, p4, Landroid/hardware/Camera$Size;->width:I

    iget v3, p4, Landroid/hardware/Camera$Size;->height:I

    const/4 v1, 0x1

    new-array v6, v1, [Lcom/alipay/ma/decode/DecodeType;

    const/4 v1, 0x0

    sget-object v5, Lcom/alipay/ma/decode/DecodeType;->DEFAULTCODE:Lcom/alipay/ma/decode/DecodeType;

    aput-object v5, v6, v1

    move-object v1, p1

    move/from16 v5, p7

    invoke-static/range {v1 .. v6}, Liis;->a([BIILandroid/graphics/Rect;I[Lcom/alipay/ma/decode/DecodeType;)[Lcom/alipay/ma/decode/DecodeResult;

    move-result-object v8

    .line 139
    :cond_d
    :goto_2
    if-eqz v8, :cond_a

    .line 140
    array-length v1, v8

    if-nez v1, :cond_17

    .line 141
    const/4 v8, 0x0

    goto :goto_1

    .line 99
    :cond_e
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alipay/ma/decode/DecodeType;

    const/4 v2, 0x0

    sget-object v3, Lcom/alipay/ma/decode/DecodeType;->DEFAULTCODE:Lcom/alipay/ma/decode/DecodeType;

    aput-object v3, v1, v2

    invoke-static {v0, v4, v1}, Liis;->a(Landroid/graphics/YuvImage;Landroid/graphics/Rect;[Lcom/alipay/ma/decode/DecodeType;)[Lcom/alipay/ma/decode/DecodeResult;

    move-result-object v8

    goto :goto_2

    .line 102
    :cond_f
    iget-object v1, p0, Liit;->recognizeType:Lcom/alipay/ma/EngineType;

    sget-object v2, Lcom/alipay/ma/EngineType;->ALL:Lcom/alipay/ma/EngineType;

    if-ne v1, v2, :cond_11

    .line 103
    if-eqz p6, :cond_10

    .line 104
    iget v2, p4, Landroid/hardware/Camera$Size;->width:I

    iget v3, p4, Landroid/hardware/Camera$Size;->height:I

    const/4 v1, 0x1

    new-array v6, v1, [Lcom/alipay/ma/decode/DecodeType;

    const/4 v1, 0x0

    sget-object v5, Lcom/alipay/ma/decode/DecodeType;->ALLCODE:Lcom/alipay/ma/decode/DecodeType;

    aput-object v5, v6, v1

    move-object v1, p1

    move/from16 v5, p7

    invoke-static/range {v1 .. v6}, Liis;->a([BIILandroid/graphics/Rect;I[Lcom/alipay/ma/decode/DecodeType;)[Lcom/alipay/ma/decode/DecodeResult;

    move-result-object v8

    goto :goto_2

    .line 108
    :cond_10
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alipay/ma/decode/DecodeType;

    const/4 v2, 0x0

    sget-object v3, Lcom/alipay/ma/decode/DecodeType;->ALLCODE:Lcom/alipay/ma/decode/DecodeType;

    aput-object v3, v1, v2

    invoke-static {v0, v4, v1}, Liis;->a(Landroid/graphics/YuvImage;Landroid/graphics/Rect;[Lcom/alipay/ma/decode/DecodeType;)[Lcom/alipay/ma/decode/DecodeResult;

    move-result-object v8

    goto :goto_2

    .line 111
    :cond_11
    iget-object v1, p0, Liit;->recognizeType:Lcom/alipay/ma/EngineType;

    sget-object v2, Lcom/alipay/ma/EngineType;->QRCODE:Lcom/alipay/ma/EngineType;

    if-ne v1, v2, :cond_13

    .line 112
    if-eqz p6, :cond_12

    .line 113
    iget v2, p4, Landroid/hardware/Camera$Size;->width:I

    iget v3, p4, Landroid/hardware/Camera$Size;->height:I

    const/4 v1, 0x1

    new-array v6, v1, [Lcom/alipay/ma/decode/DecodeType;

    const/4 v1, 0x0

    sget-object v5, Lcom/alipay/ma/decode/DecodeType;->ALLQRCODE:Lcom/alipay/ma/decode/DecodeType;

    aput-object v5, v6, v1

    move-object v1, p1

    move/from16 v5, p7

    invoke-static/range {v1 .. v6}, Liis;->a([BIILandroid/graphics/Rect;I[Lcom/alipay/ma/decode/DecodeType;)[Lcom/alipay/ma/decode/DecodeResult;

    move-result-object v8

    goto :goto_2

    .line 117
    :cond_12
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alipay/ma/decode/DecodeType;

    const/4 v2, 0x0

    sget-object v3, Lcom/alipay/ma/decode/DecodeType;->ALLQRCODE:Lcom/alipay/ma/decode/DecodeType;

    aput-object v3, v1, v2

    invoke-static {v0, v4, v1}, Liis;->a(Landroid/graphics/YuvImage;Landroid/graphics/Rect;[Lcom/alipay/ma/decode/DecodeType;)[Lcom/alipay/ma/decode/DecodeResult;

    move-result-object v8

    goto :goto_2

    .line 120
    :cond_13
    iget-object v1, p0, Liit;->recognizeType:Lcom/alipay/ma/EngineType;

    sget-object v2, Lcom/alipay/ma/EngineType;->BAR:Lcom/alipay/ma/EngineType;

    if-ne v1, v2, :cond_15

    .line 121
    if-eqz p6, :cond_14

    .line 122
    iget v2, p4, Landroid/hardware/Camera$Size;->width:I

    iget v3, p4, Landroid/hardware/Camera$Size;->height:I

    const/4 v1, 0x1

    new-array v6, v1, [Lcom/alipay/ma/decode/DecodeType;

    const/4 v1, 0x0

    sget-object v5, Lcom/alipay/ma/decode/DecodeType;->ALLBARCODE:Lcom/alipay/ma/decode/DecodeType;

    aput-object v5, v6, v1

    move-object v1, p1

    move/from16 v5, p7

    invoke-static/range {v1 .. v6}, Liis;->a([BIILandroid/graphics/Rect;I[Lcom/alipay/ma/decode/DecodeType;)[Lcom/alipay/ma/decode/DecodeResult;

    move-result-object v8

    goto/16 :goto_2

    .line 126
    :cond_14
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alipay/ma/decode/DecodeType;

    const/4 v2, 0x0

    sget-object v3, Lcom/alipay/ma/decode/DecodeType;->ALLBARCODE:Lcom/alipay/ma/decode/DecodeType;

    aput-object v3, v1, v2

    invoke-static {v0, v4, v1}, Liis;->a(Landroid/graphics/YuvImage;Landroid/graphics/Rect;[Lcom/alipay/ma/decode/DecodeType;)[Lcom/alipay/ma/decode/DecodeResult;

    move-result-object v8

    goto/16 :goto_2

    .line 129
    :cond_15
    iget-object v1, p0, Liit;->recognizeType:Lcom/alipay/ma/EngineType;

    sget-object v2, Lcom/alipay/ma/EngineType;->LOTTERY:Lcom/alipay/ma/EngineType;

    if-ne v1, v2, :cond_d

    .line 130
    if-eqz p6, :cond_16

    .line 131
    iget v2, p4, Landroid/hardware/Camera$Size;->width:I

    iget v3, p4, Landroid/hardware/Camera$Size;->height:I

    const/4 v1, 0x1

    new-array v6, v1, [Lcom/alipay/ma/decode/DecodeType;

    const/4 v1, 0x0

    sget-object v5, Lcom/alipay/ma/decode/DecodeType;->ALLLOTTERYCODE:Lcom/alipay/ma/decode/DecodeType;

    aput-object v5, v6, v1

    move-object v1, p1

    move/from16 v5, p7

    invoke-static/range {v1 .. v6}, Liis;->a([BIILandroid/graphics/Rect;I[Lcom/alipay/ma/decode/DecodeType;)[Lcom/alipay/ma/decode/DecodeResult;

    move-result-object v8

    goto/16 :goto_2

    .line 135
    :cond_16
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alipay/ma/decode/DecodeType;

    const/4 v2, 0x0

    sget-object v3, Lcom/alipay/ma/decode/DecodeType;->ALLLOTTERYCODE:Lcom/alipay/ma/decode/DecodeType;

    aput-object v3, v1, v2

    invoke-static {v0, v4, v1}, Liis;->a(Landroid/graphics/YuvImage;Landroid/graphics/Rect;[Lcom/alipay/ma/decode/DecodeType;)[Lcom/alipay/ma/decode/DecodeResult;

    move-result-object v8

    goto/16 :goto_2

    .line 143
    :cond_17
    const-string/jumbo v1, "MaEngineAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "total get "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " codes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3029
    sget-object v1, Liir;->a:Liir$a;

    .line 144
    array-length v2, v8

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_a

    aget-object v7, v8, v1

    .line 145
    .local v7, "maResult":Lcom/alipay/ma/decode/DecodeResult;
    const-string/jumbo v3, "MaEngineAPI"

    invoke-virtual {v7}, Lcom/alipay/ma/decode/DecodeResult;->toString()Ljava/lang/String;

    .line 4029
    sget-object v3, Liir;->a:Liir$a;

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 156
    .end local v7    # "maResult":Lcom/alipay/ma/decode/DecodeResult;
    .restart local v10    # "qrAreaProportion":F
    :cond_18
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Liit;->mCodeSize:F

    goto/16 :goto_0

    .line 159
    .end local v10    # "qrAreaProportion":F
    :cond_19
    const/4 v1, -0x1

    iput v1, p0, Liit;->mAvgGray:I

    .line 160
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Liit;->mCodeSize:F

    goto/16 :goto_0
.end method

.method public getAvgGray()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Liit;->mAvgGray:I

    return v0
.end method

.method public getCodeSize()F
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Liit;->mCodeSize:F

    return v0
.end method

.method public init(Landroid/content/Context;Ljava/util/Map;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_1

    .line 34
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/ma/decode/MaDecode;->setReaderParams(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string/jumbo v3, "MaDecode"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "set config with "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1029
    sget-object v3, Liir;->a:Liir$a;

    goto :goto_0

    .line 42
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public setSubScanType(Lcom/alipay/ma/EngineType;)V
    .locals 0
    .param p1, "type"    # Lcom/alipay/ma/EngineType;

    .prologue
    .line 49
    iput-object p1, p0, Liit;->recognizeType:Lcom/alipay/ma/EngineType;

    .line 50
    return-void
.end method
