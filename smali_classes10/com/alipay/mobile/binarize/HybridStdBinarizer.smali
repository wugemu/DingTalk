.class public Lcom/alipay/mobile/binarize/HybridStdBinarizer;
.super Lcom/alipay/mobile/binarize/Binarizer;
.source "HybridStdBinarizer.java"


# instance fields
.field private a:Landroid/renderscript/RenderScript;

.field private b:Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;

.field private c:Landroid/renderscript/Allocation;

.field private d:Landroid/renderscript/Allocation;

.field private e:Landroid/renderscript/Allocation;

.field private f:Landroid/renderscript/Allocation;

.field private g:[B

.field private h:[B

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/binarize/Binarizer;-><init>()V

    .line 31
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->a:Landroid/renderscript/RenderScript;

    .line 32
    new-instance v0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;

    iget-object v1, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->a:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->b:Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;

    .line 33
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
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->f:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->f:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->f:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->destroy()V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->c:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->c:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->c:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->destroy()V

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->d:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->d:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->d:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->destroy()V

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->e:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->e:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->e:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->destroy()V

    .line 90
    :cond_3
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->a()V

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->b:Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->b:Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;

    invoke-virtual {v0}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->destroy()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->a:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->a:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 101
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
    .line 104
    iget-object v2, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->e:Landroid/renderscript/Allocation;

    invoke-virtual {v2, p1}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 105
    iget-object v2, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->b:Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;

    iget-object v3, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->c:Landroid/renderscript/Allocation;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->forEach_calAverage(Landroid/renderscript/Allocation;)V

    .line 106
    iget-object v2, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->a:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->finish()V

    .line 107
    iget-object v2, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->c:Landroid/renderscript/Allocation;

    iget-object v3, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->g:[B

    invoke-virtual {v2, v3}, Landroid/renderscript/Allocation;->copyTo([B)V

    .line 109
    iget-object v2, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->b:Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;

    iget-object v3, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->g:[B

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->reduce_produceAverage([B)Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;

    move-result-object v0

    .line 110
    .local v0, "avgSum":Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;
    iget-object v2, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->b:Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;

    invoke-virtual {v0}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->set_avgSum(I)V

    .line 111
    iget-object v2, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->a:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->finish()V

    .line 112
    iget-object v2, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->b:Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;

    iget-object v3, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->c:Landroid/renderscript/Allocation;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->forEach_setBlack(Landroid/renderscript/Allocation;)V

    .line 113
    iget-object v2, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->f:Landroid/renderscript/Allocation;

    iget-object v3, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->h:[B

    invoke-virtual {v2, v3}, Landroid/renderscript/Allocation;->copyTo([B)V

    .line 114
    iget-object v2, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->a:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript;->finish()V

    .line 115
    new-instance v1, Lcom/alipay/mobile/binarize/BinarizeResult;

    invoke-direct {v1}, Lcom/alipay/mobile/binarize/BinarizeResult;-><init>()V

    .line 116
    .local v1, "binarizeResult":Lcom/alipay/mobile/binarize/BinarizeResult;
    iget-object v2, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->h:[B

    iput-object v2, v1, Lcom/alipay/mobile/binarize/BinarizeResult;->bitMatrixData:[B

    .line 117
    iget v2, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->i:I

    iput v2, v1, Lcom/alipay/mobile/binarize/BinarizeResult;->width:I

    .line 118
    iget v2, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->j:I

    iput v2, v1, Lcom/alipay/mobile/binarize/BinarizeResult;->height:I

    .line 119
    return-object v1
.end method

.method public initialize(II)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/16 v3, 0x81

    .line 37
    iget v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->i:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->j:I

    if-ne v0, p2, :cond_0

    .line 71
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->a()V

    .line 42
    iput p1, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->i:I

    .line 43
    iput p2, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->j:I

    .line 45
    int-to-float v0, p1

    const/high16 v1, 0x42000000    # 32.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v7, v0

    .line 46
    .local v7, "rowSizeInWord":I
    mul-int v0, v7, p2

    mul-int/lit8 v6, v0, 0x4

    .line 47
    .local v6, "bitMatrixLength":I
    const-string/jumbo v0, "HybridStdBinarizer"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "bitMatrixLength is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1029
    sget-object v0, Liir;->a:Liir$a;

    .line 48
    new-array v0, v6, [B

    iput-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->h:[B

    .line 49
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->a:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->a:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    mul-int/lit8 v1, v7, 0x4

    .line 50
    invoke-virtual {v0, v1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    move-result-object v10

    .line 51
    .local v10, "typeBuilder":Landroid/renderscript/Type$Builder;
    iget-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->a:Landroid/renderscript/RenderScript;

    invoke-virtual {v10}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->f:Landroid/renderscript/Allocation;

    .line 54
    shr-int/lit8 v9, p1, 0x3

    .line 55
    .local v9, "subWidth":I
    shr-int/lit8 v8, p2, 0x3

    .line 56
    .local v8, "subHeight":I
    mul-int v0, v9, v8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->g:[B

    .line 57
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->a:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->a:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    mul-int v1, v9, v8

    invoke-virtual {v0, v1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v10

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->a:Landroid/renderscript/RenderScript;

    invoke-virtual {v10}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->c:Landroid/renderscript/Allocation;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->a:Landroid/renderscript/RenderScript;

    invoke-virtual {v10}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->d:Landroid/renderscript/Allocation;

    .line 61
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->a:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->a:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    mul-int v1, p1, p2

    .line 62
    invoke-virtual {v0, v1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v10

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->a:Landroid/renderscript/RenderScript;

    invoke-virtual {v10}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->e:Landroid/renderscript/Allocation;

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->b:Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;

    iget-object v1, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->e:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->set_gCurrentFrame(Landroid/renderscript/Allocation;)V

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->b:Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;

    iget-object v1, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->c:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->set_gAverageBlockAllocation(Landroid/renderscript/Allocation;)V

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->b:Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;

    iget-object v1, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->d:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->set_gTypeAllocation(Landroid/renderscript/Allocation;)V

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->b:Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;

    iget-object v1, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->f:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->set_gBitMatrixAllocation(Landroid/renderscript/Allocation;)V

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/binarize/HybridStdBinarizer;->b:Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;

    const/16 v3, 0x19

    const/4 v4, 0x3

    mul-int/lit8 v5, v7, 0x4

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->invoke_initBinarizer(IIIII)V

    goto/16 :goto_0
.end method
