.class public Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;
.super Landroid/widget/ImageView;
.source "AttachmentImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/cmail/widget/AttachmentImageView$a;
    }
.end annotation


# static fields
.field private static f:I

.field private static g:Z


# instance fields
.field private a:Lcom/alibaba/alimei/cmail/widget/AttachmentImageView$a;

.field private b:Z

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:Landroid/graphics/drawable/shapes/Shape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x3

    sput v0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->d:I

    .line 44
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->a(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->d:I

    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->a(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->d:I

    .line 54
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->a(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 59
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 62
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->c:Landroid/graphics/Paint;

    .line 63
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 65
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->cmail_color_f6f6f6:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->c:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 68
    sget-boolean v0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->g:Z

    if-nez v0, :cond_1

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    sget v1, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->f:I

    mul-int/2addr v0, v1

    sput v0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->f:I

    .line 70
    sput-boolean v3, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->g:Z

    .line 72
    :cond_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 145
    .local v0, "saveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 146
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 147
    iget v1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->d:I

    packed-switch v1, :pswitch_data_0

    .line 155
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 156
    return-void

    .line 150
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->e:Landroid/graphics/drawable/shapes/Shape;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->e:Landroid/graphics/drawable/shapes/Shape;

    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 124
    if-eqz p1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->e:Landroid/graphics/drawable/shapes/Shape;

    if-nez v1, :cond_0

    .line 134
    const/16 v1, 0x8

    new-array v0, v1, [F

    .line 135
    .local v0, "radius":[F
    sget v1, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->f:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 136
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    iput-object v1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->e:Landroid/graphics/drawable/shapes/Shape;

    .line 138
    .end local v0    # "radius":[F
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->e:Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    .line 140
    :cond_1
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->b:Z

    .line 98
    .local v0, "hasImageContent":Z
    if-nez p1, :cond_2

    .line 99
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->b:Z

    .line 104
    :goto_0
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->b:Z

    if-eq v0, v1, :cond_1

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentImageView$a;

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentImageView$a;

    iget-boolean v2, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->b:Z

    invoke-interface {v1, v2}, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView$a;->a(Z)V

    .line 109
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 110
    return-void

    .line 101
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->b:Z

    goto :goto_0
.end method

.method public setImageContentObserver(Lcom/alibaba/alimei/cmail/widget/AttachmentImageView$a;)V
    .locals 0
    .param p1, "observer"    # Lcom/alibaba/alimei/cmail/widget/AttachmentImageView$a;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentImageView$a;

    .line 76
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->b:Z

    .line 81
    .local v0, "hasImageContent":Z
    if-nez p1, :cond_2

    .line 82
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->b:Z

    .line 87
    :goto_0
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->b:Z

    if-eq v0, v1, :cond_1

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentImageView$a;

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentImageView$a;

    iget-boolean v2, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->b:Z

    invoke-interface {v1, v2}, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView$a;->a(Z)V

    .line 92
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    return-void

    .line 84
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentImageView;->b:Z

    goto :goto_0
.end method
