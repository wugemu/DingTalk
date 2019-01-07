.class Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "BoxShadowUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/BoxShadowUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OverflowBitmapDrawable"
.end annotation


# instance fields
.field private paddingX:I

.field private paddingY:I

.field private radii:[F

.field private viewRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Rect;[F)V
    .locals 5
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "topLeft"    # Landroid/graphics/Point;
    .param p4, "viewRect"    # Landroid/graphics/Rect;
    .param p5, "radii"    # [F

    .prologue
    .line 388
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 389
    iget v0, p3, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->paddingX:I

    .line 390
    iget v0, p3, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->paddingY:I

    .line 391
    iput-object p4, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->viewRect:Landroid/graphics/Rect;

    .line 392
    iput-object p5, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->radii:[F

    .line 394
    iget v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->paddingX:I

    neg-int v0, v0

    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->paddingY:I

    neg-int v1, v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->paddingX:I

    add-int/2addr v2, v3

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->paddingY:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->setBounds(IIII)V

    .line 395
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Rect;[FLcom/taobao/weex/utils/BoxShadowUtil$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/res/Resources;
    .param p2, "x1"    # Landroid/graphics/Bitmap;
    .param p3, "x2"    # Landroid/graphics/Point;
    .param p4, "x3"    # Landroid/graphics/Rect;
    .param p5, "x4"    # [F
    .param p6, "x5"    # Lcom/taobao/weex/utils/BoxShadowUtil$1;

    .prologue
    .line 381
    invoke-direct/range {p0 .. p5}, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Rect;[F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 398
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 399
    .local v0, "bounds":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 401
    .local v2, "newRect":Landroid/graphics/Rect;
    iget v4, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->paddingX:I

    neg-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->paddingY:I

    neg-int v5, v5

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 402
    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 404
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 406
    .local v1, "contentPath":Landroid/graphics/Path;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 407
    .local v3, "rectF":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->radii:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 409
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 412
    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 414
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 415
    return-void
.end method
