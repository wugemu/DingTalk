.class final Landroid/support/transition/Slide$2;
.super Landroid/support/transition/Slide$b;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/transition/Slide$b;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Landroid/view/View;)F
    .locals 4
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 101
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->f(Landroid/view/View;)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 104
    .local v0, "isRtl":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v1, v2, v3

    .line 109
    .local v1, "x":F
    :goto_1
    return v1

    .line 101
    .end local v0    # "isRtl":Z
    .end local v1    # "x":F
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 107
    .restart local v0    # "isRtl":Z
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v1, v2, v3

    .restart local v1    # "x":F
    goto :goto_1
.end method
