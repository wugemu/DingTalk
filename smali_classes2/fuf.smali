.class public final Lfuf;
.super Lfud;
.source "CenterTopAndBottomStyle.java"


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "decoView"    # Landroid/view/View;
    .param p2, "topView"    # Landroid/view/View;
    .param p3, "offset"    # I

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lfud;-><init>(Landroid/view/View;Landroid/view/View;I)V

    .line 35
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

    .line 43
    iget-object v1, p0, Lfuf;->b:Landroid/view/View;

    if-nez v1, :cond_0

    .line 44
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 45
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0, v2, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lfuf;->b:Landroid/view/View;

    .line 47
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lfuf;->c:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 48
    iget-object v1, p0, Lfuf;->b:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 49
    iget-object v1, p0, Lfuf;->b:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    iget-object v1, p0, Lfuf;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lfuf$1;

    invoke-direct {v2, p0, p2, p1}, Lfuf$1;-><init>(Lfuf;Landroid/view/ViewGroup;Lfuc;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 82
    return-void
.end method
