.class public Lcom/alipay/mobile/mascanengine/MaEngineService;
.super Lcom/alipay/mobile/bqcscanservice/b;
.source "MaEngineService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MaEngineServiceImpl"


# instance fields
.field public GRAY_CALLBACK_PACE:I

.field public PORTION_CALLBACK_PACE:I

.field protected callbackNum:I

.field protected codeSize:F

.field protected mEngineApi:Liit;

.field protected maCallback:Lcom/alipay/mobile/mascanengine/MaScanCallback;

.field protected recognizeType:Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/bqcscanservice/b;-><init>()V

    .line 26
    const/16 v0, 0x8

    iput v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->GRAY_CALLBACK_PACE:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->PORTION_CALLBACK_PACE:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->maCallback:Lcom/alipay/mobile/mascanengine/MaScanCallback;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static a(Lcom/alipay/mobile/mascanengine/MultiMaScanResult;Liit;)V
    .locals 4
    .param p0, "multiMaScanResult"    # Lcom/alipay/mobile/mascanengine/MultiMaScanResult;
    .param p1, "maEngineAPI"    # Liit;

    .prologue
    .line 177
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 178
    check-cast v0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    .line 179
    .local v0, "rsMaEngineAPI":Lcom/alipay/mobile/binarize/RSMaEngineAPI;
    iget-wide v2, v0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->rsInitCost:J

    iput-wide v2, p0, Lcom/alipay/mobile/mascanengine/MultiMaScanResult;->rsInitTime:J

    .line 180
    iget-boolean v1, v0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->rsBinarized:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/mascanengine/MultiMaScanResult;->rsBinarized:Z

    .line 181
    iget v1, v0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->rsBinarizedCount:I

    iput v1, p0, Lcom/alipay/mobile/mascanengine/MultiMaScanResult;->rsBinarizedCount:I

    .line 182
    iget v1, v0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->classicFrameCount:I

    iput v1, p0, Lcom/alipay/mobile/mascanengine/MultiMaScanResult;->classicFrameCount:I

    .line 183
    iget v1, v0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->rsFrameCount:I

    iget v2, v0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;->classicFrameCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alipay/mobile/mascanengine/MultiMaScanResult;->frameCount:I

    .line 185
    .end local v0    # "rsMaEngineAPI":Lcom/alipay/mobile/binarize/RSMaEngineAPI;
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->maCallback:Lcom/alipay/mobile/mascanengine/MaScanCallback;

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->mEngineApi:Liit;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->mEngineApi:Liit;

    invoke-virtual {v0}, Liit;->destroy()V

    .line 54
    :cond_0
    return-void
.end method

.method protected doProcess([BLandroid/hardware/Camera;Landroid/graphics/Rect;Landroid/hardware/Camera$Size;I)Lcom/alipay/mobile/mascanengine/MultiMaScanResult;
    .locals 14
    .param p1, "mData"    # [B
    .param p2, "mCamera"    # Landroid/hardware/Camera;
    .param p3, "region"    # Landroid/graphics/Rect;
    .param p4, "previewSize"    # Landroid/hardware/Camera$Size;
    .param p5, "previewFormat"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    const-string/jumbo v0, "MaEngineServiceImpl"

    const-string/jumbo v0, "doProcess"

    .line 1029
    sget-object v0, Liir;->a:Liir$a;

    .line 76
    iget v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->callbackNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->callbackNum:I

    .line 77
    const/4 v9, 0x0

    .line 78
    .local v9, "maResults":[Lcom/alipay/ma/decode/DecodeResult;
    iget-object v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->mEngineApi:Liit;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->mEngineApi:Liit;

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v7}, Liit;->doProcess([BLandroid/hardware/Camera;Landroid/graphics/Rect;Landroid/hardware/Camera$Size;IZI)[Lcom/alipay/ma/decode/DecodeResult;

    move-result-object v9

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->maCallback:Lcom/alipay/mobile/mascanengine/MaScanCallback;

    if-eqz v0, :cond_7

    if-nez v9, :cond_7

    iget v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->callbackNum:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_7

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->maCallback:Lcom/alipay/mobile/mascanengine/MaScanCallback;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->maCallback:Lcom/alipay/mobile/mascanengine/MaScanCallback;

    instance-of v0, v0, Lcom/alipay/mobile/mascanengine/IOnMaSDKDecodeInfo;

    if-eqz v0, :cond_6

    .line 85
    const/4 v8, -0x1

    .line 86
    .local v8, "avgGray":I
    iget-object v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->mEngineApi:Liit;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->mEngineApi:Liit;

    invoke-virtual {v0}, Liit;->getAvgGray()I

    move-result v8

    .line 89
    :cond_1
    if-ltz v8, :cond_2

    iget v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->callbackNum:I

    iget v1, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->GRAY_CALLBACK_PACE:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 90
    iget v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->callbackNum:I

    rem-int/lit16 v0, v0, 0x2710

    iput v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->callbackNum:I

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->maCallback:Lcom/alipay/mobile/mascanengine/MaScanCallback;

    check-cast v0, Lcom/alipay/mobile/mascanengine/IOnMaSDKDecodeInfo;

    invoke-interface {v0, v8}, Lcom/alipay/mobile/mascanengine/IOnMaSDKDecodeInfo;->onGetAvgGray(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_2
    :goto_0
    invoke-static {}, Lcom/alipay/ma/decode/MaDecode;->getMaProportion()F

    move-result v11

    .line 98
    .local v11, "qrAreaProportion":F
    if-eqz p3, :cond_3

    const/4 v0, 0x0

    cmpl-float v0, v11, v0

    if-ltz v0, :cond_3

    .line 99
    mul-float v0, v11, v11

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->codeSize:F

    .line 101
    :cond_3
    const-string/jumbo v0, "MaEngineServiceImpl"

    const-string/jumbo v0, "qrAreaProportion: %f, callbackNum: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->callbackNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 2029
    sget-object v0, Liir;->a:Liir$a;

    .line 102
    const/4 v0, 0x0

    cmpl-float v0, v11, v0

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->callbackNum:I

    iget v1, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->PORTION_CALLBACK_PACE:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_4

    .line 104
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->maCallback:Lcom/alipay/mobile/mascanengine/MaScanCallback;

    check-cast v0, Lcom/alipay/mobile/mascanengine/IOnMaSDKDecodeInfo;

    invoke-interface {v0, v11}, Lcom/alipay/mobile/mascanengine/IOnMaSDKDecodeInfo;->onGetMaProportion(F)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    .end local v8    # "avgGray":I
    .end local v11    # "qrAreaProportion":F
    :cond_4
    :goto_1
    invoke-static {v9}, Lcom/alipay/mobile/mascanengine/impl/MaScanResultUtils;->fromMaResults([Lcom/alipay/ma/decode/DecodeResult;)Lcom/alipay/mobile/mascanengine/MultiMaScanResult;

    move-result-object v10

    .line 117
    .local v10, "multiMaScanResult":Lcom/alipay/mobile/mascanengine/MultiMaScanResult;
    if-eqz v10, :cond_5

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->mEngineApi:Liit;

    invoke-static {v10, v0}, Lcom/alipay/mobile/mascanengine/MaEngineService;->a(Lcom/alipay/mobile/mascanengine/MultiMaScanResult;Liit;)V

    .line 119
    invoke-static {}, Lcom/alipay/ma/decode/MaDecode;->getReaderParams()Ljava/lang/String;

    move-result-object v12

    .line 120
    .local v12, "readerParams":Ljava/lang/String;
    iput-object v12, v10, Lcom/alipay/mobile/mascanengine/MultiMaScanResult;->readerParams:Ljava/lang/String;

    .line 121
    const-string/jumbo v0, "MaEngineServiceImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "decode success "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5029
    sget-object v0, Liir;->a:Liir$a;

    .line 123
    .end local v12    # "readerParams":Ljava/lang/String;
    :cond_5
    return-object v10

    .line 93
    .end local v10    # "multiMaScanResult":Lcom/alipay/mobile/mascanengine/MultiMaScanResult;
    .restart local v8    # "avgGray":I
    :catch_0
    move-exception v13

    .line 94
    .local v13, "tt":Ljava/lang/Throwable;
    const-string/jumbo v0, "MaEngineServiceImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onGetAvgGray: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1047
    sget-object v0, Liir;->a:Liir$a;

    goto/16 :goto_0

    .line 105
    .end local v13    # "tt":Ljava/lang/Throwable;
    .restart local v11    # "qrAreaProportion":F
    :catch_1
    move-exception v13

    .line 106
    .restart local v13    # "tt":Ljava/lang/Throwable;
    const-string/jumbo v0, "MaEngineServiceImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onGetQRAreaProportion: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2047
    sget-object v0, Liir;->a:Liir$a;

    goto :goto_1

    .line 111
    .end local v8    # "avgGray":I
    .end local v11    # "qrAreaProportion":F
    .end local v13    # "tt":Ljava/lang/Throwable;
    :cond_6
    const-string/jumbo v0, "MaEngineServiceImpl"

    const-string/jumbo v0, "maCallback is released or not support IOnMaSDKDecodeInfo"

    .line 3029
    sget-object v0, Liir;->a:Liir$a;

    goto :goto_1

    .line 114
    :cond_7
    const-string/jumbo v0, "MaEngineServiceImpl"

    const-string/jumbo v0, " maCallback not ready"

    .line 4029
    sget-object v0, Liir;->a:Liir$a;

    goto :goto_1
.end method

.method protected doProcessBinary([BLandroid/hardware/Camera;Landroid/graphics/Rect;ILandroid/hardware/Camera$Size;II)Lcom/alipay/mobile/mascanengine/MultiMaScanResult;
    .locals 14
    .param p1, "bitMatrix"    # [B
    .param p2, "mCamera"    # Landroid/hardware/Camera;
    .param p3, "scanRect"    # Landroid/graphics/Rect;
    .param p4, "binarizeMethod"    # I
    .param p5, "previewSize"    # Landroid/hardware/Camera$Size;
    .param p6, "previewFormat"    # I
    .param p7, "avgRsGray"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    iget v1, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->callbackNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->callbackNum:I

    .line 130
    const/4 v9, 0x0

    .line 131
    .local v9, "maResults":[Lcom/alipay/ma/decode/DecodeResult;
    iget-object v1, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->mEngineApi:Liit;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->mEngineApi:Liit;

    const/4 v7, 0x1

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p4

    invoke-virtual/range {v1 .. v8}, Liit;->doProcess([BLandroid/hardware/Camera;Landroid/graphics/Rect;Landroid/hardware/Camera$Size;IZI)[Lcom/alipay/ma/decode/DecodeResult;

    move-result-object v9

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->maCallback:Lcom/alipay/mobile/mascanengine/MaScanCallback;

    if-eqz v1, :cond_6

    if-nez v9, :cond_6

    iget v1, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->callbackNum:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_6

    .line 136
    iget-object v1, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->maCallback:Lcom/alipay/mobile/mascanengine/MaScanCallback;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->maCallback:Lcom/alipay/mobile/mascanengine/MaScanCallback;

    instance-of v1, v1, Lcom/alipay/mobile/mascanengine/IOnMaSDKDecodeInfo;

    if-eqz v1, :cond_5

    .line 139
    if-ltz p7, :cond_1

    iget v1, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->callbackNum:I

    iget v2, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->GRAY_CALLBACK_PACE:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 140
    iget v1, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->callbackNum:I

    rem-int/lit16 v1, v1, 0x2710

    iput v1, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->callbackNum:I

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->maCallback:Lcom/alipay/mobile/mascanengine/MaScanCallback;

    check-cast v1, Lcom/alipay/mobile/mascanengine/IOnMaSDKDecodeInfo;

    move/from16 v0, p7

    invoke-interface {v1, v0}, Lcom/alipay/mobile/mascanengine/IOnMaSDKDecodeInfo;->onGetAvgGray(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alipay/ma/decode/MaDecode;->getMaProportion()F

    move-result v11

    .line 148
    .local v11, "qrAreaProportion":F
    const/4 v1, 0x0

    cmpl-float v1, v11, v1

    if-ltz v1, :cond_2

    .line 149
    mul-float v1, v11, v11

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->codeSize:F

    .line 151
    :cond_2
    const-string/jumbo v1, "MaEngineServiceImpl"

    const-string/jumbo v1, "qrAreaProportion: %f, callbackNum: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->callbackNum:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 6029
    sget-object v1, Liir;->a:Liir$a;

    .line 152
    const/4 v1, 0x0

    cmpl-float v1, v11, v1

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->callbackNum:I

    iget v2, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->PORTION_CALLBACK_PACE:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_3

    .line 154
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->maCallback:Lcom/alipay/mobile/mascanengine/MaScanCallback;

    check-cast v1, Lcom/alipay/mobile/mascanengine/IOnMaSDKDecodeInfo;

    invoke-interface {v1, v11}, Lcom/alipay/mobile/mascanengine/IOnMaSDKDecodeInfo;->onGetMaProportion(F)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    .end local v11    # "qrAreaProportion":F
    :cond_3
    :goto_1
    invoke-static {v9}, Lcom/alipay/mobile/mascanengine/impl/MaScanResultUtils;->fromMaResults([Lcom/alipay/ma/decode/DecodeResult;)Lcom/alipay/mobile/mascanengine/MultiMaScanResult;

    move-result-object v10

    .line 167
    .local v10, "multiMaScanResult":Lcom/alipay/mobile/mascanengine/MultiMaScanResult;
    if-eqz v10, :cond_4

    .line 168
    iget-object v1, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->mEngineApi:Liit;

    invoke-static {v10, v1}, Lcom/alipay/mobile/mascanengine/MaEngineService;->a(Lcom/alipay/mobile/mascanengine/MultiMaScanResult;Liit;)V

    .line 169
    invoke-static {}, Lcom/alipay/ma/decode/MaDecode;->getReaderParams()Ljava/lang/String;

    move-result-object v12

    .line 170
    .local v12, "readerParams":Ljava/lang/String;
    iput-object v12, v10, Lcom/alipay/mobile/mascanengine/MultiMaScanResult;->readerParams:Ljava/lang/String;

    .line 171
    const-string/jumbo v1, "MaEngineServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "decode success "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9029
    sget-object v1, Liir;->a:Liir$a;

    .line 173
    .end local v12    # "readerParams":Ljava/lang/String;
    :cond_4
    return-object v10

    .line 143
    .end local v10    # "multiMaScanResult":Lcom/alipay/mobile/mascanengine/MultiMaScanResult;
    :catch_0
    move-exception v13

    .line 144
    .local v13, "tt":Ljava/lang/Throwable;
    const-string/jumbo v1, "MaEngineServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onGetAvgGray: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5047
    sget-object v1, Liir;->a:Liir$a;

    goto/16 :goto_0

    .line 155
    .end local v13    # "tt":Ljava/lang/Throwable;
    .restart local v11    # "qrAreaProportion":F
    :catch_1
    move-exception v13

    .line 156
    .restart local v13    # "tt":Ljava/lang/Throwable;
    const-string/jumbo v1, "MaEngineServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onGetQRAreaProportion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 6047
    sget-object v1, Liir;->a:Liir$a;

    goto :goto_1

    .line 161
    .end local v11    # "qrAreaProportion":F
    .end local v13    # "tt":Ljava/lang/Throwable;
    :cond_5
    const-string/jumbo v1, "MaEngineServiceImpl"

    const-string/jumbo v1, "maCallback is released or not support IOnMaSDKDecodeInfo"

    .line 7029
    sget-object v1, Liir;->a:Liir$a;

    goto :goto_1

    .line 164
    :cond_6
    const-string/jumbo v1, "MaEngineServiceImpl"

    const-string/jumbo v1, " maCallback not ready"

    .line 8029
    sget-object v1, Liir;->a:Liir$a;

    goto :goto_1
.end method

.method public getCodeSize()F
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->codeSize:F

    return v0
.end method

.method public getEngineClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alipay/mobile/bqcscanservice/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    const-class v0, Lcom/alipay/mobile/mascanengine/MaEngineService;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/util/Map;)Z
    .locals 1
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
    .line 39
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->mEngineApi:Liit;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/alipay/mobile/binarize/RSMaEngineAPI;

    invoke-direct {v0}, Lcom/alipay/mobile/binarize/RSMaEngineAPI;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->mEngineApi:Liit;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->mEngineApi:Liit;

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->mEngineApi:Liit;

    invoke-virtual {v0, p1, p2}, Liit;->init(Landroid/content/Context;Ljava/util/Map;)Z

    .line 45
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isQrCodeEngine()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method public onProcessFinish(Lcom/alipay/mobile/bqcscanservice/c;)Z
    .locals 2
    .param p1, "bqcScanResult"    # Lcom/alipay/mobile/bqcscanservice/c;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->maCallback:Lcom/alipay/mobile/mascanengine/MaScanCallback;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/alipay/mobile/mascanengine/MultiMaScanResult;

    if-eqz v0, :cond_1

    .line 196
    const-string/jumbo v0, "MaEngineServiceImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "The macallback is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->maCallback:Lcom/alipay/mobile/mascanengine/MaScanCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10029
    sget-object v0, Liir;->a:Liir$a;

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->maCallback:Lcom/alipay/mobile/mascanengine/MaScanCallback;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->maCallback:Lcom/alipay/mobile/mascanengine/MaScanCallback;

    check-cast p1, Lcom/alipay/mobile/mascanengine/MultiMaScanResult;

    .end local p1    # "bqcScanResult":Lcom/alipay/mobile/bqcscanservice/c;
    invoke-interface {v0, p1}, Lcom/alipay/mobile/mascanengine/MaScanCallback;->onResultMa(Lcom/alipay/mobile/mascanengine/MultiMaScanResult;)V

    .line 200
    :cond_0
    const/4 v0, 0x1

    .line 202
    :goto_0
    return v0

    .restart local p1    # "bqcScanResult":Lcom/alipay/mobile/bqcscanservice/c;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public process([BLandroid/hardware/Camera;Landroid/graphics/Rect;Landroid/hardware/Camera$Size;I)Lcom/alipay/mobile/bqcscanservice/c;
    .locals 1
    .param p1, "mData"    # [B
    .param p2, "mCamera"    # Landroid/hardware/Camera;
    .param p3, "region"    # Landroid/graphics/Rect;
    .param p4, "previewSize"    # Landroid/hardware/Camera$Size;
    .param p5, "previewFormat"    # I

    .prologue
    .line 189
    invoke-virtual/range {p0 .. p5}, Lcom/alipay/mobile/mascanengine/MaEngineService;->doProcess([BLandroid/hardware/Camera;Landroid/graphics/Rect;Landroid/hardware/Camera$Size;I)Lcom/alipay/mobile/mascanengine/MultiMaScanResult;

    move-result-object v0

    .line 190
    .local v0, "multiMaScanResult":Lcom/alipay/mobile/mascanengine/MultiMaScanResult;
    return-object v0
.end method

.method public setResultCallback(Lcom/alipay/mobile/bqcscanservice/b$a;)V
    .locals 2
    .param p1, "callback"    # Lcom/alipay/mobile/bqcscanservice/b$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 208
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/alipay/mobile/mascanengine/MaScanCallback;

    if-eqz v0, :cond_0

    .line 209
    const-string/jumbo v0, "MaEngineServiceImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setResultCallback(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 11029
    sget-object v0, Liir;->a:Liir$a;

    .line 210
    check-cast p1, Lcom/alipay/mobile/mascanengine/MaScanCallback;

    .end local p1    # "callback":Lcom/alipay/mobile/bqcscanservice/b$a;
    iput-object p1, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->maCallback:Lcom/alipay/mobile/mascanengine/MaScanCallback;

    .line 212
    :cond_0
    return-void
.end method

.method public setSubScanType(Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;)V
    .locals 2
    .param p1, "type"    # Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->mEngineApi:Liit;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->mEngineApi:Liit;

    invoke-virtual {p1}, Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/alipay/ma/EngineType;->getType(I)Lcom/alipay/ma/EngineType;

    move-result-object v1

    invoke-virtual {v0, v1}, Liit;->setSubScanType(Lcom/alipay/ma/EngineType;)V

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->recognizeType:Lcom/alipay/mobile/bqcscanservice/BQCCameraParam$MaEngineType;

    .line 67
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/mascanengine/MaEngineService;->callbackNum:I

    .line 59
    return-void
.end method
