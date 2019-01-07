.class public Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;
.super Lcom/alipay/mobile/binarize/Binarizer;
.source "AdaptiveHybridBinarizer.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Landroid/renderscript/Allocation;

.field private d:Landroid/renderscript/Allocation;

.field private e:Landroid/renderscript/Allocation;

.field private f:Landroid/renderscript/Allocation;

.field private g:[B

.field private h:[B

.field private i:Landroid/renderscript/Allocation;

.field private j:Landroid/renderscript/Allocation;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:[I

.field private p:Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;

.field private q:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/alipay/mobile/binarize/Binarizer;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->a:Z

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->b:Z

    .line 38
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->q:Landroid/renderscript/RenderScript;

    .line 39
    new-instance v0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;

    iget-object v1, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->q:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v0, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->p:Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;

    .line 40
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
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->e:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->e:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->e:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->destroy()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->f:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->f:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->f:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->destroy()V

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->d:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->d:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->d:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->destroy()V

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->j:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->j:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->j:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->destroy()V

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->i:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_4

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->i:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->i:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->destroy()V

    .line 104
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->c:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_5

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->c:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->c:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->destroy()V

    .line 108
    :cond_5
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->a()V

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->p:Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->p:Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;

    invoke-virtual {v0}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->destroy()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->q:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->q:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 119
    :cond_1
    return-void
.end method

.method public getBinarizedData([B)Lcom/alipay/mobile/binarize/BinarizeResult;
    .locals 12
    .param p1, "data"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 131
    iget-object v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->i:Landroid/renderscript/Allocation;

    invoke-virtual {v9, p1}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 132
    iget-boolean v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->b:Z

    if-eqz v9, :cond_2

    .line 133
    iget-object v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->p:Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;

    iget-object v10, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->i:Landroid/renderscript/Allocation;

    iget-object v11, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->j:Landroid/renderscript/Allocation;

    invoke-virtual {v9, v10, v11}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->forEach_deNoiseByAverage(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 134
    iget-object v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->j:Landroid/renderscript/Allocation;

    iget-object v10, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->g:[B

    invoke-virtual {v9, v10}, Landroid/renderscript/Allocation;->copyTo([B)V

    .line 135
    iget-object v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->i:Landroid/renderscript/Allocation;

    iget-object v10, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->g:[B

    invoke-virtual {v9, v10}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 136
    iget-object v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->q:Landroid/renderscript/RenderScript;

    invoke-virtual {v9}, Landroid/renderscript/RenderScript;->finish()V

    .line 137
    iget-object v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->p:Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;

    iget-object v10, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->d:Landroid/renderscript/Allocation;

    invoke-virtual {v9, v10}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->forEach_calAverage(Landroid/renderscript/Allocation;)V

    .line 142
    :goto_0
    iget-object v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->q:Landroid/renderscript/RenderScript;

    invoke-virtual {v9}, Landroid/renderscript/RenderScript;->finish()V

    .line 143
    iget-object v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->c:Landroid/renderscript/Allocation;

    iget-object v10, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->o:[I

    invoke-virtual {v9, v10}, Landroid/renderscript/Allocation;->copyTo([I)V

    .line 144
    iget-object v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->q:Landroid/renderscript/RenderScript;

    invoke-virtual {v9}, Landroid/renderscript/RenderScript;->finish()V

    .line 146
    const/4 v8, 0x0

    .local v8, "y":I
    :goto_1
    iget v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->n:I

    if-ge v8, v9, :cond_5

    .line 147
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_2
    iget v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->m:I

    if-ge v7, v9, :cond_4

    .line 148
    iget v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->m:I

    mul-int/2addr v9, v8

    add-int/2addr v9, v7

    mul-int/lit8 v5, v9, 0x4

    .line 149
    .local v5, "offset":I
    iget-object v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->o:[I

    add-int/lit8 v10, v5, 0x1

    aget v3, v9, v10

    .line 150
    .local v3, "minVal":I
    iget-object v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->o:[I

    add-int/lit8 v10, v5, 0x2

    aget v2, v9, v10

    .line 151
    .local v2, "maxVal":I
    sub-int v9, v2, v3

    const/16 v10, 0x18

    if-gt v9, v10, :cond_1

    .line 152
    iget-boolean v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->a:Z

    if-eqz v9, :cond_3

    .line 153
    shr-int/lit8 v0, v3, 0x1

    .line 157
    .local v0, "average":I
    :goto_3
    if-lez v8, :cond_0

    if-lez v7, :cond_0

    .line 158
    add-int/lit8 v9, v8, -0x1

    iget v10, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->m:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v7

    add-int/lit8 v6, v9, -0x1

    .line 159
    .local v6, "temp":I
    iget-object v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->o:[I

    add-int/lit8 v10, v6, 0x1

    mul-int/lit8 v10, v10, 0x4

    aget v9, v9, v10

    iget-object v10, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->o:[I

    iget v11, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->m:I

    add-int/2addr v11, v6

    mul-int/lit8 v11, v11, 0x4

    aget v10, v10, v11

    shl-int/lit8 v10, v10, 0x1

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->o:[I

    mul-int/lit8 v11, v6, 0x4

    aget v10, v10, v11

    add-int/2addr v9, v10

    shr-int/lit8 v4, v9, 0x2

    .line 160
    .local v4, "neibScore":I
    if-ge v3, v4, :cond_0

    .line 161
    move v0, v4

    .line 164
    .end local v4    # "neibScore":I
    .end local v6    # "temp":I
    :cond_0
    iget-object v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->o:[I

    aput v0, v9, v5

    .line 147
    .end local v0    # "average":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 139
    .end local v2    # "maxVal":I
    .end local v3    # "minVal":I
    .end local v5    # "offset":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_2
    iget-object v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->p:Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;

    iget-object v10, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->i:Landroid/renderscript/Allocation;

    invoke-virtual {v9, v10}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->set_gCurrentFrame(Landroid/renderscript/Allocation;)V

    .line 140
    iget-object v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->p:Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;

    iget-object v10, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->d:Landroid/renderscript/Allocation;

    invoke-virtual {v9, v10}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->forEach_calAverage(Landroid/renderscript/Allocation;)V

    goto :goto_0

    .line 155
    .restart local v2    # "maxVal":I
    .restart local v3    # "minVal":I
    .restart local v5    # "offset":I
    .restart local v7    # "x":I
    .restart local v8    # "y":I
    :cond_3
    sub-int v9, v2, v3

    shr-int/lit8 v9, v9, 0x1

    add-int v0, v3, v9

    .restart local v0    # "average":I
    goto :goto_3

    .line 146
    .end local v0    # "average":I
    .end local v2    # "maxVal":I
    .end local v3    # "minVal":I
    .end local v5    # "offset":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 168
    .end local v7    # "x":I
    :cond_5
    iget-object v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->c:Landroid/renderscript/Allocation;

    iget-object v10, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->o:[I

    invoke-virtual {v9, v10}, Landroid/renderscript/Allocation;->copyFrom([I)V

    .line 169
    iget-object v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->p:Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;

    iget-object v10, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->c:Landroid/renderscript/Allocation;

    invoke-virtual {v9, v10}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->forEach_calThreshold(Landroid/renderscript/Allocation;)V

    .line 170
    iget-object v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->q:Landroid/renderscript/RenderScript;

    invoke-virtual {v9}, Landroid/renderscript/RenderScript;->finish()V

    .line 171
    iget-object v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->p:Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;

    iget-object v10, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->e:Landroid/renderscript/Allocation;

    iget-object v11, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->f:Landroid/renderscript/Allocation;

    invoke-virtual {v9, v10, v11}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->forEach_setBlack(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 172
    iget-object v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->f:Landroid/renderscript/Allocation;

    iget-object v10, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->h:[B

    invoke-virtual {v9, v10}, Landroid/renderscript/Allocation;->copyTo([B)V

    .line 173
    iget-object v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->q:Landroid/renderscript/RenderScript;

    invoke-virtual {v9}, Landroid/renderscript/RenderScript;->finish()V

    .line 174
    new-instance v1, Lcom/alipay/mobile/binarize/BinarizeResult;

    invoke-direct {v1}, Lcom/alipay/mobile/binarize/BinarizeResult;-><init>()V

    .line 175
    .local v1, "binarizeResult":Lcom/alipay/mobile/binarize/BinarizeResult;
    iget-object v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->h:[B

    iput-object v9, v1, Lcom/alipay/mobile/binarize/BinarizeResult;->bitMatrixData:[B

    .line 176
    iget v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->k:I

    iput v9, v1, Lcom/alipay/mobile/binarize/BinarizeResult;->width:I

    .line 177
    iget v9, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->l:I

    iput v9, v1, Lcom/alipay/mobile/binarize/BinarizeResult;->height:I

    .line 178
    return-object v1
.end method

.method public initialize(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/16 v6, 0x81

    .line 44
    iget v3, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->k:I

    if-ne v3, p1, :cond_0

    iget v3, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->l:I

    if-ne v3, p2, :cond_0

    .line 81
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->a()V

    .line 49
    iput p1, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->k:I

    .line 50
    iput p2, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->l:I

    .line 51
    int-to-float v3, p1

    const/high16 v4, 0x42000000    # 32.0f

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 52
    .local v1, "rowSize":I
    mul-int v3, v1, p2

    mul-int/lit8 v0, v3, 0x4

    .line 53
    .local v0, "bitMatrixLength":I
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->h:[B

    .line 54
    new-instance v3, Landroid/renderscript/Type$Builder;

    iget-object v4, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->q:Landroid/renderscript/RenderScript;

    iget-object v5, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->q:Landroid/renderscript/RenderScript;

    invoke-static {v5}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    mul-int/lit8 v4, v1, 0x4

    .line 55
    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    move-result-object v2

    .line 56
    .local v2, "typeBuilder":Landroid/renderscript/Type$Builder;
    iget-object v3, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->q:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->e:Landroid/renderscript/Allocation;

    .line 58
    iget-object v3, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->q:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->f:Landroid/renderscript/Allocation;

    .line 61
    mul-int v3, p1, p2

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->g:[B

    .line 62
    new-instance v3, Landroid/renderscript/Type$Builder;

    iget-object v4, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->q:Landroid/renderscript/RenderScript;

    iget-object v5, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->q:Landroid/renderscript/RenderScript;

    invoke-static {v5}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 63
    invoke-virtual {v3, p1}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    move-result-object v2

    .line 64
    iget-object v3, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->q:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->i:Landroid/renderscript/Allocation;

    .line 66
    iget-object v3, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->q:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->j:Landroid/renderscript/Allocation;

    .line 69
    add-int/lit8 v3, p1, 0x8

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->m:I

    .line 70
    add-int/lit8 v3, p2, 0x8

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->n:I

    .line 71
    new-instance v3, Landroid/renderscript/Type$Builder;

    iget-object v4, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->q:Landroid/renderscript/RenderScript;

    iget-object v5, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->q:Landroid/renderscript/RenderScript;

    invoke-static {v5}, Landroid/renderscript/Element;->I32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    iget v4, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->m:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v3

    iget v4, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->n:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    move-result-object v2

    .line 72
    iget-object v3, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->q:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->c:Landroid/renderscript/Allocation;

    .line 73
    new-instance v3, Landroid/renderscript/Type$Builder;

    iget-object v4, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->q:Landroid/renderscript/RenderScript;

    iget-object v5, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->q:Landroid/renderscript/RenderScript;

    invoke-static {v5}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    iget v4, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->m:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object v3

    iget v4, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->n:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    move-result-object v2

    .line 74
    iget-object v3, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->q:Landroid/renderscript/RenderScript;

    invoke-virtual {v2}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->d:Landroid/renderscript/Allocation;

    .line 76
    iget-object v3, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->p:Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;

    const/16 v4, 0x8

    const/16 v5, 0x18

    invoke-virtual {v3, p1, p2, v4, v5}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->invoke_initSize(IIII)V

    .line 77
    iget-object v3, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->p:Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;

    iget-object v4, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->i:Landroid/renderscript/Allocation;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->set_gCurrentFrame(Landroid/renderscript/Allocation;)V

    .line 78
    iget-object v3, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->p:Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;

    iget-object v4, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->c:Landroid/renderscript/Allocation;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->set_gTempAverageFrame(Landroid/renderscript/Allocation;)V

    .line 79
    iget-object v3, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->p:Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;

    iget-object v4, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->d:Landroid/renderscript/Allocation;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->set_gAverageFrame(Landroid/renderscript/Allocation;)V

    .line 80
    iget v3, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->m:I

    iget v4, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->n:I

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x4

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->o:[I

    goto/16 :goto_0
.end method

.method public setDeNoiseByAvg(Z)V
    .locals 0
    .param p1, "deNoiseByAvg"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->b:Z

    .line 123
    return-void
.end method

.method public setPreferWhite(Z)V
    .locals 0
    .param p1, "preferWhite"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/alipay/mobile/binarize/AdaptiveHybridBinarizer;->a:Z

    .line 127
    return-void
.end method
