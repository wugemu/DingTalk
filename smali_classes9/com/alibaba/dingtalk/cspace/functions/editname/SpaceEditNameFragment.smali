.class public Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "SpaceEditNameFragment.java"

# interfaces
.implements Lget$b;


# instance fields
.field private a:Lget$a;

.field private b:Landroid/view/MenuItem;

.field private c:Ljava/lang/String;

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 48
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment$1;-><init>(Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->e:Ljava/lang/Runnable;

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method static a(Landroid/content/Intent;)Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 68
    if-nez p0, :cond_0

    move-object v0, v1

    .line 77
    :goto_0
    return-object v0

    .line 71
    :cond_0
    const-string/jumbo v2, "intent_key_args"

    .line 72
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 1014
    if-eqz v2, :cond_3

    .line 1017
    instance-of v3, v2, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;

    if-eqz v3, :cond_1

    .line 1018
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileFragment;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileFragment;-><init>()V

    .line 73
    .local v0, "fragment":Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;
    :goto_1
    if-nez v0, :cond_4

    move-object v0, v1

    .line 74
    goto :goto_0

    .line 1020
    .end local v0    # "fragment":Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;
    :cond_1
    instance-of v3, v2, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;

    if-nez v3, :cond_2

    instance-of v3, v2, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs;

    if-nez v3, :cond_2

    instance-of v2, v2, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;

    if-eqz v2, :cond_3

    .line 1023
    :cond_2
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;-><init>()V

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 1025
    goto :goto_1

    .line 76
    .restart local v0    # "fragment":Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;
    :cond_4
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->b:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;)Lget$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->a:Lget$a;

    return-object v0
.end method

.method private h()Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 207
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final H_()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 184
    .line 3200
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 184
    if-nez v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->h()Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v0

    .line 188
    .local v0, "activity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 221
    .line 5200
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 221
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 250
    .line 9200
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 250
    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->b:Landroid/view/MenuItem;

    invoke-static {v0, p1}, Lgpk;->a(Landroid/view/MenuItem;Z)V

    .line 253
    :cond_0
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorInfo"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 173
    .line 2200
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 173
    if-nez v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->h()Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v0

    .line 177
    .local v0, "activity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 228
    .line 6200
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 228
    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 235
    .line 7200
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 235
    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 238
    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 242
    .line 8200
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 242
    if-eqz v0, :cond_0

    .line 243
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->c:Ljava/lang/String;

    .line 244
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 246
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final synthetic e()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 214
    .line 4200
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 214
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 217
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 139
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->a:Lget$a;

    invoke-interface {v0}, Lget$a;->a()V

    .line 140
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "intent_key_args"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 2015
    if-eqz p0, :cond_0

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 89
    .local v0, "presenter":Lget$a;
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    .line 97
    .end local v0    # "presenter":Lget$a;
    :goto_1
    return-void

    .line 2018
    :cond_1
    instance-of v3, v1, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;

    if-eqz v3, :cond_2

    .line 2019
    new-instance v0, Lger;

    check-cast v1, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;

    invoke-direct {v0, p0, v2, v1}, Lger;-><init>(Lget$b;Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;)V

    goto :goto_0

    .line 2021
    :cond_2
    instance-of v3, v1, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;

    if-eqz v3, :cond_3

    .line 2022
    new-instance v0, Lges;

    check-cast v1, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;

    invoke-direct {v0, p0, v2, v1}, Lges;-><init>(Lget$b;Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;)V

    goto :goto_0

    .line 2024
    :cond_3
    instance-of v3, v1, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs;

    if-eqz v3, :cond_4

    .line 2025
    new-instance v0, Lgew;

    check-cast v1, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs;

    invoke-direct {v0, p0, v2, v1}, Lgew;-><init>(Lget$b;Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs;)V

    goto :goto_0

    .line 2027
    :cond_4
    instance-of v3, v1, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;

    if-eqz v3, :cond_0

    .line 2028
    new-instance v0, Lgev;

    check-cast v1, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;

    invoke-direct {v0, p0, v2, v1}, Lgev;-><init>(Lget$b;Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;)V

    goto :goto_0

    .line 93
    :cond_5
    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 94
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceEditNameFragment"

    const-string/jumbo v3, "onCreate: can not create presenter"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->g()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 144
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->c:Ljava/lang/String;

    :goto_0
    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->b:Landroid/view/MenuItem;

    .line 146
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->b:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 147
    return-void

    .line 144
    :cond_0
    sget v0, Lfzs$h;->sure:I

    .line 145
    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->I:Landroid/view/View;

    sget v1, Lfzs$f;->edt_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 108
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment$2;-><init>(Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 122
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment$3;-><init>(Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 131
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 132
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 151
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 156
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 153
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->a:Lget$a;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lget$a;->a(Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x1

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 101
    sget v0, Lfzs$g;->cspace_edit_name:I

    return v0
.end method

.method public synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 37
    check-cast p1, Lget$a;

    .line 10168
    invoke-static {p1}, Lgqb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lget$a;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->a:Lget$a;

    .line 37
    return-void
.end method
