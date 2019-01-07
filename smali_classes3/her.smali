.class public final Lher;
.super Ljava/lang/Object;
.source "VerticalPageTransformer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transformPage(Landroid/view/View;F)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # F

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 13
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    neg-float v3, p2

    mul-float v0, v2, v3

    .line 15
    .local v0, "xPosition":F
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, p2, v2

    .line 17
    .local v1, "yPosition":F
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 19
    .end local v0    # "xPosition":F
    .end local v1    # "yPosition":F
    :cond_0
    return-void
.end method
