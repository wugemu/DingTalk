.class public Lcom/taobao/av/ui/view/AutoFocusAnimationView;
.super Landroid/view/View;
.source "AutoFocusAnimationView.java"


# instance fields
.field public a:Landroid/view/animation/AlphaAnimation;

.field public b:F

.field public c:F

.field private d:Landroid/graphics/Bitmap;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x3d380000    # -100.0f

    .line 29
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object v2, p0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->d:Landroid/graphics/Bitmap;

    .line 22
    iput-object v2, p0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->a:Landroid/view/animation/AlphaAnimation;

    .line 23
    iput v1, p0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->b:F

    .line 24
    iput v1, p0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->c:F

    .line 31
    invoke-virtual {p0}, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ljou$b;->icon_focus:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 33
    .local v0, "bmDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->d:Landroid/graphics/Bitmap;

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->d:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->e:I

    .line 39
    iget-object v1, p0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->f:I

    .line 1082
    :cond_1
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3fa66666    # 1.3f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->a:Landroid/view/animation/AlphaAnimation;

    .line 1083
    iget-object v1, p0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->a:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 43
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x0

    .line 47
    new-instance v6, Landroid/view/animation/Transformation;

    invoke-direct {v6}, Landroid/view/animation/Transformation;-><init>()V

    .line 48
    .local v6, "outTransformation":Landroid/view/animation/Transformation;
    iget-object v9, p0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->a:Landroid/view/animation/AlphaAnimation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11, v6}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 49
    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    .line 50
    .local v5, "factor":F
    iget v9, p0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->e:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v8, v9

    .line 53
    .local v8, "width":I
    iget v9, p0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->b:F

    float-to-int v9, v9

    div-int/lit8 v10, v8, 0x2

    sub-int v1, v9, v10

    .line 54
    .local v1, "dstLeft":I
    iget v9, p0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->b:F

    float-to-int v9, v9

    div-int/lit8 v10, v8, 0x2

    add-int v3, v9, v10

    .line 55
    .local v3, "dstRight":I
    iget v9, p0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->c:F

    float-to-int v9, v9

    div-int/lit8 v10, v8, 0x2

    sub-int v4, v9, v10

    .line 56
    .local v4, "dstTop":I
    iget v9, p0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->c:F

    float-to-int v9, v9

    div-int/lit8 v10, v8, 0x2

    add-int v0, v9, v10

    .line 57
    .local v0, "dstBottom":I
    new-instance v7, Landroid/graphics/Rect;

    iget v9, p0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->e:I

    iget v10, p0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->f:I

    invoke-direct {v7, v12, v12, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 58
    .local v7, "srcRect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 60
    .local v2, "dstRect":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->d:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v7, v2, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 61
    iget-object v9, p0, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->a:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v9}, Landroid/view/animation/AlphaAnimation;->hasEnded()Z

    move-result v9

    if-nez v9, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->invalidate()V

    .line 71
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v9, Lcom/taobao/av/ui/view/AutoFocusAnimationView$1;

    invoke-direct {v9, p0}, Lcom/taobao/av/ui/view/AutoFocusAnimationView$1;-><init>(Lcom/taobao/av/ui/view/AutoFocusAnimationView;)V

    const-wide/16 v10, 0x96

    invoke-virtual {p0, v9, v10, v11}, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
