.class final Lal;
.super Ljava/lang/Object;
.source "ImageViewUtilsApi14.java"

# interfaces
.implements Lan;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    .line 31
    .local v0, "scaleType":Landroid/widget/ImageView$ScaleType;
    sget v1, Lay$a;->save_scale_type:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 32
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_0

    .line 33
    sget v1, Lay$a;->save_image_matrix:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 37
    :goto_0
    sget-object v1, Lao;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 38
    return-void

    .line 35
    :cond_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/ImageView;Landroid/animation/Animator;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 47
    new-instance v0, Lal$1;

    invoke-direct {v0, p0, p1}, Lal$1;-><init>(Lal;Landroid/widget/ImageView;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 61
    return-void
.end method

.method public final a(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 42
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 43
    return-void
.end method
