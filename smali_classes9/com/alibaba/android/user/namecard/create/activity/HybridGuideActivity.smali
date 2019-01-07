.class public Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "HybridGuideActivity.java"


# instance fields
.field private a:Lhlm;

.field private b:Lhlp;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;)Lhlp;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->b:Lhlp;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;Lhlp;)Lhlp;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;
    .param p1, "x1"    # Lhlp;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->b:Lhlp;

    return-object p1
.end method

.method private a(Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 2
    .param p1, "container"    # Landroid/widget/FrameLayout;
    .param p2, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, -0x2

    .line 101
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 106
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {p0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 108
    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;
    .param p1, "x1"    # Landroid/widget/FrameLayout;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->a(Landroid/widget/FrameLayout;Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->c:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    .local v2, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->ui_common_level1_contrary_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 52
    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->setContentView(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->setupImmersiveStatusBar()V

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->ui_common_level1_contrary_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->setImmersiveStatusBarBackgroundColor(I)V

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "page"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->d:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "params"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->e:Ljava/lang/String;

    .line 63
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->d:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const-string/jumbo v5, "?"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->d:Ljava/lang/String;

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "appId"

    const-string/jumbo v4, "2018112662280156"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getMiniAppInstance(Landroid/content/Context;Landroid/os/Bundle;)Lhlm;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->a:Lhlm;

    .line 68
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->a:Lhlm;

    if-eqz v3, :cond_0

    .line 69
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->a:Lhlm;

    invoke-interface {v3}, Lhlm;->b()Z

    move-result v1

    .line 70
    .local v1, "enableLaunch":Z
    if-eqz v1, :cond_3

    .line 71
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->a:Lhlm;

    iget-object v4, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->d:Ljava/lang/String;

    invoke-interface {v3, v4}, Lhlm;->b(Ljava/lang/String;)Lhlp;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->b:Lhlp;

    .line 72
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->b:Lhlp;

    if-eqz v3, :cond_2

    .line 73
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->b:Lhlp;

    invoke-interface {v3}, Lhlp;->a()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->a(Landroid/widget/FrameLayout;Landroid/view/View;)V

    .line 74
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->b:Lhlp;

    invoke-interface {v3}, Lhlp;->b()V

    goto :goto_0

    .line 76
    :cond_2
    const-string/jumbo v3, "async init instance fail"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lfxo;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->a:Lhlm;

    iget-object v4, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->d:Ljava/lang/String;

    new-instance v5, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity$1;

    invoke-direct {v5, p0, v2}, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity$1;-><init>(Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;Landroid/widget/FrameLayout;)V

    invoke-interface {v3, v4, v5}, Lhlm;->a(Ljava/lang/String;Lhln;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 150
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->b:Lhlp;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->b:Lhlp;

    invoke-interface {v0}, Lhlp;->g()V

    .line 153
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onPause()V

    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->b:Lhlp;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->b:Lhlp;

    invoke-interface {v0}, Lhlp;->e()V

    .line 135
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onResume()V

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->b:Lhlp;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->b:Lhlp;

    invoke-interface {v0}, Lhlp;->d()V

    .line 127
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onStart()V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->c:Z

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->b:Lhlp;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->b:Lhlp;

    invoke-interface {v0}, Lhlp;->c()V

    .line 119
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->c:Z

    .line 140
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onStop()V

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->b:Lhlp;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->b:Lhlp;

    invoke-interface {v0}, Lhlp;->f()V

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/create/activity/HybridGuideActivity;->finish()V

    .line 145
    return-void
.end method
