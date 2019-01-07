.class public Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;
.super Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;
.source "WMLCustomH5Fragment.java"


# static fields
.field private static c:Ljava/lang/String;


# instance fields
.field private d:Ljpv$a;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5Fragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->d:Ljpv$a;

    .line 24
    iput-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;)Ljqd;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->a:Ljqd;

    return-object v0
.end method

.method static synthetic b(Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->e:Ljava/lang/String;

    return-object v0
.end method

.method private f()Ljpv$a;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->d:Ljpv$a;

    if-nez v1, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 81
    .local v0, "lActivity":Landroid/support/v4/app/FragmentActivity;
    if-nez v0, :cond_0

    .line 82
    const/4 v1, 0x0

    .line 88
    .end local v0    # "lActivity":Landroid/support/v4/app/FragmentActivity;
    :goto_0
    return-object v1

    .line 85
    .restart local v0    # "lActivity":Landroid/support/v4/app/FragmentActivity;
    :cond_0
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v1

    .line 1145
    iget-object v1, v1, Ljpo;->c:Ljpo$a;

    iget-object v1, v1, Ljpo$a;->g:Ljpv;

    .line 85
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->getContext()Landroid/content/Context;

    invoke-interface {v1}, Ljpv;->a()Ljpv$a;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->d:Ljpv$a;

    .line 88
    .end local v0    # "lActivity":Landroid/support/v4/app/FragmentActivity;
    :cond_1
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->d:Ljpv$a;

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljqe;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->f()Ljpv$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->f()Ljpv$a;

    move-result-object v0

    invoke-interface {v0}, Ljpv$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->f()Ljpv$a;

    .line 94
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 105
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->e:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->b:Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    iget-boolean v0, v0, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->isHomePage:Z

    iput-boolean v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->f:Z

    .line 33
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 109
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 110
    .local v1, "rootView":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 112
    invoke-direct {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->f()Ljpv$a;

    move-result-object v3

    invoke-interface {v3}, Ljpv$a;->b()Landroid/view/View;

    move-result-object v2

    .line 113
    .local v2, "webView":Landroid/view/View;
    iget-object v3, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->e:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->d:Ljpv$a;

    if-eqz v3, :cond_0

    .line 114
    new-instance v0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment$1;

    invoke-direct {v0, p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment$1;-><init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;)V

    .line 120
    .local v0, "pageObject":Lcom/taobao/windmill/rt/runtime/WMLPageObject;
    iget-object v3, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->e:Ljava/lang/String;

    iput-object v3, v0, Lcom/taobao/windmill/rt/runtime/WMLPageObject;->f:Ljava/lang/String;

    .line 121
    sget-object v3, Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;->WEB:Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;

    iput-object v3, v0, Lcom/taobao/windmill/rt/runtime/WMLPageObject;->c:Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;

    .line 122
    new-instance v3, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment$2;

    invoke-direct {v3, p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment$2;-><init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;)V

    .line 150
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->d()Ljqd;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->d()Ljqd;

    move-result-object v3

    invoke-interface {v3}, Ljqd;->getAppLoadingView()Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->d()Ljqd;

    move-result-object v3

    invoke-interface {v3}, Ljqd;->getAppLoadingView()Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;

    move-result-object v3

    invoke-interface {v3}, Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;->onRenderSuccess()V

    .line 159
    .end local v0    # "pageObject":Lcom/taobao/windmill/rt/runtime/WMLPageObject;
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    return-object v1
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->d:Ljpv$a;

    if-eqz v1, :cond_0

    .line 38
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->d:Ljpv$a;

    .line 42
    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "var2":Ljava/lang/Exception;
    sget-object v1, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onHiddenChanged(Z)V
    .locals 4
    .param p1, "hidden"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onHiddenChanged(Z)V

    .line 172
    if-nez p1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->a:Ljqd;

    invoke-static {p0, v0}, Ljre;->a(Landroid/support/v4/app/Fragment;Ljqd;)V

    .line 175
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->a:Ljqd;

    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->e:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->f:Z

    invoke-static {v0, v1, v2, v3}, Ljre;->a(Landroid/app/Activity;Ljqd;Ljava/lang/String;Z)V

    .line 178
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onPause()V

    .line 55
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    invoke-super {p0}, Lcom/taobao/windmill/bundle/container/router/WMLBaseFragment;->onResume()V

    .line 63
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->a:Ljqd;

    invoke-static {p0, v0}, Ljre;->a(Landroid/support/v4/app/Fragment;Ljqd;)V

    .line 65
    invoke-virtual {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->a:Ljqd;

    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->e:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5Fragment;->f:Z

    invoke-static {v0, v1, v2, v3}, Ljre;->a(Landroid/app/Activity;Ljqd;Ljava/lang/String;Z)V

    .line 67
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    return-void
.end method
