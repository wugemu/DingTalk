.class public Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;
.super Landroid/widget/ImageView;
.source "RightDownTriangleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView$c;,
        Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView$a;,
        Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView$b;
    }
.end annotation


# static fields
.field private static c:F

.field private static k:Z


# instance fields
.field private a:Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView$b;

.field private b:Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView$a;

.field private d:F

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->c:F

    .line 207
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 35
    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->f:I

    .line 36
    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->g:Z

    .line 37
    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->h:Z

    .line 38
    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->i:Z

    .line 54
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->a()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->f:I

    .line 36
    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->g:Z

    .line 37
    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->h:Z

    .line 38
    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->i:Z

    .line 49
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->a()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->f:I

    .line 36
    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->g:Z

    .line 37
    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->h:Z

    .line 38
    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->i:Z

    .line 44
    invoke-direct {p0}, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->a()V

    .line 45
    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sget v2, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->c:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->d:F

    .line 60
    sget v1, Laxo$c;->alm_angle_color_unknow:I

    iput v1, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->f:I

    .line 61
    iget v1, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->f:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->e:I

    .line 62
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 152
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->getVisibility()I

    move-result v1

    .line 154
    .local v1, "visibility":I
    if-eqz v1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->getWidth()I

    move-result v2

    .line 158
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->getHeight()I

    move-result v0

    .line 159
    .local v0, "height":I
    if-lez v2, :cond_0

    if-gtz v0, :cond_0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 201
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 202
    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->a:Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView$b;

    .line 203
    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->b:Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView$a;

    .line 205
    return-void
.end method

.method public setAngleColorResId(I)V
    .locals 1
    .param p1, "angleColorResId"    # I

    .prologue
    .line 85
    if-gtz p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    :try_start_0
    iget v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->f:I

    if-eq v0, p1, :cond_0

    .line 92
    iput p1, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->f:I

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->e:I

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->i:Z

    .line 144
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 145
    return-void

    .line 136
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->i:Z

    goto :goto_0
.end method

.method public setImageContentObserver(Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView$c;)V
    .locals 0
    .param p1, "observer"    # Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView$c;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->j:Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView$c;

    .line 82
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->i:Z

    .line 127
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->i:Z

    goto :goto_0
.end method

.method public setImageDrawableWithoutObserver(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->i:Z

    .line 110
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/RightDownTriangleImageView;->i:Z

    goto :goto_0
.end method
