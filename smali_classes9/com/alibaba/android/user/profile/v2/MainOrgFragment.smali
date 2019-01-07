.class public Lcom/alibaba/android/user/profile/v2/MainOrgFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "MainOrgFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/MainOrgFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onPause()V

    .line 64
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onResume()V

    .line 59
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lezg$j;->main_org_fragment_layout:I

    return v0
.end method
