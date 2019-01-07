.class public Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;
.super Landroid/renderscript/ScriptC;
.source "ScriptC_hybridStdBinarizer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;
    }
.end annotation


# instance fields
.field private a:Landroid/renderscript/Element;

.field private b:Landroid/renderscript/Element;

.field private c:Landroid/renderscript/Element;

.field private d:Landroid/renderscript/RenderScript;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/renderscript/Allocation;

.field private q:Landroid/renderscript/Allocation;

.field private r:Landroid/renderscript/Allocation;

.field private s:Landroid/renderscript/Allocation;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 3
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 41
    const-string/jumbo v0, "hybridstdbinarizer"

    .line 43
    invoke-static {}, Lcom/alipay/mobile/binarize/rs/hybridStdBinarizerBitCode;->getBitCode32()[B

    move-result-object v1

    .line 44
    invoke-static {}, Lcom/alipay/mobile/binarize/rs/hybridStdBinarizerBitCode;->getBitCode64()[B

    move-result-object v2

    .line 41
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/renderscript/ScriptC;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/String;[B[B)V

    .line 45
    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->b:Landroid/renderscript/Element;

    .line 46
    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->a:Landroid/renderscript/Element;

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->d:Landroid/renderscript/RenderScript;

    .line 48
    invoke-static {p1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->c:Landroid/renderscript/Element;

    .line 49
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
    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->forEach_calAverage(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 290
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

    .line 294
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->c:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v1, "Type mismatch with U8!"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 298
    return-void
.end method

.method public forEach_setBlack(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "ain"    # Landroid/renderscript/Allocation;

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->forEach_setBlack(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 307
    return-void
.end method

.method public forEach_setBlack(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 6
    .param p1, "ain"    # Landroid/renderscript/Allocation;
    .param p2, "sc"    # Landroid/renderscript/Script$LaunchOptions;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 311
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->c:Landroid/renderscript/Element;

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v1, "Type mismatch with U8!"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_0
    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    .line 315
    return-void
.end method

.method public getFieldID__var_th()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 204
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_areaSize()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_avgSum()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 219
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_bitMatrixRowSize()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 189
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gAverageBlockAllocation()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 264
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gBitMatrixAllocation()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 279
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gCurrentFrame()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 234
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_gTypeAllocation()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 249
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_height()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_log_nBlockSize()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_nBlockSize()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_subAreaSize()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 174
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_subHeight()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 144
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_subWidth()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getFieldID_width()Landroid/renderscript/Script$FieldID;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getInvokeID_initBinarizer()Landroid/renderscript/Script$InvokeID;
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->createInvokeID(I)Landroid/renderscript/Script$InvokeID;

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

    .line 285
    const/4 v0, 0x1

    const/16 v1, 0x29

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

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

    .line 302
    const/4 v0, 0x2

    const/16 v1, 0x29

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public get__var_th()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->n:I

    return v0
.end method

.method public get_areaSize()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->k:I

    return v0
.end method

.method public get_avgSum()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->o:I

    return v0
.end method

.method public get_bitMatrixRowSize()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->m:I

    return v0
.end method

.method public get_gAverageBlockAllocation()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->r:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gBitMatrixAllocation()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->s:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gCurrentFrame()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->p:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_gTypeAllocation()Landroid/renderscript/Allocation;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->q:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public get_height()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->h:I

    return v0
.end method

.method public get_log_nBlockSize()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->e:I

    return v0
.end method

.method public get_nBlockSize()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->f:I

    return v0
.end method

.method public get_subAreaSize()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->l:I

    return v0
.end method

.method public get_subHeight()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->j:I

    return v0
.end method

.method public get_subWidth()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->i:I

    return v0
.end method

.method public get_width()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->g:I

    return v0
.end method

.method public invoke_initBinarizer(IIIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "var_th"    # I
    .param p4, "log_n"    # I
    .param p5, "rowSize"    # I

    .prologue
    .line 392
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 393
    .local v0, "initBinarizer_fp":Landroid/renderscript/FieldPacker;
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 394
    invoke-virtual {v0, p2}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 395
    invoke-virtual {v0, p3}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 396
    invoke-virtual {v0, p4}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 397
    invoke-virtual {v0, p5}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 398
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->invoke(ILandroid/renderscript/FieldPacker;)V

    .line 399
    return-void
.end method

.method public reduce_produceAverage(Landroid/renderscript/Allocation;)Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;
    .locals 1
    .param p1, "ain1"    # Landroid/renderscript/Allocation;

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->reduce_produceAverage(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;

    move-result-object v0

    return-object v0
.end method

.method public reduce_produceAverage(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;
    .locals 5
    .param p1, "ain1"    # Landroid/renderscript/Allocation;
    .param p2, "sc"    # Landroid/renderscript/Script$LaunchOptions;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 377
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->c:Landroid/renderscript/Element;

    invoke-virtual {v1, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v2, "Type mismatch with U8!"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->d:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->b:Landroid/renderscript/Element;

    invoke-static {v1, v2, v4}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 381
    .local v0, "aout":Landroid/renderscript/Allocation;
    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->setAutoPadding(Z)V

    .line 382
    new-array v1, v4, [Landroid/renderscript/Allocation;

    aput-object p1, v1, v3

    invoke-virtual {p0, v3, v1, v0, p2}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->reduce(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    .line 383
    new-instance v1, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;

    invoke-direct {v1, v0, v3}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;-><init>(Landroid/renderscript/Allocation;B)V

    return-object v1
.end method

.method public reduce_produceAverage([B)Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;
    .locals 6
    .param p1, "in1"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 357
    if-nez p1, :cond_0

    .line 358
    new-instance v2, Landroid/renderscript/RSIllegalArgumentException;

    const-string/jumbo v3, "Array \"in1\" is null!"

    invoke-direct {v2, v3}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 360
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->d:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->c:Landroid/renderscript/Element;

    array-length v4, p1

    invoke-static {v2, v3, v4}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 361
    .local v0, "ain1":Landroid/renderscript/Allocation;
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->setAutoPadding(Z)V

    .line 362
    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFrom([B)V

    .line 364
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->reduce_produceAverage(Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;

    move-result-object v1

    .line 365
    .local v1, "result":Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;
    new-array v2, v5, [Landroid/renderscript/Allocation;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;->a(Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;[Landroid/renderscript/Allocation;)[Landroid/renderscript/Allocation;

    .line 366
    return-object v1
.end method

.method public declared-synchronized set__var_th(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 195
    monitor-enter p0

    const/16 v0, 0x9

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->setVar(II)V

    .line 196
    iput p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_areaSize(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 150
    monitor-enter p0

    const/4 v0, 0x6

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->setVar(II)V

    .line 151
    iput p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_avgSum(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 210
    monitor-enter p0

    const/16 v0, 0xa

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->setVar(II)V

    .line 211
    iput p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_bitMatrixRowSize(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 180
    monitor-enter p0

    const/16 v0, 0x8

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->setVar(II)V

    .line 181
    iput p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gAverageBlockAllocation(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Allocation;

    .prologue
    .line 255
    monitor-enter p0

    const/16 v0, 0xd

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 256
    iput-object p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->r:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gBitMatrixAllocation(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Allocation;

    .prologue
    .line 270
    monitor-enter p0

    const/16 v0, 0xe

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 271
    iput-object p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->s:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gCurrentFrame(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Allocation;

    .prologue
    .line 225
    monitor-enter p0

    const/16 v0, 0xb

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 226
    iput-object p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->p:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_gTypeAllocation(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "v"    # Landroid/renderscript/Allocation;

    .prologue
    .line 240
    monitor-enter p0

    const/16 v0, 0xc

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 241
    iput-object p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->q:Landroid/renderscript/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_height(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 105
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->setVar(II)V

    .line 106
    iput p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_log_nBlockSize(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 60
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->setVar(II)V

    .line 61
    iput p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_nBlockSize(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 75
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->setVar(II)V

    .line 76
    iput p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_subAreaSize(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 165
    monitor-enter p0

    const/4 v0, 0x7

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->setVar(II)V

    .line 166
    iput p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_subHeight(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 135
    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->setVar(II)V

    .line 136
    iput p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_subWidth(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 120
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->setVar(II)V

    .line 121
    iput p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set_width(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 90
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->setVar(II)V

    .line 91
    iput p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
