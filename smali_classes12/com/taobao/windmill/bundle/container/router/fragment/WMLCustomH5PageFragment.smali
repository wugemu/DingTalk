.class public Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;
.super Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;
.source "WMLCustomH5PageFragment.java"

# interfaces
.implements Ljqs;


# instance fields
.field private c:Ljqe;

.field private d:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final M_()Z
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;->e()Z

    move-result v0

    return v0
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
    .line 27
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;->d()Ljqd;

    move-result-object v2

    if-nez v2, :cond_0

    .line 28
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 37
    :goto_0
    return-object v2

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;->d()Ljqd;

    move-result-object v2

    invoke-interface {v2}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;->d:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    .line 32
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;->d:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->frameTempType:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    iget-boolean v3, v3, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->isHomePage:Z

    invoke-static {v2, v3}, Lcom/taobao/windmill/bundle/container/frame/FrameType;->a(Ljava/lang/String;Z)Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    move-result-object v1

    .line 34
    .local v1, "type":Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Ljqf;->a(Landroid/app/Activity;Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;)Ljqe;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;->c:Ljqe;

    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "h5View":Landroid/view/View;
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;->c:Ljqe;

    invoke-interface {v2, v0}, Ljqe;->getView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 82
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
    .line 42
    invoke-super {p0, p1, p2}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;->d()Ljqd;

    move-result-object v1

    if-nez v1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getWindow()Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;

    move-result-object v0

    .line 47
    .local v0, "windowModel":Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;->c:Ljqe;

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;->d()Ljqd;

    move-result-object v2

    invoke-interface {v2}, Ljqd;->getRouter()Ljqr;

    move-result-object v2

    .line 1060
    iget-boolean v2, v2, Ljqr;->c:Z

    .line 47
    iget-object v3, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;->d:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    iget-object v4, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    invoke-interface {v1, v2, v3, v0, v4}, Ljqe;->setData(ZLcom/taobao/windmill/bundle/container/core/AppInfoModel;Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;Lcom/taobao/windmill/bundle/container/router/WMLPageModel;)V

    .line 49
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;->c:Ljqe;

    new-instance v2, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment$1;

    invoke-direct {v2, p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment$1;-><init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;)V

    invoke-interface {v1, v2}, Ljqe;->setOnBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;->c:Ljqe;

    new-instance v2, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment$2;

    invoke-direct {v2, p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment$2;-><init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;)V

    invoke-interface {v1, v2}, Ljqe;->setOnCloseClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
