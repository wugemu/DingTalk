.class public final Lcap;
.super Ljava/lang/Object;
.source "Rotate3DAnimationUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;FF)V
    .locals 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    const/4 v7, 0x0

    const/high16 v5, 0x42b80000    # 92.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v6, 0x1

    .line 18
    invoke-static {v7, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    div-float v3, v1, v2

    .line 19
    .local v3, "centerX":F
    invoke-static {v7, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    div-float v4, v1, v2

    .line 23
    .local v4, "centerY":F
    new-instance v0, Lcao;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v5, 0x439b0000    # 310.0f

    invoke-direct/range {v0 .. v6}, Lcao;-><init>(FFFFFZ)V

    .line 25
    .local v0, "rotation":Lcao;
    const-wide/16 v8, 0x3e8

    invoke-virtual {v0, v8, v9}, Lcao;->setDuration(J)V

    .line 26
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcao;->setRepeatCount(I)V

    .line 27
    invoke-virtual {v0, v6}, Lcao;->setFillAfter(Z)V

    .line 28
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcao;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 29
    invoke-virtual {v0, v6}, Lcao;->setRepeatMode(I)V

    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 31
    return-void
.end method
