.class public Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;
.super Lcom/alipay/mobile/binarize/Binarizer;
.source "LocalAdaptiveBinarizer.java"


# instance fields
.field private a:Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;

.field private b:Landroid/renderscript/RenderScript;

.field private c:Landroid/renderscript/Allocation;

.field private d:Landroid/renderscript/Allocation;

.field private e:Landroid/renderscript/Allocation;

.field private f:Landroid/renderscript/Allocation;

.field private g:Landroid/renderscript/Allocation;

.field private h:[B

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alipay/mobile/binarize/Binarizer;-><init>()V

    .line 30
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->b:Landroid/renderscript/RenderScript;

    .line 31
    new-instance v0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;

    iget-object v1, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->b:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v0, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->a:Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;

    .line 32
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->c:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->c:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->c:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->destroy()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->e:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->e:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->e:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->destroy()V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->d:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->d:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->d:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->destroy()V

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->f:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->f:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->f:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->destroy()V

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->g:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_4

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->g:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->g:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->destroy()V

    .line 106
    :cond_4
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->a()V

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->a:Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->a:Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;

    invoke-virtual {v0}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->destroy()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->b:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->b:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 117
    :cond_1
    return-void
.end method

.method public getBinarizedData([B)Lcom/alipay/mobile/binarize/BinarizeResult;
    .locals 4
    .param p1, "data"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    iget-object v1, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->c:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p1}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 121
    iget-object v1, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->a:Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;

    iget-object v2, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->d:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->forEach_calculateBlock(Landroid/renderscript/Allocation;)V

    .line 122
    iget-object v1, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->b:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->finish()V

    .line 123
    iget-object v1, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->a:Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;

    iget-object v2, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->d:Landroid/renderscript/Allocation;

    iget-object v3, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->e:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->forEach_calculateThresholdForBlock(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 124
    iget-object v1, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->b:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->finish()V

    .line 125
    iget-object v1, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->a:Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;

    iget-object v2, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->f:Landroid/renderscript/Allocation;

    iget-object v3, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->g:Landroid/renderscript/Allocation;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->forEach_setBlack(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 126
    iget-object v1, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->g:Landroid/renderscript/Allocation;

    iget-object v2, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->h:[B

    invoke-virtual {v1, v2}, Landroid/renderscript/Allocation;->copyTo([B)V

    .line 127
    iget-object v1, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->b:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->finish()V

    .line 128
    new-instance v0, Lcom/alipay/mobile/binarize/BinarizeResult;

    invoke-direct {v0}, Lcom/alipay/mobile/binarize/BinarizeResult;-><init>()V

    .line 129
    .local v0, "binarizeResult":Lcom/alipay/mobile/binarize/BinarizeResult;
    iget-object v1, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->h:[B

    iput-object v1, v0, Lcom/alipay/mobile/binarize/BinarizeResult;->bitMatrixData:[B

    .line 130
    iget v1, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->i:I

    iput v1, v0, Lcom/alipay/mobile/binarize/BinarizeResult;->width:I

    .line 131
    iget v1, p0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->j:I

    iput v1, v0, Lcom/alipay/mobile/binarize/BinarizeResult;->height:I

    .line 132
    return-object v0
.end method

.method public initialize(II)V
    .locals 20
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 36
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->i:I

    move/from16 v0, p1

    if-ne v2, v0, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->j:I

    move/from16 v0, p2

    if-ne v2, v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->a()V

    .line 41
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->i:I

    .line 42
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->j:I

    .line 43
    move/from16 v0, p1

    int-to-float v2, v0

    const/high16 v3, 0x42000000    # 32.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v15, v2

    .line 44
    .local v15, "rowSize":I
    mul-int v2, v15, p2

    mul-int/lit8 v10, v2, 0x4

    .line 45
    .local v10, "bitMatrixLength":I
    new-array v2, v10, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->h:[B

    .line 47
    new-instance v2, Landroid/renderscript/Type$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->b:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->b:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    mul-int/lit8 v3, v15, 0x4

    .line 48
    invoke-virtual {v2, v3}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    move-result-object v16

    .line 49
    .local v16, "typeBuilder":Landroid/renderscript/Type$Builder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->b:Landroid/renderscript/RenderScript;

    invoke-virtual/range {v16 .. v16}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v3

    const/16 v4, 0x81

    invoke-static {v2, v3, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->f:Landroid/renderscript/Allocation;

    .line 51
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->b:Landroid/renderscript/RenderScript;

    invoke-virtual/range {v16 .. v16}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v3

    const/16 v4, 0x81

    invoke-static {v2, v3, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->g:Landroid/renderscript/Allocation;

    .line 55
    add-int/lit8 v2, p1, 0x7

    shr-int/lit8 v2, v2, 0x3

    div-int/lit8 v13, v2, 0x8

    .line 56
    .local v13, "maxBlockX":I
    add-int/lit8 v2, p2, 0x7

    shr-int/lit8 v2, v2, 0x3

    div-int/lit8 v14, v2, 0x8

    .line 58
    .local v14, "maxBlockY":I
    const/4 v12, 0x1

    .local v12, "logblockw":I
    :goto_1
    const/4 v2, 0x5

    if-ge v12, v2, :cond_1

    const/4 v2, 0x1

    shl-int/2addr v2, v12

    if-ge v2, v13, :cond_1

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 60
    :cond_1
    const/4 v11, 0x1

    .local v11, "logblockh":I
    :goto_2
    const/4 v2, 0x5

    if-ge v11, v2, :cond_2

    const/4 v2, 0x1

    shl-int/2addr v2, v11

    if-ge v2, v14, :cond_2

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 62
    :cond_2
    const/4 v2, 0x1

    shl-int v7, v2, v12

    .line 63
    .local v7, "blockWidth":I
    const/4 v2, 0x1

    shl-int v8, v2, v11

    .line 64
    .local v8, "blockHeight":I
    move/from16 v0, p1

    int-to-double v2, v0

    int-to-double v0, v7

    move-wide/from16 v18, v0

    div-double v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v5, v2

    .line 65
    .local v5, "blockMatrixWidth":I
    move/from16 v0, p2

    int-to-double v2, v0

    int-to-double v0, v8

    move-wide/from16 v18, v0

    div-double v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v6, v2

    .line 66
    .local v6, "blockMatrixHeight":I
    const-string/jumbo v2, "LocalAdaptiveBinarizer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "blockWidth:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",blockHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1029
    sget-object v2, Liir;->a:Liir$a;

    .line 68
    new-instance v2, Landroid/renderscript/Type$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->b:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->b:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    mul-int v3, p1, p2

    .line 69
    invoke-virtual {v2, v3}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v16

    .line 70
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->b:Landroid/renderscript/RenderScript;

    invoke-virtual/range {v16 .. v16}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v3

    const/16 v4, 0x81

    invoke-static {v2, v3, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->c:Landroid/renderscript/Allocation;

    .line 73
    new-instance v2, Landroid/renderscript/Type$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->b:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->b:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    mul-int v3, v5, v6

    invoke-virtual {v2, v3}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v16

    .line 74
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->b:Landroid/renderscript/RenderScript;

    invoke-virtual/range {v16 .. v16}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->d:Landroid/renderscript/Allocation;

    .line 76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->b:Landroid/renderscript/RenderScript;

    invoke-virtual/range {v16 .. v16}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->e:Landroid/renderscript/Allocation;

    .line 78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->a:Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->c:Landroid/renderscript/Allocation;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->set_gCurrentFrame(Landroid/renderscript/Allocation;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->a:Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->d:Landroid/renderscript/Allocation;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->set_gBlockAllocation(Landroid/renderscript/Allocation;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->a:Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->e:Landroid/renderscript/Allocation;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->set_gThresholdAllocation(Landroid/renderscript/Allocation;)V

    .line 81
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/binarize/LocalAdaptiveBinarizer;->a:Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;

    const/16 v9, 0x8

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->invoke_initLocalBinarizer(IIIIIII)V

    goto/16 :goto_0
.end method
