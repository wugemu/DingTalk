.class public Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_localAdaptiveBinarizer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# instance fields
.field private a:Landroid/renderscript/Element;

.field private b:Landroid/renderscript/Element;

.field private c:Landroid/renderscript/Element;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/renderscript/Allocation;

.field private l:Landroid/renderscript/Allocation;

.field private m:Landroid/renderscript/Allocation;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 3
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 38
    const-string/jumbo v0, "localadaptivebinarizer"

    .line 40
    invoke-static {}, Lcom/alipay/mobile/binarize/rs/localAdaptiveBinarizerBitCode;->getBitCode32()[B

    move-result-object v1

    .line 41
    invoke-static {}, Lcom/alipay/mobile/binarize/rs/localAdaptiveBinarizerBitCode;->getBitCode64()[B

    move-result-object v2

    .line 38
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/String;[B[B)V

    .line 42
    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->b:Landroid/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->a:Landroid/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->c:Landroid/renderscript/Element;

    .line 45
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
.method public forEach_calculateBlock(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->forEach_calculateBlock(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 210
    return-void
.end method

.method public forEach_calculateBlock(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "sc"    # Landroid/renderscript/Script$LaunchOptions;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 214
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->c:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v1, "Type mismatch with U8!"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 218
    return-void
.end method

.method public forEach_calculateThresholdForBlock(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->forEach_calculateThresholdForBlock(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 227
    return-void
.end method

.method public forEach_calculateThresholdForBlock(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 8
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "sc"    # Landroid/renderscript/Script$LaunchOptions;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 231
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->c:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v1, "Type mismatch with U8!"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->c:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v1, "Type mismatch with U8!"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_1
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    .line 240
    .local v6, "t0":Landroid/renderscript/Type;
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v7

    .line 241
    .local v7, "t1":Landroid/renderscript/Type;
    invoke-virtual {v6}, Landroid/renderscript/Type;->getCount()I

    move-result v0

    invoke-virtual {v7}, Landroid/renderscript/Type;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 242
    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v0

    invoke-virtual {v7}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 243
    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v0

    invoke-virtual {v7}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 244
    invoke-virtual {v6}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    invoke-virtual {v7}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 245
    invoke-virtual {v6}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    invoke-virtual {v7}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v1

    if-ne v0, v1, :cond_2

    .line 246
    invoke-virtual {v6}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    invoke-virtual {v7}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 247
    :cond_2
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v1, "Dimension mismatch between parameters ain and aout!"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_3
    const/4 v1, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 251
    return-void
.end method

.method public forEach_setBlack(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->forEach_setBlack(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 260
    return-void
.end method

.method public forEach_setBlack(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 8
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "sc"    # Landroid/renderscript/Script$LaunchOptions;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 264
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->c:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v1, "Type mismatch with U8!"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->c:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v1, "Type mismatch with U8!"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_1
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    .line 273
    .local v6, "t0":Landroid/renderscript/Type;
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v7

    .line 274
    .local v7, "t1":Landroid/renderscript/Type;
    invoke-virtual {v6}, Landroid/renderscript/Type;->getCount()I

    move-result v0

    invoke-virtual {v7}, Landroid/renderscript/Type;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 275
    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v0

    invoke-virtual {v7}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 276
    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v0

    invoke-virtual {v7}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 277
    invoke-virtual {v6}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    invoke-virtual {v7}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 278
    invoke-virtual {v6}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    invoke-virtual {v7}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v1

    if-ne v0, v1, :cond_2

    .line 279
    invoke-virtual {v6}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    invoke-virtual {v7}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 280
    :cond_2
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v1, "Dimension mismatch between parameters ain and aout!"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_3
    const/4 v1, 0x3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 284
    return-void
.end method

.method public getFieldID_blockHeight()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_blockMatrixHeight()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_blockMatrixWidth()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 109
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_blockWidth()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gBlockAllocation()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 184
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gCurrentFrame()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gThresholdAllocation()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 199
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_height()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 154
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_width()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_windowSize()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getInvokeID_initLocalBinarizer()Landroid/renderscript/Script$InvokeID;
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->createInvokeID(I)Landroid/renderscript/Script$InvokeID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_calculateBlock()Landroid/renderscript/Script$KernelID;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 205
    const/4 v0, 0x1

    const/16 v1, 0x29

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_calculateThresholdForBlock()Landroid/renderscript/Script$KernelID;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 222
    const/4 v0, 0x2

    const/16 v1, 0x2b

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_setBlack()Landroid/renderscript/Script$KernelID;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 255
    const/4 v0, 0x3

    const/16 v1, 0x3b

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public get_blockHeight()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->f:I

    return v0
.end method

.method public get_blockMatrixHeight()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->h:I

    return v0
.end method

.method public get_blockMatrixWidth()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->g:I

    return v0
.end method

.method public get_blockWidth()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->e:I

    return v0
.end method

.method public get_gBlockAllocation()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->l:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gCurrentFrame()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->k:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gThresholdAllocation()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->m:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_height()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->j:I

    return v0
.end method

.method public get_width()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->i:I

    return v0
.end method

.method public get_windowSize()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->d:I

    return v0
.end method

.method public invoke_initLocalBinarizer(IIIIIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "blockMW"    # I
    .param p4, "blockMH"    # I
    .param p5, "blockW"    # I
    .param p6, "blockH"    # I
    .param p7, "windowS"    # I

    .prologue
    .line 292
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 293
    .local v0, "initLocalBinarizer_fp":Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 294
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 295
    invoke-virtual {v0, p3}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 296
    invoke-virtual {v0, p4}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 297
    invoke-virtual {v0, p5}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 298
    invoke-virtual {v0, p6}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 299
    invoke-virtual {v0, p7}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 300
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 301
    return-void
.end method

.method public declared-synchronized set_blockHeight(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 85
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->setVar(II)V

    .line 86
    iput p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_blockMatrixHeight(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 115
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->setVar(II)V

    .line 116
    iput p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_blockMatrixWidth(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 100
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->setVar(II)V

    .line 101
    iput p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_blockWidth(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 70
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->setVar(II)V

    .line 71
    iput p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gBlockAllocation(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Allocation;

    .prologue
    .line 175
    monitor-enter p0

    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 176
    iput-object p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->l:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gCurrentFrame(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Allocation;

    .prologue
    .line 160
    monitor-enter p0

    const/4 v0, 0x7

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 161
    iput-object p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->k:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gThresholdAllocation(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Allocation;

    .prologue
    .line 190
    monitor-enter p0

    const/16 v0, 0x9

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 191
    iput-object p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->m:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_height(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 145
    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->setVar(II)V

    .line 146
    iput p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_width(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 130
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->setVar(II)V

    .line 131
    iput p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_windowSize(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 55
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->setVar(II)V

    .line 56
    iput p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_localAdaptiveBinarizer;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
