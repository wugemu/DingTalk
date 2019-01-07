.class public Lcom/alibaba/aliweex/adapter/component/RoundCornerDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RoundCornerDrawable.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field radius:I

.field private rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;I)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "radius"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alibaba/aliweex/adapter/component/RoundCornerDrawable;->mPaint:Landroid/graphics/Paint;

    .line 18
    iput p2, p0, Lcom/alibaba/aliweex/adapter/component/RoundCornerDrawable;->radius:I

    .line 20
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/RoundCornerDrawable;->rect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/alibaba/aliweex/adapter/component/RoundCornerDrawable;->radius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alibaba/aliweex/adapter/component/RoundCornerDrawable;->radius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/RoundCornerDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 31
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/RoundCornerDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 36
    return-void
.end method

.method public setBounds(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/alibaba/aliweex/adapter/component/RoundCornerDrawable;->rect:Landroid/graphics/RectF;

    .line 26
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/RoundCornerDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 41
    return-void
.end method
