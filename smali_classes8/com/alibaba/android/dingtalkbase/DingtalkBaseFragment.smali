.class public abstract Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "DingtalkBaseFragment.java"


# instance fields
.field public G:Landroid/app/Application;

.field public H:Landroid/os/Bundle;

.field public I:Landroid/view/View;

.field public J:Landroid/support/v7/app/ActionBar;

.field protected K:Lcif;

.field protected L:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->L:Z

    return-void
.end method


# virtual methods
.method public F()Z
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public F_()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public G()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public H()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcif;)V
    .locals 2
    .param p1, "binder"    # Lcif;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->K:Lcif;

    .line 154
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->n_()Lcif$a;

    move-result-object v0

    .line 2162
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->K:Lcif;

    if-eqz v1, :cond_0

    .line 2163
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->K:Lcif;

    .line 3052
    iput-object v0, v1, Lcif;->d:Lcif$a;

    .line 155
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->G:Landroid/app/Application;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    goto :goto_0
.end method

.method public n_()Lcif$a;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->setHasOptionsMenu(Z)V

    .line 96
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->G:Landroid/app/Application;

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->H:Landroid/os/Bundle;

    .line 64
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->H:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->H:Landroid/os/Bundle;

    .line 68
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->J:Landroid/support/v7/app/ActionBar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_1
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->r_()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->I:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 131
    .local v0, "magician":Lcom/alibaba/doraemon/image/ImageMagician;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->unBindViews(Landroid/app/Activity;)V

    .line 135
    .end local v0    # "magician":Lcom/alibaba/doraemon/image/ImageMagician;
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 136
    return-void
.end method

.method public onDetach()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 117
    :try_start_0
    const-class v2, Landroid/support/v4/app/Fragment;

    const-string/jumbo v3, "mChildFragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 118
    .local v0, "childFragmentManager":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 119
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "childFragmentManager":Ljava/lang/reflect/Field;
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 125
    return-void

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 108
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 109
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->L:Z

    if-eqz v0, :cond_0

    .line 1192
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1193
    :cond_0
    :goto_0
    return-void

    .line 1195
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1196
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1198
    if-eqz v0, :cond_2

    .line 1199
    const-string/jumbo v2, "ut-map"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1200
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 1202
    :try_start_0
    check-cast v0, Ljava/util/Map;

    .line 1203
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    :cond_2
    :goto_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->I()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p0, v2, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->leavePage(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 1204
    :catch_0
    move-exception v0

    .line 1205
    const-string/jumbo v2, "DingtalkBase"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[DingtalkBaseFragment] trackPageLeave error="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 1206
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 1205
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 100
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 101
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->L:Z

    if-eqz v0, :cond_0

    .line 1182
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1183
    :cond_0
    :goto_0
    return-void

    .line 1185
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1186
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->I()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->trackPageEnter(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1187
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->J()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->updatePageSpmCnt(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public abstract r_()I
.end method
