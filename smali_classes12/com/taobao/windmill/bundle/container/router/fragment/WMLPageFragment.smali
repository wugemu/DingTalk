.class public Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;
.super Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;
.source "WMLPageFragment.java"


# instance fields
.field private d:Ljqe;

.field private e:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljqe;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->d:Ljqe;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->d()Ljqd;

    move-result-object v2

    if-nez v2, :cond_0

    .line 31
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 40
    :goto_0
    return-object v2

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->d()Ljqd;

    move-result-object v2

    invoke-interface {v2}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->e:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    .line 35
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->e:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->frameTempType:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    iget-boolean v3, v3, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->isHomePage:Z

    invoke-static {v2, v3}, Lcom/taobao/windmill/bundle/container/frame/FrameType;->a(Ljava/lang/String;Z)Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    move-result-object v1

    .line 37
    .local v1, "type":Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Ljqf;->a(Landroid/app/Activity;Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;)Ljqe;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->d:Ljqe;

    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "mWeexView":Landroid/view/View;
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->d:Ljqe;

    invoke-interface {v2, v0}, Ljqe;->getView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public onHiddenChanged(Z)V
    .locals 1
    .param p1, "hidden"    # Z

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->onHiddenChanged(Z)V

    .line 95
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->d:Ljqe;

    if-eqz v0, :cond_0

    .line 96
    if-nez p1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->d:Ljqe;

    invoke-interface {v0}, Ljqe;->onResume()V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->d:Ljqe;

    invoke-interface {v0}, Ljqe;->onPause()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->onPause()V

    .line 107
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->d:Ljqe;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->d:Ljqe;

    invoke-interface {v0}, Ljqe;->onPause()V

    .line 110
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->onResume()V

    .line 115
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->d:Ljqe;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->d:Ljqe;

    invoke-interface {v0}, Ljqe;->onResume()V

    .line 118
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->d()Ljqd;

    move-result-object v1

    if-nez v1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getWindow()Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;

    move-result-object v0

    .line 50
    .local v0, "windowModel":Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;
    if-nez v0, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->d()Ljqd;

    move-result-object v1

    invoke-interface {v1}, Ljqd;->getManifest()Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->defaultWindow:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;

    if-eqz v1, :cond_2

    .line 52
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->d()Ljqd;

    move-result-object v1

    invoke-interface {v1}, Ljqd;->getManifest()Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    move-result-object v1

    iget-object v0, v1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;->defaultWindow:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;

    .line 58
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->d:Ljqe;

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->d()Ljqd;

    move-result-object v2

    invoke-interface {v2}, Ljqd;->getRouter()Ljqr;

    move-result-object v2

    .line 1060
    iget-boolean v2, v2, Ljqr;->c:Z

    .line 58
    iget-object v3, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->e:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    iget-object v4, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    invoke-interface {v1, v2, v3, v0, v4}, Ljqe;->setData(ZLcom/taobao/windmill/bundle/container/core/AppInfoModel;Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;Lcom/taobao/windmill/bundle/container/router/WMLPageModel;)V

    .line 61
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->d:Ljqe;

    new-instance v2, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment$1;

    invoke-direct {v2, p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment$1;-><init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;)V

    invoke-interface {v1, v2}, Ljqe;->setOnBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->d:Ljqe;

    new-instance v2, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment$2;

    invoke-direct {v2, p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment$2;-><init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;)V

    invoke-interface {v1, v2}, Ljqe;->setOnCloseClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 54
    :cond_2
    new-instance v0, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;

    .end local v0    # "windowModel":Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;
    invoke-direct {v0}, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;-><init>()V

    .restart local v0    # "windowModel":Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;
    goto :goto_1
.end method
