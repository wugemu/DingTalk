.class public final Lhao;
.super Lhaw;
.source "BackgroundImageDecoder.java"


# static fields
.field private static a:I

.field private static b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x12c

    sput v0, Lhao;->a:I

    .line 32
    const/16 v0, 0x438

    sput v0, Lhao;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lhaw;-><init>()V

    .line 36
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhcn;->b(Landroid/content/Context;)I

    move-result v0

    .line 37
    sput v0, Lhao;->b:I

    sget v1, Lhao;->a:I

    mul-int/2addr v0, v1

    sput v0, Lhao;->c:I

    .line 38
    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "srcBitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v5, 0x1e

    const/4 v4, 0x0

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    sget v3, Lhao;->c:I

    if-ge v2, v3, :cond_1

    .line 64
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    invoke-static {p1, v5}, Lhbe;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget v2, Lhao;->b:I

    sget v3, Lhao;->a:I

    invoke-static {v0, v2, v3, v4}, Lgzt;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 72
    .local v1, "result":Landroid/graphics/Bitmap;
    :goto_0
    if-eq v1, v0, :cond_0

    .line 73
    invoke-static {v0}, Lgzt;->a(Landroid/graphics/Bitmap;)V

    .line 75
    :cond_0
    return-object v1

    .line 68
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "result":Landroid/graphics/Bitmap;
    :cond_1
    sget v2, Lhao;->b:I

    sget v3, Lhao;->a:I

    invoke-static {p1, v2, v3, v4}, Lgzt;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    invoke-static {v0, v5}, Lhbe;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "result":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method protected final a(II)Lhbc;
    .locals 7
    .param p1, "sWidth"    # I
    .param p2, "sHeight"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 42
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 43
    :cond_0
    const/4 v5, 0x0

    .line 55
    :goto_0
    return-object v5

    .line 46
    :cond_1
    sget v5, Lhao;->b:I

    int-to-float v5, v5

    int-to-float v6, p1

    div-float v3, v5, v6

    .line 47
    .local v3, "xRatio":F
    sget v5, Lhao;->a:I

    int-to-float v5, v5

    int-to-float v6, p2

    div-float v4, v5, v6

    .line 48
    .local v4, "yRatio":F
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 49
    .local v1, "oRatio":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v1, v5

    if-lez v5, :cond_2

    .line 50
    const/high16 v1, 0x3f800000    # 1.0f

    .line 53
    :cond_2
    int-to-float v5, p1

    mul-float/2addr v5, v1

    float-to-int v2, v5

    .line 54
    .local v2, "width":I
    int-to-float v5, p2

    mul-float/2addr v5, v1

    float-to-int v0, v5

    .line 55
    .local v0, "height":I
    new-instance v5, Lhbc;

    invoke-direct {v5, v2, v0}, Lhbc;-><init>(II)V

    goto :goto_0
.end method
