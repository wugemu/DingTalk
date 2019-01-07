.class final Ldmk$1;
.super Ljava/lang/Object;
.source "ChatSceneViewer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldmk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:F

.field final synthetic c:Ldmk;


# direct methods
.method constructor <init>(Ldmk;IF)V
    .locals 1
    .param p1, "this$0"    # Ldmk;

    .prologue
    .line 201
    iput-object p1, p0, Ldmk$1;->c:Ldmk;

    const/16 v0, 0x1f4

    iput v0, p0, Ldmk$1;->a:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ldmk$1;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 208
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 209
    .local v0, "currentValue":I
    iget v2, p0, Ldmk$1;->a:I

    if-gt v0, v2, :cond_2

    iget-object v2, p0, Ldmk$1;->c:Ldmk;

    .line 1034
    iget-boolean v2, v2, Ldmk;->e:Z

    .line 209
    if-nez v2, :cond_2

    .line 210
    int-to-float v2, v0

    mul-float/2addr v2, v5

    const/high16 v3, 0x43fa0000    # 500.0f

    div-float v1, v2, v3

    .line 211
    .local v1, "scale":F
    iget-object v2, p0, Ldmk$1;->c:Ldmk;

    .line 2034
    iget-object v2, v2, Ldmk;->d:Landroid/widget/TextView;

    .line 211
    iget-object v3, p0, Ldmk$1;->c:Ldmk;

    .line 3034
    iget v3, v3, Ldmk;->j:I

    .line 211
    int-to-float v3, v3

    mul-float/2addr v3, v6

    sub-float v4, v5, v1

    mul-float/2addr v3, v4

    sub-float v4, v5, v1

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 212
    iget-object v2, p0, Ldmk$1;->c:Ldmk;

    .line 4034
    iget-object v2, v2, Ldmk;->d:Landroid/widget/TextView;

    .line 212
    iget-object v3, p0, Ldmk$1;->c:Ldmk;

    .line 5034
    iget v3, v3, Ldmk;->i:I

    .line 213
    int-to-float v3, v3

    mul-float/2addr v3, v6

    sub-float v4, v5, v1

    mul-float/2addr v3, v4

    sub-float v4, v5, v1

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 214
    iget-object v2, p0, Ldmk$1;->c:Ldmk;

    .line 6034
    iget-object v2, v2, Ldmk;->d:Landroid/widget/TextView;

    .line 214
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 215
    iget-object v2, p0, Ldmk$1;->c:Ldmk;

    .line 7034
    iget-object v2, v2, Ldmk;->d:Landroid/widget/TextView;

    .line 215
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 216
    iget-object v2, p0, Ldmk$1;->c:Ldmk;

    .line 8034
    iget-object v2, v2, Ldmk;->f:Landroid/view/View;

    .line 216
    iget-object v3, p0, Ldmk$1;->c:Ldmk;

    .line 9034
    iget v3, v3, Ldmk;->i:I

    .line 216
    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 218
    iget v2, p0, Ldmk$1;->b:F

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_0

    iget v2, p0, Ldmk$1;->b:F

    sub-float/2addr v2, v1

    float-to-double v2, v2

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 219
    :cond_0
    iget-object v2, p0, Ldmk$1;->c:Ldmk;

    invoke-static {v2}, Ldmk;->c(Ldmk;)V

    .line 224
    .end local v1    # "scale":F
    :cond_1
    :goto_0
    iget-object v2, p0, Ldmk$1;->c:Ldmk;

    .line 11034
    iget-object v2, v2, Ldmk;->d:Landroid/widget/TextView;

    .line 224
    iget-object v3, p0, Ldmk$1;->c:Ldmk;

    const/16 v4, 0x3e8

    const/high16 v5, 0x41a00000    # 20.0f

    const v6, 0x3fc90fdb

    .line 225
    invoke-static {v3, v0, v4, v5, v6}, Ldmk;->a(Ldmk;IIFF)F

    move-result v3

    .line 224
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setRotation(F)V

    .line 228
    return-void

    .line 221
    :cond_2
    iget v2, p0, Ldmk$1;->a:I

    if-le v0, v2, :cond_1

    iget-object v2, p0, Ldmk$1;->c:Ldmk;

    .line 10034
    iget-boolean v2, v2, Ldmk;->e:Z

    .line 221
    if-nez v2, :cond_1

    .line 222
    iget-object v2, p0, Ldmk$1;->c:Ldmk;

    invoke-static {v2}, Ldmk;->c(Ldmk;)V

    goto :goto_0
.end method
