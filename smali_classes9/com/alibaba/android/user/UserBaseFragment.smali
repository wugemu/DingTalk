.class public abstract Lcom/alibaba/android/user/UserBaseFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "UserBaseFragment.java"


# instance fields
.field protected a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/UserBaseFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    return-void
.end method


# virtual methods
.method public final C_()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/android/user/UserBaseFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/UserBaseFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v0, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/android/user/UserBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alibaba/android/user/UserBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lezg$l;->loading:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/UserBaseFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/UserBaseFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/alibaba/android/user/UserBaseFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/UserBaseFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/UserBaseFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/UserBaseFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/user/UserBaseFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    goto :goto_0
.end method
