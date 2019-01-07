.class public final Lfue;
.super Lfud;
.source "CenterBottomStyle.java"


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1
    .param p1, "decoView"    # Landroid/view/View;
    .param p2, "offset"    # I

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfud;-><init>(Landroid/view/View;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Lfuc;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "viewInfo"    # Lfuc;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 38
    iget-object v1, p0, Lfue;->b:Landroid/view/View;

    if-nez v1, :cond_0

    .line 39
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 40
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0, v2, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lfue;->b:Landroid/view/View;

    .line 42
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lfue;->b:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 43
    iget-object v1, p0, Lfue;->b:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    iget-object v1, p0, Lfue;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lfue$1;

    invoke-direct {v2, p0, p2, p1}, Lfue$1;-><init>(Lfue;Landroid/view/ViewGroup;Lfuc;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 71
    return-void
.end method
