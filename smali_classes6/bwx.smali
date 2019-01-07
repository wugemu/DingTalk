.class public final Lbwx;
.super Ljava/lang/Object;
.source "HalfPlayerPresenter.java"

# interfaces
.implements Lbww$a;


# instance fields
.field private a:Lbww$b;


# direct methods
.method constructor <init>(Lbww$b;)V
    .locals 1
    .param p1, "view"    # Lbww$b;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lbwx;->a:Lbww$b;

    .line 22
    iget-object v0, p0, Lbwx;->a:Lbww$b;

    invoke-interface {v0, p0}, Lbww$b;->setPresenter(Lcjd;)V

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "contentView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v6, -0x1

    .line 27
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 33
    .local v3, "parent":Landroid/view/ViewParent;
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    move-object v4, v3

    .line 34
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 37
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 40
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "decorView":Landroid/view/View;
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v4

    invoke-virtual {v4}, Lbwr;->c()Z

    move-result v1

    .line 42
    .local v1, "isLandscape":Z
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    .line 43
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 45
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "decorView":Landroid/view/View;
    invoke-virtual {v0, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    if-eqz v1, :cond_4

    .line 49
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 52
    :cond_4
    iget-object v4, p0, Lbwx;->a:Lbww$b;

    invoke-interface {v4, v3}, Lbww$b;->a(Landroid/view/ViewParent;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method
