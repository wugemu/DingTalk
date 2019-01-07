.class public abstract Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "WMLBaseFragment.java"


# instance fields
.field protected a:Ljqd;

.field protected b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljqe;
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    instance-of v0, p1, Ljqd;

    if-eqz v0, :cond_0

    .line 51
    check-cast p1, Ljqd;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->a:Ljqd;

    .line 53
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public final c()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 63
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v3, v0, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;

    if-eqz v3, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->getUserVisibleHint()Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v0, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 64
    goto :goto_0

    .line 66
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->getUserVisibleHint()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final d()Ljqd;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->a:Ljqd;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->a:Ljqd;

    .line 78
    :goto_0
    return-object v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Ljqd;

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Ljqd;

    iput-object v0, p0, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->a:Ljqd;

    .line 75
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->a:Ljqd;

    goto :goto_0

    .line 78
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 40
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "key_page_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    const-string/jumbo v1, "key_page_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    iput-object v1, p0, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    .line 43
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->a:Ljqd;

    .line 59
    return-void
.end method
