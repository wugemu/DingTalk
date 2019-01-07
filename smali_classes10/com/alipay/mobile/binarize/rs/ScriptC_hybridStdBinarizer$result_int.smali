.class public Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;
.super Ljava/lang/Object;
.source "ScriptC_hybridStdBinarizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "result_int"
.end annotation


# instance fields
.field private a:[Landroid/renderscript/Allocation;

.field private b:Landroid/renderscript/Allocation;

.field private c:Z

.field private d:I


# direct methods
.method private constructor <init>(Landroid/renderscript/Allocation;)V
    .locals 1
    .param p1, "out"    # Landroid/renderscript/Allocation;

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;->a:[Landroid/renderscript/Allocation;

    .line 343
    iput-object p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;->b:Landroid/renderscript/Allocation;

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;->c:Z

    .line 345
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/renderscript/Allocation;B)V
    .locals 0
    .param p1, "x0"    # Landroid/renderscript/Allocation;

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;-><init>(Landroid/renderscript/Allocation;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;[Landroid/renderscript/Allocation;)[Landroid/renderscript/Allocation;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;
    .param p1, "x1"    # [Landroid/renderscript/Allocation;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;->a:[Landroid/renderscript/Allocation;

    return-object p1
.end method


# virtual methods
.method public get()I
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 321
    iget-boolean v3, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;->c:Z

    if-nez v3, :cond_2

    .line 322
    new-array v0, v5, [I

    .line 323
    .local v0, "outArray":[I
    iget-object v3, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;->b:Landroid/renderscript/Allocation;

    invoke-virtual {v3, v0}, Landroid/renderscript/Allocation;->copyTo([I)V

    .line 324
    aget v3, v0, v2

    iput v3, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;->d:I

    .line 325
    iget-object v3, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;->b:Landroid/renderscript/Allocation;

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    .line 326
    iput-object v6, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;->b:Landroid/renderscript/Allocation;

    .line 327
    iget-object v3, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;->a:[Landroid/renderscript/Allocation;

    if-eqz v3, :cond_1

    .line 328
    iget-object v3, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;->a:[Landroid/renderscript/Allocation;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 329
    .local v1, "tempIn":Landroid/renderscript/Allocation;
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 332
    .end local v1    # "tempIn":Landroid/renderscript/Allocation;
    :cond_0
    iput-object v6, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;->a:[Landroid/renderscript/Allocation;

    .line 335
    :cond_1
    iput-boolean v5, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;->c:Z

    .line 338
    .end local v0    # "outArray":[I
    :cond_2
    iget v2, p0, Lcom/alipay/mobile/binarize/rs/ScriptC_hybridStdBinarizer$result_int;->d:I

    return v2
.end method
