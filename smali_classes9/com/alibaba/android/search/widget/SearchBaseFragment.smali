.class public abstract Lcom/alibaba/android/search/widget/SearchBaseFragment;
.super Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
.source "SearchBaseFragment.java"


# instance fields
.field protected R:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/search/widget/SearchBaseFragment;->R:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    return-void
.end method


# virtual methods
.method protected d()Z
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/SearchBaseFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/SearchBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/SearchBaseFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/widget/SearchBaseFragment;->R:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v0, :cond_1

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/SearchBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/SearchBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lemt$g;->loading:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/widget/SearchBaseFragment;->R:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/widget/SearchBaseFragment;->R:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    goto :goto_0
.end method

.method public final t()V
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/alibaba/android/search/widget/SearchBaseFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/search/widget/SearchBaseFragment;->R:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/widget/SearchBaseFragment;->R:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/widget/SearchBaseFragment;->R:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alibaba/android/search/widget/SearchBaseFragment;->R:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    goto :goto_0
.end method
