.class public Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;
.super Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;
.source "WMLErrorFragment.java"


# static fields
.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;


# instance fields
.field private i:Ljqk;

.field private j:Ljqe;

.field private k:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "key_error_title"

    sput-object v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->c:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "key_error_desc"

    sput-object v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->d:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "key_error_code"

    sput-object v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->e:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "key_error_msg"

    sput-object v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->f:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "key_hide_back_btn"

    sput-object v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->g:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "key_hide_action_bar"

    sput-object v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljqe;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->j:Ljqe;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->d()Ljqd;

    move-result-object v1

    if-nez v1, :cond_0

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 65
    :goto_0
    return-object v1

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->d()Ljqd;

    move-result-object v1

    invoke-interface {v1}, Ljqd;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->k:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    .line 55
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->k:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->k:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    if-nez v1, :cond_2

    .line 56
    :cond_1
    sget-object v0, Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;->PriArea2:Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    .line 62
    .local v0, "frameTempType":Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;
    :goto_1
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Ljqf;->a(Landroid/app/Activity;Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;)Ljqe;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->j:Ljqe;

    .line 64
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Ljqm;->a(Landroid/app/Activity;)Ljqk;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->i:Ljqk;

    .line 65
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->j:Ljqe;

    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->i:Ljqk;

    invoke-interface {v2}, Ljqk;->getView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljqe;->getView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 58
    .end local v0    # "frameTempType":Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;
    :cond_2
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->k:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v2, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->frameTempType:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    iget-boolean v1, v1, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->isHomePage:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    invoke-static {v2, v1}, Lcom/taobao/windmill/bundle/container/frame/FrameType;->a(Ljava/lang/String;Z)Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    move-result-object v0

    .restart local v0    # "frameTempType":Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;
    goto :goto_1

    .end local v0    # "frameTempType":Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public onHiddenChanged(Z)V
    .locals 1
    .param p1, "hidden"    # Z

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onHiddenChanged(Z)V

    .line 125
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->j:Ljqe;

    if-eqz v0, :cond_0

    .line 126
    if-nez p1, :cond_1

    .line 127
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->j:Ljqe;

    invoke-interface {v0}, Ljqe;->onResume()V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->j:Ljqe;

    invoke-interface {v0}, Ljqe;->onPause()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onPause()V

    .line 137
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->j:Ljqe;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->j:Ljqe;

    invoke-interface {v0}, Ljqe;->onPause()V

    .line 140
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onResume()V

    .line 145
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->j:Ljqe;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->j:Ljqe;

    invoke-interface {v0}, Ljqe;->onResume()V

    .line 148
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 70
    invoke-super {p0, p1, p2}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->d()Ljqd;

    move-result-object v7

    if-nez v7, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v7, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    if-eqz v7, :cond_2

    .line 77
    iget-object v7, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    invoke-virtual {v7}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getWindow()Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;

    move-result-object v6

    .line 86
    .local v6, "windowModel":Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;
    :goto_1
    iget-object v10, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->j:Ljqe;

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->d()Ljqd;

    move-result-object v7

    invoke-interface {v7}, Ljqd;->getRouter()Ljqr;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->d()Ljqd;

    move-result-object v7

    invoke-interface {v7}, Ljqd;->getRouter()Ljqr;

    move-result-object v7

    .line 1060
    iget-boolean v7, v7, Ljqr;->c:Z

    .line 86
    if-eqz v7, :cond_3

    move v7, v8

    :goto_2
    iget-object v11, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->k:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    iget-object v12, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    invoke-interface {v10, v7, v11, v6, v12}, Ljqe;->setData(ZLcom/taobao/windmill/bundle/container/core/AppInfoModel;Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;Lcom/taobao/windmill/bundle/container/router/WMLPageModel;)V

    .line 88
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 89
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v7, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "errorTitle":Ljava/lang/String;
    sget-object v7, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "errorDesc":Ljava/lang/String;
    sget-object v7, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "errorCode":Ljava/lang/String;
    sget-object v7, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "errorMsg":Ljava/lang/String;
    sget-object v7, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->g:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 94
    sget-object v7, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->h:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 96
    .local v5, "hideActionBar":Z
    iget-object v7, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->j:Ljqe;

    if-nez v5, :cond_4

    :goto_3
    invoke-interface {v7, v8}, Ljqe;->showActionbar(Z)V

    .line 98
    iget-object v7, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->j:Ljqe;

    new-instance v8, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment$1;

    invoke-direct {v8, p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment$1;-><init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;)V

    invoke-interface {v7, v8}, Ljqe;->setOnCloseClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v7, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->j:Ljqe;

    new-instance v8, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment$2;

    invoke-direct {v8, p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment$2;-><init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;)V

    invoke-interface {v7, v8}, Ljqe;->setOnBackClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 117
    iget-object v7, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->i:Ljqk;

    invoke-interface {v7, v4, v2, v1, v3}, Ljqk;->showError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "errorCode":Ljava/lang/String;
    .end local v2    # "errorDesc":Ljava/lang/String;
    .end local v3    # "errorMsg":Ljava/lang/String;
    .end local v4    # "errorTitle":Ljava/lang/String;
    .end local v5    # "hideActionBar":Z
    .end local v6    # "windowModel":Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;
    :cond_2
    new-instance v6, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;

    invoke-direct {v6}, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;-><init>()V

    .line 80
    .restart local v6    # "windowModel":Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;
    const-string/jumbo v7, "#eeeeee"

    iput-object v7, v6, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;->navigationBarBackgroundColor:Ljava/lang/String;

    .line 81
    const-string/jumbo v7, "dark"

    iput-object v7, v6, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;->backgroundTextStyle:Ljava/lang/String;

    .line 82
    iput-boolean v9, v6, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;->translucent:Z

    .line 83
    iput-boolean v8, v6, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$WindowModel;->showNavigationBar:Z

    goto/16 :goto_1

    :cond_3
    move v7, v9

    .line 86
    goto :goto_2

    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "errorCode":Ljava/lang/String;
    .restart local v2    # "errorDesc":Ljava/lang/String;
    .restart local v3    # "errorMsg":Ljava/lang/String;
    .restart local v4    # "errorTitle":Ljava/lang/String;
    .restart local v5    # "hideActionBar":Z
    :cond_4
    move v8, v9

    .line 96
    goto :goto_3
.end method
