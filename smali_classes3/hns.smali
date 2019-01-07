.class public final Lhns;
.super Ljava/lang/Object;
.source "MiniAppLoadingViewProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContentView(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 19
    if-nez p1, :cond_0

    .line 34
    :goto_0
    return-object v0

    .line 23
    :cond_0
    iget-object v1, p0, Lhns;->b:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 24
    iget-object v0, p0, Lhns;->b:Landroid/view/View;

    goto :goto_0

    .line 27
    :cond_1
    sget v1, Lhdn$i;->miniapp_transparent_loading_layout:I

    invoke-static {v1}, Lhol;->a(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lhns;->b:Landroid/view/View;

    .line 28
    iget-object v1, p0, Lhns;->b:Landroid/view/View;

    if-nez v1, :cond_2

    .line 29
    sget v1, Lhdn$i;->miniapp_transparent_loading_layout:I

    invoke-static {p1, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lhns;->b:Landroid/view/View;

    .line 32
    :cond_2
    iget-object v0, p0, Lhns;->b:Landroid/view/View;

    sget v1, Lhdn$h;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhns;->a:Landroid/widget/TextView;

    .line 34
    iget-object v0, p0, Lhns;->b:Landroid/view/View;

    goto :goto_0
.end method

.method public final setIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 52
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lhns;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lhns;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :cond_0
    return-void
.end method

.method public final stopLoading(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 40
    return-void
.end method
