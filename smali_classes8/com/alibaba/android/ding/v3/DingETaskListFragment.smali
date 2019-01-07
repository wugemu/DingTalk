.class public Lcom/alibaba/android/ding/v3/DingETaskListFragment;
.super Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;
.source "DingETaskListFragment.java"


# instance fields
.field c:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 49
    instance-of v0, p1, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    if-nez v0, :cond_0

    .line 62
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-void

    .line 52
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    check-cast p1, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .end local p1    # "view":Landroid/view/View;
    iput-object p1, p0, Lcom/alibaba/android/ding/v3/DingETaskListFragment;->c:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .line 53
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingETaskListFragment;->c:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    new-instance v1, Lcom/alibaba/android/ding/v3/DingETaskListFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/v3/DingETaskListFragment$1;-><init>(Lcom/alibaba/android/ding/v3/DingETaskListFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->setNewTabActionbarListener(Lcom/alibaba/android/ding/widget/DingNewTabActionBar$a;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 30
    .local v0, "rootView":Landroid/view/View;
    const-string/jumbo v1, "2018111362150241"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "page/list/index"

    .line 1099
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1100
    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "[EMiniBaseFragment]initEMiniView failed appId is empty"

    aput-object v2, v1, v7

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 34
    :goto_0
    return-object v0

    .line 1104
    :cond_0
    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "[EMiniBaseFragment]initEMiniView, appId:"

    aput-object v5, v4, v7

    aput-object v1, v4, v8

    const-string/jumbo v5, ", appVersion:"

    aput-object v5, v4, v9

    const/4 v5, 0x3

    aput-object v2, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, ", pageId:"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object v3, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, ", extras:"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string/jumbo v6, "null"

    .line 1107
    aput-object v6, v4, v5

    .line 1104
    invoke-static {v4}, Lbkd;->a([Ljava/lang/String;)V

    .line 1109
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1110
    const-string/jumbo v5, "appId"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1112
    const-string/jumbo v1, "appVersion"

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getMiniAppInstance(Landroid/content/Context;Landroid/os/Bundle;)Lhlm;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->a:Lhlm;

    .line 1130
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->a:Lhlm;

    if-nez v1, :cond_2

    .line 1131
    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "[EMiniBaseFragment]initEMiniView failed, appInstance is null"

    aput-object v2, v1, v7

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 1135
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->a:Lhlm;

    invoke-interface {v1}, Lhlm;->b()Z

    move-result v1

    .line 1136
    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v4, "[EMiniBaseFragment]enableLaunch:"

    aput-object v4, v2, v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 1137
    if-eqz v1, :cond_3

    .line 1138
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->a:Lhlm;

    invoke-interface {v1, v3}, Lhlm;->b(Ljava/lang/String;)Lhlp;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->b:Lhlp;

    .line 1139
    invoke-super {p0, v7}, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->a(Z)V

    goto/16 :goto_0

    .line 1143
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;->a:Lhlm;

    new-instance v2, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl$1;-><init>(Lcom/alibaba/android/ding/fragment/EMiniBaseFragmentImpl;)V

    invoke-interface {v1, v3, v2}, Lhlm;->a(Ljava/lang/String;Lhln;)V

    goto/16 :goto_0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 24
    sget v0, Laxp$g;->ding_e_fragment_task_list:I

    return v0
.end method
