.class final Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;
.super Landroid/graphics/drawable/Drawable;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/floatingmenu/Label;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/floatingmenu/Label;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 288
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;->a:Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 285
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;->b:Landroid/graphics/Paint;

    .line 286
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;->c:Landroid/graphics/Paint;

    .line 1293
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;->a:Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1295
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1296
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;->a:Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->a(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1298
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;->c:Landroid/graphics/Paint;

    invoke-static {}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->d()Landroid/graphics/Xfermode;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1300
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;->a:Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;->a:Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->b(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;->a:Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->c(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;->a:Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->d(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;->a:Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    invoke-static {v4}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->e(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 290
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/ding/widget/floatingmenu/Label;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;-><init>(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 307
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;->a:Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    .line 308
    invoke-static {v1}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->b(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;->a:Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->c(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;->a:Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    .line 309
    invoke-static {v2}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->b(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;->a:Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    invoke-static {v3}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->d(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;->a:Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    .line 310
    invoke-static {v3}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->f(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;->a:Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    .line 311
    invoke-static {v4}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->g(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 314
    .local v0, "shadowRect":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;->a:Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->h(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;->a:Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->h(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 315
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;->a:Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->h(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;->a:Lcom/alibaba/android/ding/widget/floatingmenu/Label;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/floatingmenu/Label;->h(Lcom/alibaba/android/ding/widget/floatingmenu/Label;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/floatingmenu/Label$a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 316
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 328
    const/4 v0, -0x3

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 320
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 324
    return-void
.end method
