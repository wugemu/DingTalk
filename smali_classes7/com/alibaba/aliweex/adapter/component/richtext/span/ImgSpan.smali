.class public Lcom/alibaba/aliweex/adapter/component/richtext/span/ImgSpan;
.super Landroid/text/style/ReplacementSpan;
.source "ImgSpan.java"

# interfaces
.implements Lcom/taobao/weex/adapter/IDrawableLoader$StaticTarget;


# instance fields
.field private height:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mView:Landroid/view/View;

.field private width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 222
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 223
    iput p1, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ImgSpan;->width:I

    .line 224
    iput p2, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ImgSpan;->height:I

    .line 225
    return-void
.end method

.method private setCallback()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ImgSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ImgSpan;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ImgSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ImgSpan;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 281
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 252
    iget-object v1, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ImgSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 254
    iget-object v1, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ImgSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p8, v1

    .line 255
    .local v0, "transY":I
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v0, v1

    .line 256
    int-to-float v1, v0

    invoke-virtual {p1, p5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 257
    iget-object v1, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ImgSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 258
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 260
    .end local v0    # "transY":I
    :cond_0
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 235
    if-eqz p5, :cond_0

    .line 236
    iget v0, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ImgSpan;->height:I

    neg-int v0, v0

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 237
    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 239
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 240
    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 242
    :cond_0
    iget v0, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ImgSpan;->width:I

    return v0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "resetBounds"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 264
    iput-object p1, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ImgSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 265
    if-eqz p2, :cond_0

    .line 266
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ImgSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ImgSpan;->width:I

    iget v2, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ImgSpan;->height:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/aliweex/adapter/component/richtext/span/ImgSpan;->setCallback()V

    .line 269
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ImgSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 270
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ImgSpan;->mView:Landroid/view/View;

    .line 274
    invoke-direct {p0}, Lcom/alibaba/aliweex/adapter/component/richtext/span/ImgSpan;->setCallback()V

    .line 275
    return-void
.end method
