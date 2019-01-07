.class public Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_adaptiveHybridBinarizer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# instance fields
.field private a:Landroid/renderscript/Element;

.field private b:Landroid/renderscript/Element;

.field private c:Landroid/renderscript/Element;

.field private d:Landroid/renderscript/Element;

.field private e:Landroid/renderscript/Allocation;

.field private f:Landroid/renderscript/Allocation;

.field private g:Landroid/renderscript/Allocation;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 3
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 38
    const-string/jumbo v0, "adaptivehybridbinarizer"

    .line 40
    invoke-static {}, Lcom/alipay/mobile/binarize/rs/adaptiveHybridBinarizerBitCode;->getBitCode32()[B

    move-result-object v1

    .line 41
    invoke-static {}, Lcom/alipay/mobile/binarize/rs/adaptiveHybridBinarizerBitCode;->getBitCode64()[B

    move-result-object v2

    .line 38
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/String;[B[B)V

    .line 42
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->a:Landroid/renderscript/Element;

    .line 43
    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->b:Landroid/renderscript/Element;

    .line 44
    invoke-static {p1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->d:Landroid/renderscript/Element;

    .line 45
    invoke-static {p1}, Landroid/renderscript/Element;->I32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->c:Landroid/renderscript/Element;

    .line 46
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
.method public forEach_calAverage(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->forEach_calAverage(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 278
    return-void
.end method

.method public forEach_calAverage(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "sc"    # Landroid/renderscript/Script$LaunchOptions;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 282
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->d:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v1, "Type mismatch with U8!"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 286
    return-void
.end method

.method public forEach_calThreshold(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->forEach_calThreshold(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 295
    return-void
.end method

.method public forEach_calThreshold(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "sc"    # Landroid/renderscript/Script$LaunchOptions;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 299
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->c:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v1, "Type mismatch with I32_3!"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    const/4 v1, 0x4

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 303
    return-void
.end method

.method public forEach_deNoiseByAverage(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->forEach_deNoiseByAverage(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 212
    return-void
.end method

.method public forEach_deNoiseByAverage(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 8
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;
    .param p3, "sc"    # Landroid/renderscript/Script$LaunchOptions;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->d:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v1, "Type mismatch with U8!"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->d:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v1, "Type mismatch with U8!"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_1
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    .line 225
    .local v6, "t0":Landroid/renderscript/Type;
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v7

    .line 226
    .local v7, "t1":Landroid/renderscript/Type;
    invoke-virtual {v6}, Landroid/renderscript/Type;->getCount()I

    move-result v0

    invoke-virtual {v7}, Landroid/renderscript/Type;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 227
    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v0

    invoke-virtual {v7}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 228
    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v0

    invoke-virtual {v7}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 229
    invoke-virtual {v6}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    invoke-virtual {v7}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 230
    invoke-virtual {v6}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    invoke-virtual {v7}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v1

    if-ne v0, v1, :cond_2

    .line 231
    invoke-virtual {v6}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    invoke-virtual {v7}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 232
    :cond_2
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v1, "Dimension mismatch between parameters ain and aout!"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_3
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 236
    return-void
.end method

.method public forEach_setBlack(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "aout"    # Landroid/renderscript/Allocation;

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->forEach_setBlack(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 245
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
    .line 249
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->d:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v1, "Type mismatch with U8!"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->d:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v1, "Type mismatch with U8!"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_1
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    .line 258
    .local v6, "t0":Landroid/renderscript/Type;
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v7

    .line 259
    .local v7, "t1":Landroid/renderscript/Type;
    invoke-virtual {v6}, Landroid/renderscript/Type;->getCount()I

    move-result v0

    invoke-virtual {v7}, Landroid/renderscript/Type;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 260
    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v0

    invoke-virtual {v7}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 261
    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v0

    invoke-virtual {v7}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 262
    invoke-virtual {v6}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    invoke-virtual {v7}, Landroid/renderscript/Type;->getZ()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 263
    invoke-virtual {v6}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    invoke-virtual {v7}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v1

    if-ne v0, v1, :cond_2

    .line 264
    invoke-virtual {v6}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    invoke-virtual {v7}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 265
    :cond_2
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v1, "Dimension mismatch between parameters ain and aout!"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_3
    const/4 v1, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 269
    return-void
.end method

.method public getFieldID_gAverageFrame()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gBlockSize()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 156
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gCount()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 201
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gCurrentFrame()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gHeight()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gMinDynamicRange()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gSubHeight()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 186
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gSubWidth()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 171
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTempAverageFrame()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gWidth()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getInvokeID_initSize()Landroid/renderscript/Script$InvokeID;
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->createInvokeID(I)Landroid/renderscript/Script$InvokeID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_calAverage()Landroid/renderscript/Script$KernelID;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 273
    const/4 v0, 0x3

    const/16 v1, 0x39

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_calThreshold()Landroid/renderscript/Script$KernelID;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 290
    const/4 v0, 0x4

    const/16 v1, 0x39

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID_deNoiseByAverage()Landroid/renderscript/Script$KernelID;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 207
    const/4 v0, 0x1

    const/16 v1, 0x3b

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

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

    .line 240
    const/4 v0, 0x2

    const/16 v1, 0x3b

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public get_gAverageFrame()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->g:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gBlockSize()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->k:I

    return v0
.end method

.method public get_gCount()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->n:I

    return v0
.end method

.method public get_gCurrentFrame()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->e:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gHeight()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->j:I

    return v0
.end method

.method public get_gMinDynamicRange()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->h:I

    return v0
.end method

.method public get_gSubHeight()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->m:I

    return v0
.end method

.method public get_gSubWidth()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->l:I

    return v0
.end method

.method public get_gTempAverageFrame()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->f:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gWidth()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->i:I

    return v0
.end method

.method public invoke_initSize(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "blockSize"    # I
    .param p4, "minDynamicRange"    # I

    .prologue
    .line 311
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 312
    .local v0, "initSize_fp":Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 313
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 314
    invoke-virtual {v0, p3}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 315
    invoke-virtual {v0, p4}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 316
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 317
    return-void
.end method

.method public declared-synchronized set_gAverageFrame(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Allocation;

    .prologue
    .line 87
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 88
    iput-object p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->g:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gBlockSize(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 147
    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->setVar(II)V

    .line 148
    iput p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gCount(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 192
    monitor-enter p0

    const/16 v0, 0x9

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->setVar(II)V

    .line 193
    iput p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gCurrentFrame(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Allocation;

    .prologue
    .line 57
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 58
    iput-object p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->e:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gHeight(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 132
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->setVar(II)V

    .line 133
    iput p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gMinDynamicRange(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 102
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->setVar(II)V

    .line 103
    iput p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gSubHeight(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 177
    monitor-enter p0

    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->setVar(II)V

    .line 178
    iput p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gSubWidth(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 162
    monitor-enter p0

    const/4 v0, 0x7

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->setVar(II)V

    .line 163
    iput p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gTempAverageFrame(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Allocation;

    .prologue
    .line 72
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 73
    iput-object p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->f:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gWidth(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 117
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->setVar(II)V

    .line 118
    iput p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_adaptiveHybridBinarizer;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
