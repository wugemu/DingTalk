.class public final Lhzo;
.super Ljava/lang/Object;
.source "SpringInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 2
    .param p1, "t"    # F

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 20
    const v0, 0x3eeeef5f    # 0.46667f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1030
    const v0, 0x4092f1aa    # 4.592f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    .line 25
    :goto_0
    return v0

    .line 22
    :cond_0
    const v0, 0x3f3bbb84

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 1034
    const/high16 v0, 0x40200000    # 2.5f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    const v1, 0x3fed82fd

    add-float/2addr v0, v1

    .line 23
    goto :goto_0

    .line 1038
    :cond_1
    const/high16 v0, 0x3f200000    # 0.625f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const v1, 0x3f8a3d71    # 1.08f

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    const v1, 0x3fba9fbe    # 1.458f

    add-float/2addr v0, v1

    .line 25
    goto :goto_0
.end method
