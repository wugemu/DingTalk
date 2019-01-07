.class final Ldmk$3;
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

.field final synthetic b:I

.field final synthetic c:Ldmk;


# direct methods
.method constructor <init>(Ldmk;II)V
    .locals 0
    .param p1, "this$0"    # Ldmk;

    .prologue
    .line 283
    iput-object p1, p0, Ldmk$3;->c:Ldmk;

    iput p2, p0, Ldmk$3;->a:I

    iput p3, p0, Ldmk$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 289
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 290
    .local v1, "currentValue":I
    const/16 v3, 0x5dc

    if-gt v1, v3, :cond_1

    .line 291
    int-to-float v3, v1

    mul-float/2addr v3, v6

    const v4, 0x44bb8000    # 1500.0f

    div-float v2, v3, v4

    .line 292
    .local v2, "scale":F
    const v3, 0x3f4ccccd    # 0.8f

    mul-float v0, v2, v3

    .line 293
    .local v0, "alteredScale":F
    iget-object v3, p0, Ldmk$3;->c:Ldmk;

    .line 1034
    iget-object v3, v3, Ldmk;->d:Landroid/widget/TextView;

    .line 293
    iget v4, p0, Ldmk$3;->a:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    sub-float v5, v6, v0

    mul-float/2addr v4, v5

    sub-float v5, v6, v0

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 295
    iget-object v3, p0, Ldmk$3;->c:Ldmk;

    .line 2034
    iget-object v3, v3, Ldmk;->d:Landroid/widget/TextView;

    .line 295
    iget v4, p0, Ldmk$3;->b:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    sub-float v5, v6, v0

    mul-float/2addr v4, v5

    sub-float v5, v6, v0

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 297
    iget-object v3, p0, Ldmk$3;->c:Ldmk;

    .line 3034
    iget-object v3, v3, Ldmk;->d:Landroid/widget/TextView;

    .line 297
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 298
    iget-object v3, p0, Ldmk$3;->c:Ldmk;

    .line 4034
    iget-object v3, v3, Ldmk;->d:Landroid/widget/TextView;

    .line 298
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setScaleY(F)V

    .line 299
    iget-object v3, p0, Ldmk$3;->c:Ldmk;

    .line 5034
    iget-object v3, v3, Ldmk;->f:Landroid/view/View;

    .line 299
    iget v4, p0, Ldmk$3;->b:I

    neg-int v4, v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 303
    .end local v0    # "alteredScale":F
    .end local v2    # "scale":F
    :cond_0
    :goto_0
    iget-object v3, p0, Ldmk$3;->c:Ldmk;

    .line 6034
    iget-object v3, v3, Ldmk;->d:Landroid/widget/TextView;

    .line 303
    iget-object v4, p0, Ldmk$3;->c:Ldmk;

    const/16 v5, 0xc8

    const/high16 v6, 0x40a00000    # 5.0f

    const/4 v7, 0x0

    .line 304
    invoke-static {v4, v1, v5, v6, v7}, Ldmk;->a(Ldmk;IIFF)F

    move-result v4

    .line 303
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setRotation(F)V

    .line 306
    return-void

    .line 300
    :cond_1
    const/16 v3, 0x1388

    if-ne v1, v3, :cond_0

    .line 301
    iget-object v3, p0, Ldmk$3;->c:Ldmk;

    invoke-static {v3}, Ldmk;->b(Ldmk;)V

    goto :goto_0
.end method
