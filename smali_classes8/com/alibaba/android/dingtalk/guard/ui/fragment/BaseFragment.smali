.class public abstract Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "BaseFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;)V
    .locals 13
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    .prologue
    const/4 v12, 0x2

    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 46
    .line 2354
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 2355
    :cond_0
    :goto_0
    return-void

    .line 2357
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 2358
    invoke-static {v5}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2362
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2363
    sget v1, Lbrx$e;->device_remind_dialog:I

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2365
    sget v0, Lbrx$d;->ding_attachment_iv_icon:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    .line 2366
    sget v1, Lbrx$d;->ding_attachment_title:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2367
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2368
    sget v1, Lbrx$d;->ding_attachment_content:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2369
    const-string/jumbo v2, ""

    .line 2370
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-wide v8, p2, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgId:J

    invoke-virtual {v3, v8, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v3

    .line 2371
    if-eqz v3, :cond_2

    .line 2372
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v2

    iget-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgNickName:Ljava/lang/String;

    invoke-virtual {v2, v7, v7, v4, v3}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2375
    :cond_2
    iget-object v4, p2, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgName:Ljava/lang/String;

    .line 2376
    sget v3, Lbrx$g;->dt_smartdevice_no_permission_binder_msg:I

    invoke-static {v3}, Leda;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v7, v12, [Ljava/lang/Object;

    iget-object v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->name:Ljava/lang/String;

    aput-object v8, v7, v10

    aput-object v4, v7, v11

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2377
    sget v7, Lbrx$g;->dt_smartdevice_no_permission_ding_content:I

    invoke-static {v7}, Leda;->a(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v2, v8, v10

    aput-object v4, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2378
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2380
    iget-object v1, p2, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v10}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->a(Ljava/lang/String;I)V

    .line 2382
    sget v0, Lbrx$g;->dt_smartdevice_no_permission_binder_title:I

    invoke-static {v0}, Leda;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v11, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;->name:Ljava/lang/String;

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2385
    new-instance v7, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v7, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2386
    invoke-virtual {v7, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2387
    invoke-virtual {v7, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2388
    sget v0, Lbrx$g;->at_cancel:I

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment$2;

    invoke-direct {v1, p0, v7}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment$2;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2397
    sget v6, Lbrx$g;->at_send:I

    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment$3;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment$3;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeBaseObject;)V

    invoke-virtual {v7, v6, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2430
    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0
.end method

.method private c()Lbsy;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 65
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lbsy;

    if-eqz v1, :cond_0

    .line 66
    check-cast v0, Lbsy;

    .line 68
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-object v0

    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public A()V
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->c()Lbsy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2096
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->c()Lbsy;

    move-result-object v0

    .line 2097
    if-eqz v0, :cond_0

    .line 2098
    invoke-interface {v0}, Lbsy;->a()V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->x()V

    goto :goto_0
.end method

.method public B()V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method public final C()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 299
    .local v0, "activity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 301
    .end local v0    # "activity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    :cond_0
    return-void
.end method

.method public final D()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 316
    .local v0, "activity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 318
    .end local v0    # "activity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    :cond_0
    return-void
.end method

.method public final a(I)Landroid/view/View;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->I:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;)V
    .locals 1
    .param p1, "group"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->m()Lbsw$b;

    move-result-object v0

    .line 104
    .local v0, "dataSource":Lbsw$b;
    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0, p1}, Lbsw$b;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;)V

    .line 107
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->m()Lbsw$b;

    move-result-object v0

    .line 111
    .local v0, "dataSource":Lbsw$b;
    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0, p1}, Lbsw$b;->c(Ljava/lang/String;)V

    .line 114
    :cond_0
    return-void
.end method

.method public final b(Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;)V
    .locals 7
    .param p1, "groupData"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 321
    if-nez p1, :cond_0

    .line 347
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->C()V

    .line 326
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgId:J

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment$1;

    invoke-direct {v4, p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;)V

    const-class v5, Lcma;

    .line 345
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 326
    invoke-interface {v0, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(JLcma;)V

    goto :goto_0
.end method

.method public final c(Lbsy$b;)V
    .locals 1
    .param p1, "listener"    # Lbsy$b;

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->l()Lbsw$c;

    move-result-object v0

    .line 213
    .local v0, "presenter":Lbsw$c;
    if-eqz v0, :cond_0

    .line 214
    invoke-interface {v0, p1}, Lbsw$c;->a(Lbsy$b;)V

    .line 216
    :cond_0
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method final l()Lbsw$c;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->c()Lbsy;

    move-result-object v0

    .line 73
    .local v0, "deviceBindUi":Lbsy;
    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0}, Lbsy;->x()Lbsw$c;

    move-result-object v1

    .line 76
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final m()Lbsw$b;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->c()Lbsy;

    move-result-object v0

    .line 81
    .local v0, "deviceBindUi":Lbsy;
    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0}, Lbsy;->y()Lbsw$b;

    move-result-object v1

    .line 84
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method n()Lbsw$e;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->c()Lbsy;

    move-result-object v0

    .line 89
    .local v0, "deviceBindUi":Lbsy;
    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0}, Lbsy;->w()Lbsw$e;

    move-result-object v1

    .line 92
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->n()Lbsw$e;

    move-result-object v0

    .line 119
    .local v0, "bindView":Lbsw$e;
    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0}, Lbsw$e;->o()V

    .line 122
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 233
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 234
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->y()Z

    move-result v0

    .line 235
    .local v0, "isTitleHidden":Z
    if-eqz v0, :cond_2

    .line 1254
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1255
    if-nez v1, :cond_1

    .line 240
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->z()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 241
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->I:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbrx$b;->device_sub_transparent:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 245
    :goto_1
    return-void

    .line 1258
    :cond_1
    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1261
    instance-of v2, v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v2, :cond_0

    .line 1262
    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->hideToolbar()V

    goto :goto_0

    .line 1267
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1268
    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1271
    instance-of v2, v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v2, :cond_0

    .line 1272
    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showToolbar()V

    goto :goto_0

    .line 243
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->I:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbrx$b;->device_background:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->setHasOptionsMenu(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 61
    return-void
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->n()Lbsw$e;

    move-result-object v0

    .line 127
    .local v0, "bindView":Lbsw$e;
    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0}, Lbsw$e;->h()V

    .line 130
    :cond_0
    return-void
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->n()Lbsw$e;

    move-result-object v0

    .line 134
    .local v0, "bindView":Lbsw$e;
    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0}, Lbsw$e;->i()V

    .line 137
    :cond_0
    return-void
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->n()Lbsw$e;

    move-result-object v0

    .line 141
    .local v0, "bindView":Lbsw$e;
    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0}, Lbsw$e;->j()V

    .line 144
    :cond_0
    return-void
.end method

.method public final s()V
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->n()Lbsw$e;

    move-result-object v0

    .line 148
    .local v0, "bindView":Lbsw$e;
    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0}, Lbsw$e;->k()V

    .line 151
    :cond_0
    return-void
.end method

.method public final t()V
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->n()Lbsw$e;

    move-result-object v0

    .line 176
    .local v0, "bindView":Lbsw$e;
    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0}, Lbsw$e;->r()V

    .line 179
    :cond_0
    return-void
.end method

.method public final u()V
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->n()Lbsw$e;

    move-result-object v0

    .line 190
    .local v0, "bindView":Lbsw$e;
    if-eqz v0, :cond_0

    .line 191
    invoke-interface {v0}, Lbsw$e;->t()V

    .line 193
    :cond_0
    return-void
.end method

.method public final v()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->n()Lbsw$e;

    move-result-object v0

    .line 197
    .local v0, "bindView":Lbsw$e;
    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0}, Lbsw$e;->u()Ljava/lang/String;

    move-result-object v1

    .line 200
    :goto_0
    return-object v1

    :cond_0
    sget v1, Lbrx$g;->dt_door_guard_default_device_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final w()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->m()Lbsw$b;

    move-result-object v0

    .line 205
    .local v0, "dataSource":Lbsw$b;
    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v0}, Lbsw$b;->u()Ljava/util/List;

    move-result-object v1

    .line 208
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final x()V
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 229
    :cond_0
    return-void
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public z()Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method
