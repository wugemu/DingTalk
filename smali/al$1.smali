.class final Lal$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ImageViewUtilsApi14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lal;->a(Landroid/widget/ImageView;Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lal;


# direct methods
.method constructor <init>(Lal;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lal;

    .prologue
    .line 47
    iput-object p1, p0, Lal$1;->b:Lal;

    iput-object p2, p0, Lal$1;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 50
    iget-object v1, p0, Lal$1;->a:Landroid/widget/ImageView;

    sget v2, Lay$a;->save_scale_type:I

    .line 51
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView$ScaleType;

    .line 52
    .local v0, "scaleType":Landroid/widget/ImageView$ScaleType;
    iget-object v1, p0, Lal$1;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 53
    iget-object v1, p0, Lal$1;->a:Landroid/widget/ImageView;

    sget v2, Lay$a;->save_scale_type:I

    invoke-virtual {v1, v2, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 54
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_0

    .line 55
    iget-object v2, p0, Lal$1;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lal$1;->a:Landroid/widget/ImageView;

    sget v3, Lay$a;->save_image_matrix:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 56
    iget-object v1, p0, Lal$1;->a:Landroid/widget/ImageView;

    sget v2, Lay$a;->save_image_matrix:I

    invoke-virtual {v1, v2, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 58
    :cond_0
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 59
    return-void
.end method
