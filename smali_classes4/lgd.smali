.class public final Llgd;
.super Lcom/alibaba/doraemon/image/RecycleBitmapDrawable;
.source "DDGifDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private a:Llgf;


# direct methods
.method public constructor <init>(Llgf;)V
    .locals 1
    .param p1, "inner"    # Llgf;

    .prologue
    .line 23
    iget-object v0, p1, Llgf;->e:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/alibaba/doraemon/image/RecycleBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 24
    iput-object p1, p0, Llgd;->a:Llgf;

    .line 25
    iget-object v0, p0, Llgd;->a:Llgf;

    invoke-virtual {v0, p0}, Llgf;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 66
    :try_start_0
    iget-object v1, p0, Llgd;->a:Llgf;

    invoke-virtual {v1, p1}, Llgf;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    const-string/jumbo v1, "gif"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhcw;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getAlpha()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Llgd;->a:Llgf;

    invoke-virtual {v0}, Llgf;->getAlpha()I

    move-result v0

    return v0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Llgd;->a:Llgf;

    invoke-virtual {v0}, Llgf;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Llgd;->a:Llgf;

    invoke-virtual {v0}, Llgf;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Llgd;->a:Llgf;

    invoke-virtual {v0}, Llgf;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Llgd;->a:Llgf;

    invoke-virtual {v0}, Llgf;->getOpacity()I

    move-result v0

    return v0
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 120
    invoke-virtual {p0}, Llgd;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 121
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0, p1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    :cond_0
    return-void
.end method

.method public final isRunning()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Llgd;->a:Llgf;

    invoke-virtual {v0}, Llgf;->isRunning()Z

    move-result v0

    return v0
.end method

.method public final isStateful()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Llgd;->a:Llgf;

    invoke-virtual {v0}, Llgf;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 60
    iget-object v0, p0, Llgd;->a:Llgf;

    invoke-virtual {v0, p1}, Llgf;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 61
    return-void
.end method

.method protected final onStateChange([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .prologue
    .line 105
    iget-object v0, p0, Llgd;->a:Llgf;

    invoke-virtual {v0, p1}, Llgf;->onStateChange([I)Z

    move-result v0

    return v0
.end method

.method public final recycle()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Llgd;->a:Llgf;

    invoke-virtual {v0}, Llgf;->a()V

    .line 31
    return-void
.end method

.method public final scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 128
    invoke-virtual {p0}, Llgd;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 129
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 132
    :cond_0
    return-void
.end method

.method public final setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 45
    iget-object v0, p0, Llgd;->a:Llgf;

    invoke-virtual {v0, p1}, Llgf;->setAlpha(I)V

    .line 46
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 50
    iget-object v0, p0, Llgd;->a:Llgf;

    invoke-virtual {v0, p1}, Llgf;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 51
    return-void
.end method

.method public final setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 85
    iget-object v0, p0, Llgd;->a:Llgf;

    invoke-virtual {v0, p1}, Llgf;->setDither(Z)V

    .line 86
    return-void
.end method

.method public final setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Llgd;->a:Llgf;

    invoke-virtual {v0, p1}, Llgf;->setFilterBitmap(Z)V

    .line 81
    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 95
    iget-object v0, p0, Llgd;->a:Llgf;

    invoke-virtual {v0, p1}, Llgf;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 96
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 100
    iget-object v0, p0, Llgd;->a:Llgf;

    invoke-virtual {v0, p1}, Llgf;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 101
    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 115
    iget-object v0, p0, Llgd;->a:Llgf;

    invoke-virtual {v0, p1, p2}, Llgf;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public final start()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Llgd;->a:Llgf;

    invoke-virtual {v0}, Llgf;->start()V

    .line 145
    return-void
.end method

.method public final stop()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Llgd;->a:Llgf;

    invoke-virtual {v0}, Llgf;->stop()V

    .line 150
    return-void
.end method

.method public final unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 136
    invoke-virtual {p0}, Llgd;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 137
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0, p1, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 140
    :cond_0
    return-void
.end method
