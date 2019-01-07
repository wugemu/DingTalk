.class public Lcom/amap/api/mapcore/util/eo;
.super Landroid/view/View;
.source "BlankView.java"


# static fields
.field public static final a:I

.field public static final b:I


# instance fields
.field private c:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/16 v0, 0xeb

    const/16 v1, 0x15

    .line 22
    invoke-static {v2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/amap/api/mapcore/util/eo;->a:I

    .line 23
    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/amap/api/mapcore/util/eo;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/eo;->c:Landroid/graphics/Paint;

    .line 33
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo;->c:Landroid/graphics/Paint;

    sget v1, Lcom/amap/api/mapcore/util/eo;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo;->c:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/amap/api/mapcore/util/eo;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/eo;->setVisibility(I)V

    .line 68
    :goto_0
    return-void

    .line 60
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/eo;->setVisibility(I)V

    .line 61
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 62
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 64
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 65
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/eo;->clearAnimation()V

    .line 66
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/eo;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/eo;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/eo;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/amap/api/mapcore/util/eo;->c:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 54
    return-void
.end method
