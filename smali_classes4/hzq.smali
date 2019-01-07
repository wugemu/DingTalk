.class public final Lhzq;
.super Ljava/lang/Object;
.source "SpringUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/animation/DynamicAnimation$ViewProperty;FFF)Landroid/support/animation/SpringAnimation;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "property"    # Landroid/support/animation/DynamicAnimation$ViewProperty;
    .param p2, "finalPosition"    # F
    .param p3, "stiffness"    # F
    .param p4, "dampingRadio"    # F

    .prologue
    .line 19
    new-instance v0, Landroid/support/animation/SpringAnimation;

    invoke-direct {v0, p0, p1}, Landroid/support/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroid/support/animation/FloatPropertyCompat;)V

    .line 20
    .local v0, "animation":Landroid/support/animation/SpringAnimation;
    new-instance v1, Landroid/support/animation/SpringForce;

    invoke-direct {v1, p2}, Landroid/support/animation/SpringForce;-><init>(F)V

    .line 21
    .local v1, "spring":Landroid/support/animation/SpringForce;
    invoke-virtual {v1, p3}, Landroid/support/animation/SpringForce;->setStiffness(F)Landroid/support/animation/SpringForce;

    .line 22
    invoke-virtual {v1, p4}, Landroid/support/animation/SpringForce;->setDampingRatio(F)Landroid/support/animation/SpringForce;

    .line 23
    invoke-virtual {v0, v1}, Landroid/support/animation/SpringAnimation;->setSpring(Landroid/support/animation/SpringForce;)Landroid/support/animation/SpringAnimation;

    .line 24
    return-object v0
.end method
