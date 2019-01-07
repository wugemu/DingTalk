.class public final Lapf;
.super Ljava/lang/Object;
.source "BreatheInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 7
    .param p1, "input"    # F

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    float-to-double v2, p1

    const-wide/high16 v4, 0x3fc0000000000000L    # 0.125

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1

    .line 14
    mul-float v0, p1, v6

    .line 18
    :cond_0
    :goto_0
    return v0

    .line 15
    :cond_1
    float-to-double v2, p1

    const-wide/high16 v4, 0x3fec000000000000L    # 0.875

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 16
    sub-float/2addr v0, p1

    mul-float/2addr v0, v6

    goto :goto_0
.end method
