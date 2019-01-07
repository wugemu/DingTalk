.class public final Lhbd;
.super Lhaw;
.source "SquareImageDecoder.java"


# static fields
.field private static a:Landroid/graphics/Xfermode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lhbd;->a:Landroid/graphics/Xfermode;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lhaw;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "srcAvatar"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 26
    if-nez p1, :cond_1

    move-object p1, v4

    .line 59
    .end local p1    # "srcAvatar":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 29
    .restart local p1    # "srcAvatar":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 30
    .local v8, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 34
    .local v2, "height":I
    if-le v8, v2, :cond_2

    .line 35
    move v1, v2

    .line 36
    .local v1, "d":I
    sub-int v9, v8, v2

    shr-int/lit8 v3, v9, 0x1

    .line 37
    .local v3, "offset":I
    new-instance v7, Landroid/graphics/Rect;

    add-int v9, v3, v2

    invoke-direct {v7, v3, v10, v9, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 44
    .local v7, "rectSrc":Landroid/graphics/Rect;
    :goto_1
    if-lez v1, :cond_3

    if-lez v8, :cond_3

    if-lez v2, :cond_3

    .line 45
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v9}, Lgzt;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 46
    .local v4, "output":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    .line 49
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 50
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 51
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v9, v1

    int-to-float v10, v1

    invoke-direct {v6, v11, v11, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 53
    .local v6, "rectDst":Landroid/graphics/RectF;
    invoke-virtual {v0, v6, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 54
    sget-object v9, Lhbd;->a:Landroid/graphics/Xfermode;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 55
    invoke-virtual {v0, p1, v7, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move-object p1, v4

    .line 56
    goto :goto_0

    .line 39
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "d":I
    .end local v3    # "offset":I
    .end local v4    # "output":Landroid/graphics/Bitmap;
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "rectDst":Landroid/graphics/RectF;
    .end local v7    # "rectSrc":Landroid/graphics/Rect;
    :cond_2
    move v1, v8

    .line 40
    .restart local v1    # "d":I
    sub-int v9, v2, v8

    shr-int/lit8 v3, v9, 0x1

    .line 41
    .restart local v3    # "offset":I
    new-instance v7, Landroid/graphics/Rect;

    add-int v9, v3, v8

    invoke-direct {v7, v10, v3, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v7    # "rectSrc":Landroid/graphics/Rect;
    goto :goto_1

    :cond_3
    move-object p1, v4

    .line 59
    goto :goto_0
.end method
