.class public final Lhba;
.super Lhaw;
.source "OriginImageDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lhaw;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(II)Lhbc;
    .locals 4
    .param p1, "sWidth"    # I
    .param p2, "sHeight"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 31
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 39
    :goto_0
    return-object v1

    .line 35
    :cond_1
    mul-int v1, p1, p2

    sget v2, Lcom/alibaba/laiwang/photokit/nativecode/Bitmaps;->b:I

    mul-int/2addr v1, v2

    const/high16 v2, 0x100000

    if-ge v1, v2, :cond_2

    .line 36
    new-instance v1, Lhbc;

    invoke-direct {v1, p1, p2}, Lhbc;-><init>(II)V

    goto :goto_0

    .line 1044
    :cond_2
    sget v1, Lgzp;->a:I

    mul-int/lit16 v1, v1, 0x400

    mul-int/lit8 v1, v1, 0x64

    .line 1045
    const/4 v0, 0x1

    .line 1046
    :goto_1
    div-int v2, p1, v0

    div-int v3, p2, v0

    mul-int/2addr v2, v3

    sget v3, Lcom/alibaba/laiwang/photokit/nativecode/Bitmaps;->b:I

    mul-int/2addr v2, v3

    if-le v2, v1, :cond_3

    .line 1047
    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 39
    .local v0, "scale":I
    :cond_3
    new-instance v1, Lhbc;

    div-int v2, p1, v0

    div-int v3, p2, v0

    invoke-direct {v1, v2, v3}, Lhbc;-><init>(II)V

    goto :goto_0
.end method
