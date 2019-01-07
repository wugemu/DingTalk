.class public final Lbj;
.super Ljava/lang/Object;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbj$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static a(Landroid/view/View;Lbh;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 13
    .param p0, "view"    # Landroid/view/View;
    .param p1, "values"    # Lbh;
    .param p2, "viewPosX"    # I
    .param p3, "viewPosY"    # I
    .param p4, "startX"    # F
    .param p5, "startY"    # F
    .param p6, "endX"    # F
    .param p7, "endY"    # F
    .param p8, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v6

    .line 52
    .local v6, "terminalX":F
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v7

    .line 53
    .local v7, "terminalY":F
    iget-object v2, p1, Lbh;->b:Landroid/view/View;

    sget v3, Lay$a;->transition_position:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    move-object v10, v2

    check-cast v10, [I

    .line 54
    .local v10, "startPosition":[I
    if-eqz v10, :cond_0

    .line 55
    const/4 v2, 0x0

    aget v2, v10, v2

    sub-int/2addr v2, p2

    int-to-float v2, v2

    add-float p4, v2, v6

    .line 56
    const/4 v2, 0x1

    aget v2, v10, v2

    sub-int v2, v2, p3

    int-to-float v2, v2

    add-float p5, v2, v7

    .line 59
    :cond_0
    sub-float v2, p4, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v4, p2, v2

    .line 60
    .local v4, "startPosX":I
    sub-float v2, p5, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v5, p3, v2

    .line 62
    .local v5, "startPosY":I
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 63
    move/from16 v0, p5

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 64
    cmpl-float v2, p4, p6

    if-nez v2, :cond_1

    cmpl-float v2, p5, p7

    if-nez v2, :cond_1

    .line 65
    const/4 v9, 0x0

    .line 76
    :goto_0
    return-object v9

    .line 67
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput p4, v11, v12

    const/4 v12, 0x1

    aput p6, v11, v12

    .line 68
    invoke-static {v8, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    aput-object v8, v2, v3

    const/4 v3, 0x1

    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    aput p5, v11, v12

    const/4 v12, 0x1

    aput p7, v11, v12

    .line 69
    invoke-static {v8, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    aput-object v8, v2, v3

    .line 67
    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 71
    .local v9, "anim":Landroid/animation/ObjectAnimator;
    new-instance v1, Lbj$a;

    iget-object v3, p1, Lbh;->b:Landroid/view/View;

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lbj$a;-><init>(Landroid/view/View;Landroid/view/View;IIFFB)V

    .line 73
    .local v1, "listener":Lbj$a;
    invoke-virtual {v9, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 74
    invoke-static {v9, v1}, Laa;->a(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 75
    move-object/from16 v0, p8

    invoke-virtual {v9, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0
.end method
