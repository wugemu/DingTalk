.class public final Lhav;
.super Lhaw;
.source "IconImageDecoder.java"


# static fields
.field private static a:F

.field private static b:Landroid/graphics/Xfermode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const/high16 v0, 0x42000000    # 32.0f

    sput v0, Lhav;->a:F

    .line 36
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lhav;->b:Landroid/graphics/Xfermode;

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

    .line 40
    if-nez p1, :cond_1

    move-object p1, v4

    .line 86
    .end local p1    # "src_avatar":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 45
    .restart local p1    # "src_avatar":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 46
    .local v9, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 51
    .local v2, "height":I
    if-le v9, v2, :cond_3

    .line 52
    move v1, v2

    .line 53
    .local v1, "d":I
    sub-int v10, v9, v2

    shr-int/lit8 v3, v10, 0x1

    .line 54
    .local v3, "offset":I
    new-instance v8, Landroid/graphics/Rect;

    add-int v10, v3, v2

    invoke-direct {v8, v3, v11, v10, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 61
    .local v8, "rectSrc":Landroid/graphics/Rect;
    :goto_1
    if-lez v1, :cond_2

    if-lez v9, :cond_2

    if-gtz v2, :cond_4

    :cond_2
    move-object p1, v4

    .line 62
    goto :goto_0

    .line 56
    .end local v1    # "d":I
    .end local v3    # "offset":I
    .end local v8    # "rectSrc":Landroid/graphics/Rect;
    :cond_3
    move v1, v9

    .line 57
    .restart local v1    # "d":I
    sub-int v10, v2, v9

    shr-int/lit8 v3, v10, 0x1

    .line 58
    .restart local v3    # "offset":I
    new-instance v8, Landroid/graphics/Rect;

    add-int v10, v3, v9

    invoke-direct {v8, v11, v3, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v8    # "rectSrc":Landroid/graphics/Rect;
    goto :goto_1

    .line 66
    :cond_4
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v10}, Lgzt;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 67
    .local v4, "output":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    .line 70
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 73
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 74
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v10, v1

    int-to-float v11, v1

    invoke-direct {v7, v12, v12, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 78
    .local v7, "rectDst":Landroid/graphics/RectF;
    shr-int/lit8 v6, v1, 0x2

    .line 79
    .local v6, "radius":I
    int-to-float v10, v6

    int-to-float v11, v6

    invoke-virtual {v0, v7, v10, v11, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 82
    sget-object v10, Lhav;->b:Landroid/graphics/Xfermode;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 84
    invoke-virtual {v0, p1, v8, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move-object p1, v4

    .line 86
    goto :goto_0
.end method
