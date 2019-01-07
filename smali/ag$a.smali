.class final Lag$a;
.super Ljava/lang/Object;
.source "GhostViewApi14.java"

# interfaces
.implements Lai$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Lai;
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "matrix"    # Landroid/graphics/Matrix;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-static {p1}, Lag;->a(Landroid/view/View;)Lag;

    move-result-object v1

    .line 51
    .local v1, "ghostView":Lag;
    if-nez v1, :cond_3

    move-object v2, p2

    .line 1084
    :goto_0
    instance-of v4, v2, Landroid/widget/FrameLayout;

    if-nez v4, :cond_1

    .line 1085
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1086
    instance-of v4, v2, Landroid/view/ViewGroup;

    if-nez v4, :cond_0

    move-object v0, v3

    .line 53
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    :goto_1
    if-nez v0, :cond_2

    move-object v2, v3

    .line 60
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    :goto_2
    return-object v2

    .line 1089
    :cond_0
    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_0

    .line 1091
    :cond_1
    check-cast v2, Landroid/widget/FrameLayout;

    move-object v0, v2

    goto :goto_1

    .line 56
    .restart local v0    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_2
    new-instance v1, Lag;

    .end local v1    # "ghostView":Lag;
    invoke-direct {v1, p1}, Lag;-><init>(Landroid/view/View;)V

    .line 57
    .restart local v1    # "ghostView":Lag;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 59
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_3
    iget v2, v1, Lag;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lag;->d:I

    move-object v2, v1

    .line 60
    goto :goto_2
.end method

.method public final a(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 65
    invoke-static {p1}, Lag;->a(Landroid/view/View;)Lag;

    move-result-object v0

    .line 66
    .local v0, "ghostView":Lag;
    if-eqz v0, :cond_0

    .line 67
    iget v3, v0, Lag;->d:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lag;->d:I

    .line 68
    iget v3, v0, Lag;->d:I

    if-gtz v3, :cond_0

    .line 69
    invoke-virtual {v0}, Lag;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 70
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 71
    check-cast v1, Landroid/view/ViewGroup;

    .line 72
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 73
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 77
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method
