.class final Lcom/alibaba/android/user/settings/fragment/MineFragment$19;
.super Ljava/lang/Object;
.source "MineFragment.java"

# interfaces
.implements Landroid/support/v4/widget/NestedScrollView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/fragment/MineFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/fragment/MineFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$19;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/support/v4/widget/NestedScrollView;IIII)V
    .locals 4
    .param p1, "v"    # Landroid/support/v4/widget/NestedScrollView;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "oldScrollX"    # I
    .param p5, "oldScrollY"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 330
    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$19;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->f(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v1, v2

    .line 331
    .local v1, "height":F
    cmpl-float v2, v1, v3

    if-nez v2, :cond_0

    .line 338
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    div-float v0, v2, v1

    .line 335
    .local v0, "alpha":F
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 336
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 337
    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$19;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->f(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
