.class public abstract Lcom/alibaba/android/rimet/widget/BaseFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "BaseFragment.java"


# instance fields
.field public f:Landroid/os/Bundle;

.field public g:Landroid/view/View;

.field public h:Landroid/support/v7/app/ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final F()Z
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/widget/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/widget/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/widget/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/widget/BaseFragment;->setHasOptionsMenu(Z)V

    .line 57
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/widget/BaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/rimet/widget/BaseFragment;->f:Landroid/os/Bundle;

    .line 28
    iget-object v1, p0, Lcom/alibaba/android/rimet/widget/BaseFragment;->f:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/rimet/widget/BaseFragment;->f:Landroid/os/Bundle;

    .line 32
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/widget/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/rimet/widget/BaseFragment;->h:Landroid/support/v7/app/ActionBar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/widget/BaseFragment;->r_()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/widget/BaseFragment;->g:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/alibaba/android/rimet/widget/BaseFragment;->g:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 61
    :try_start_0
    const-class v2, Landroid/support/v4/app/Fragment;

    const-string/jumbo v3, "mChildFragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 62
    .local v0, "childFragmentManager":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 63
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v0    # "childFragmentManager":Ljava/lang/reflect/Field;
    :goto_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDetach()V

    .line 69
    return-void

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public abstract r_()I
.end method
