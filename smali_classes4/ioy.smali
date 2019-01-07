.class public final Lioy;
.super Ljava/lang/Object;
.source "H5PullHeader.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/view/H5PullHeaderView;


# instance fields
.field public a:Landroid/widget/ProgressBar;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/content/Context;

.field public d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lioy;->c:Landroid/content/Context;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$layout;->h5_pull_header:I

    const/4 v2, 0x0

    .line 33
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lioy;->d:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lioy;->d:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_pullrefresh_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lioy;->a:Landroid/widget/ProgressBar;

    .line 35
    iget-object v0, p0, Lioy;->d:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_pullrefresh_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lioy;->b:Landroid/widget/TextView;

    .line 37
    invoke-virtual {p0}, Lioy;->setLastRefresh()V

    .line 38
    return-void
.end method


# virtual methods
.method public final getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lioy;->d:Landroid/view/View;

    return-object v0
.end method

.method public final onProgressUpdate(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 42
    return-void
.end method

.method public final onRefreshFinish()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public final setLastRefresh()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public final showFinish()V
    .locals 0

    .prologue
    .line 59
    invoke-virtual {p0}, Lioy;->setLastRefresh()V

    .line 60
    return-void
.end method

.method public final showLoading()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 52
    iget-object v0, p0, Lioy;->b:Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/nebula/R$string;->h5_refreshing:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    return-void
.end method

.method public final showOpen(I)V
    .locals 2
    .param p1, "style"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 46
    iget-object v0, p0, Lioy;->a:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lioy;->b:Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/nebula/R$string;->h5_pull_can_refresh:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 48
    return-void
.end method

.method public final showOver()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 75
    iget-object v0, p0, Lioy;->b:Landroid/widget/TextView;

    sget v1, Lcom/alipay/mobile/nebula/R$string;->h5_release_to_refresh:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 76
    return-void
.end method
