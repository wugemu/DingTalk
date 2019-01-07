.class public Lcom/alipay/mobile/mascanengine/impl/MaPictureEngineServiceImpl;
.super Lcom/alipay/mobile/mascanengine/MaPictureEngineService;
.source "MaPictureEngineServiceImpl.java"


# static fields
.field public static final PICTURE_RECOG_TYPE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/alipay/ma/decode/DecodeType;->ONECODE:Lcom/alipay/ma/decode/DecodeType;

    .line 22
    invoke-virtual {v0}, Lcom/alipay/ma/decode/DecodeType;->getCodeType()I

    move-result v0

    sget-object v1, Lcom/alipay/ma/decode/DecodeType;->ALLQRCODE:Lcom/alipay/ma/decode/DecodeType;

    invoke-virtual {v1}, Lcom/alipay/ma/decode/DecodeType;->getCodeType()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/alipay/mobile/mascanengine/impl/MaPictureEngineServiceImpl;->PICTURE_RECOG_TYPE:I

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/mascanengine/MaPictureEngineService;-><init>()V

    .line 25
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
    .line 73
    return-void
.end method

.method public process(Landroid/graphics/Bitmap;)Lcom/alipay/mobile/mascanengine/MaScanResult;
    .locals 3
    .param p1, "img"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 42
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-object v1

    .line 45
    :cond_1
    sget v2, Lcom/alipay/mobile/mascanengine/impl/MaPictureEngineServiceImpl;->PICTURE_RECOG_TYPE:I

    invoke-static {p1, v2}, Lcom/alipay/ma/decode/MaDecode;->codeDecodePictureWithQr(Landroid/graphics/Bitmap;I)Lcom/alipay/ma/decode/DecodeResult;

    move-result-object v0

    .line 46
    .local v0, "result":Lcom/alipay/ma/decode/DecodeResult;
    if-eqz v0, :cond_0

    .line 49
    invoke-static {v0}, Liiu;->a(Lcom/alipay/ma/decode/DecodeResult;)Lcom/alipay/ma/common/result/ResultMaType;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/ma/decode/DecodeResult;->resultMaType:Lcom/alipay/ma/common/result/ResultMaType;

    .line 50
    invoke-static {v0}, Lcom/alipay/mobile/mascanengine/impl/MaScanResultUtils;->fromMaResult(Lcom/alipay/ma/decode/DecodeResult;)Lcom/alipay/mobile/mascanengine/MaScanResult;

    move-result-object v1

    goto :goto_0
.end method

.method public process(Ljava/lang/String;)Lcom/alipay/mobile/mascanengine/MaScanResult;
    .locals 4
    .param p1, "imgFilePath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 29
    if-nez p1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-object v1

    .line 32
    :cond_1
    sget v2, Lcom/alipay/mobile/mascanengine/impl/MaPictureEngineServiceImpl;->PICTURE_RECOG_TYPE:I

    .line 1083
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 33
    .local v0, "maResult":Lcom/alipay/ma/decode/DecodeResult;
    :goto_1
    if-eqz v0, :cond_0

    .line 36
    invoke-static {v0}, Liiu;->a(Lcom/alipay/ma/decode/DecodeResult;)Lcom/alipay/ma/common/result/ResultMaType;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/ma/decode/DecodeResult;->resultMaType:Lcom/alipay/ma/common/result/ResultMaType;

    .line 37
    invoke-static {v0}, Lcom/alipay/mobile/mascanengine/impl/MaScanResultUtils;->fromMaResult(Lcom/alipay/ma/decode/DecodeResult;)Lcom/alipay/mobile/mascanengine/MaScanResult;

    move-result-object v1

    goto :goto_0

    .line 1086
    .end local v0    # "maResult":Lcom/alipay/ma/decode/DecodeResult;
    :cond_2
    invoke-static {p1, v2}, Lcom/alipay/ma/decode/MaDecode;->codeDecodePictureWithQr(Ljava/lang/String;I)Lcom/alipay/ma/decode/DecodeResult;

    move-result-object v0

    .line 1087
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/alipay/ma/decode/DecodeResult;->strCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move-object v0, v1

    .line 1088
    goto :goto_1

    .line 1090
    :cond_4
    invoke-static {v0}, Liiu;->a(Lcom/alipay/ma/decode/DecodeResult;)Lcom/alipay/ma/common/result/ResultMaType;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/ma/decode/DecodeResult;->resultMaType:Lcom/alipay/ma/common/result/ResultMaType;

    goto :goto_1
.end method

.method public processARCode([BIII)Lcom/alipay/mobile/mascanengine/MaScanResult;
    .locals 8
    .param p1, "yuv"    # [B
    .param p2, "previewFormat"    # I
    .param p3, "imageWidth"    # I
    .param p4, "imageHeight"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 56
    if-eqz p1, :cond_0

    if-lez p3, :cond_0

    if-gtz p4, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-object v5

    .line 59
    :cond_1
    new-instance v0, Landroid/graphics/YuvImage;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 60
    .local v0, "yuvImage":Landroid/graphics/YuvImage;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alipay/ma/decode/DecodeType;

    sget-object v2, Lcom/alipay/ma/decode/DecodeType;->ARCODE:Lcom/alipay/ma/decode/DecodeType;

    aput-object v2, v1, v7

    invoke-static {v0, v5, v1}, Liis;->a(Landroid/graphics/YuvImage;Landroid/graphics/Rect;[Lcom/alipay/ma/decode/DecodeType;)[Lcom/alipay/ma/decode/DecodeResult;

    move-result-object v6

    .line 61
    .local v6, "maResults":[Lcom/alipay/ma/decode/DecodeResult;
    if-eqz v6, :cond_0

    array-length v1, v6

    if-lez v1, :cond_0

    .line 64
    aget-object v1, v6, v7

    if-eqz v1, :cond_0

    .line 67
    aget-object v1, v6, v7

    aget-object v2, v6, v7

    invoke-static {v2}, Liiu;->a(Lcom/alipay/ma/decode/DecodeResult;)Lcom/alipay/ma/common/result/ResultMaType;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/ma/decode/DecodeResult;->resultMaType:Lcom/alipay/ma/common/result/ResultMaType;

    .line 68
    aget-object v1, v6, v7

    invoke-static {v1}, Lcom/alipay/mobile/mascanengine/impl/MaScanResultUtils;->fromMaResult(Lcom/alipay/ma/decode/DecodeResult;)Lcom/alipay/mobile/mascanengine/MaScanResult;

    move-result-object v5

    goto :goto_0
.end method
