.class public abstract Lhap;
.super Lhaw;
.source "BaseRoundIconDecoder.java"


# static fields
.field private static a:Landroid/graphics/Xfermode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lhap;->a:Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lhaw;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method public final a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "src_avatar"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 39
    if-nez p1, :cond_1

    move-object p1, v4

    .line 89
    .end local p1    # "src_avatar":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 44
    .restart local p1    # "src_avatar":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 45
    .local v9, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 50
    .local v2, "height":I
    if-le v9, v2, :cond_3

    .line 51
    move v1, v2

    .line 52
    .local v1, "d":I
    sub-int v10, v9, v2

    shr-int/lit8 v3, v10, 0x1

    .line 53
    .local v3, "offset":I
    new-instance v8, Landroid/graphics/Rect;

    add-int v10, v3, v2

    invoke-direct {v8, v3, v11, v10, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 60
    .local v8, "rectSrc":Landroid/graphics/Rect;
    :goto_1
    if-lez v1, :cond_2

    if-lez v9, :cond_2

    if-gtz v2, :cond_4

    :cond_2
    move-object p1, v4

    .line 61
    goto :goto_0

    .line 55
    .end local v1    # "d":I
    .end local v3    # "offset":I
    .end local v8    # "rectSrc":Landroid/graphics/Rect;
    :cond_3
    move v1, v9

    .line 56
    .restart local v1    # "d":I
    sub-int v10, v2, v9

    shr-int/lit8 v3, v10, 0x1

    .line 57
    .restart local v3    # "offset":I
    new-instance v8, Landroid/graphics/Rect;

    add-int v10, v3, v9

    invoke-direct {v8, v11, v3, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v8    # "rectSrc":Landroid/graphics/Rect;
    goto :goto_1

    .line 65
    :cond_4
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v10}, Lgzt;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 66
    .local v4, "output":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    .line 69
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 73
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v10, v1

    int-to-float v11, v1

    invoke-direct {v7, v12, v12, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 78
    .local v7, "rectDst":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lhap;->a()I

    move-result v6

    .line 79
    .local v6, "radius":I
    if-gtz v6, :cond_5

    .line 80
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v6

    .line 82
    :cond_5
    int-to-float v10, v6

    int-to-float v11, v6

    invoke-virtual {v0, v7, v10, v11, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 85
    sget-object v10, Lhap;->a:Landroid/graphics/Xfermode;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 87
    invoke-virtual {v0, p1, v8, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move-object p1, v4

    .line 89
    goto :goto_0
.end method
