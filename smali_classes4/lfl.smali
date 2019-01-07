.class public final Llfl;
.super Ljava/lang/Object;
.source "nsEUCSampler.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field public d:[I

.field public e:[I

.field public f:[F

.field public g:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x5e

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v2, p0, Llfl;->a:I

    .line 29
    const/16 v0, 0xc8

    iput v0, p0, Llfl;->b:I

    .line 30
    iput v2, p0, Llfl;->c:I

    .line 31
    new-array v0, v1, [I

    iput-object v0, p0, Llfl;->d:[I

    .line 32
    new-array v0, v1, [I

    iput-object v0, p0, Llfl;->e:[I

    .line 33
    new-array v0, v1, [F

    iput-object v0, p0, Llfl;->f:[F

    .line 34
    new-array v0, v1, [F

    iput-object v0, p0, Llfl;->g:[F

    .line 37
    invoke-virtual {p0}, Llfl;->a()V

    .line 38
    return-void
.end method

.method static a([F[F)F
    .locals 6
    .param p0, "array1"    # [F
    .param p1, "array2"    # [F

    .prologue
    .line 122
    const/4 v2, 0x0

    .line 124
    .local v2, "sum":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x5e

    if-lt v0, v3, :cond_0

    .line 128
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    const/high16 v4, 0x42bc0000    # 94.0f

    div-float/2addr v3, v4

    return v3

    .line 125
    :cond_0
    aget v3, p0, v0

    aget v4, p1, v0

    sub-float v1, v3, v4

    .line 126
    .local v1, "s":F
    mul-float v3, v1, v1

    add-float/2addr v2, v3

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 41
    iput v2, p0, Llfl;->a:I

    .line 42
    iput v2, p0, Llfl;->c:I

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x5e

    if-lt v0, v1, :cond_0

    .line 49
    return-void

    .line 46
    :cond_0
    iget-object v1, p0, Llfl;->d:[I

    aput v2, v1, v0

    .line 47
    iget-object v1, p0, Llfl;->e:[I

    aput v2, v1, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
