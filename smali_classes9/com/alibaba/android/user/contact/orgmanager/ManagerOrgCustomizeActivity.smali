.class public Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "ManagerOrgCustomizeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lfli$b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Lfli$a;

.field private d:J

.field private e:Landroid/content/BroadcastReceiver;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 57
    const-string/jumbo v0, "logo"

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->a:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "title"

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->d:J

    return-wide v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;)Lfli$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->c:Lfli$a;

    return-object v0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->dismissLoadingDialog()V

    .line 190
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "oaTitle"    # Ljava/lang/String;

    .prologue
    .line 236
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->showLoadingDialog()V

    .line 185
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "nickName"    # Ljava/lang/String;
    .param p2, "logoMediaId"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 199
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    .line 118
    .local v6, "id":I
    sget v0, Lezg$h;->ll_org_logo:I

    if-ne v6, v0, :cond_2

    .line 4132
    const-string/jumbo v0, "org_management_personalized_logo_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 4133
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->c:Lfli$a;

    invoke-interface {v0}, Lfli$a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4163
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4164
    sget v1, Lezg$l;->dt_contact_certified_no_certified:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->dt_contact_certified_getCertified:I

    new-instance v2, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity$1;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;)V

    .line 4165
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->cancel:I

    .line 4172
    invoke-virtual {v0, v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 4173
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 4137
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4138
    const-string/jumbo v1, "album_single"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4139
    const-string/jumbo v1, "album_need_crop"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4140
    const-string/jumbo v1, "album_need_preview"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4141
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 121
    :cond_2
    sget v0, Lezg$h;->iv_org_logo:I

    if-ne v6, v0, :cond_0

    .line 5146
    const-string/jumbo v0, ""

    .line 5148
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->c:Lfli$a;

    invoke-interface {v1}, Lfli$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 5152
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5155
    new-array v2, v2, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 5156
    new-instance v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 5157
    iput-object v0, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    .line 5158
    aput-object v1, v2, v4

    .line 5159
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    move-object v1, p0

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 5149
    :catch_0
    move-exception v1

    .line 5150
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x3

    const/4 v10, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "org_id"

    const-wide/16 v6, -0x1

    invoke-static {v0, v4, v6, v7}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->d:J

    .line 68
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->d:J

    invoke-static {v4, v5}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->finish()V

    .line 77
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v0, Lflj;

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->d:J

    invoke-direct {v0, p0, p0, v4, v5}, Lflj;-><init>(Landroid/app/Activity;Lfli$b;J)V

    .line 74
    sget v0, Lezg$j;->activity_manager_org_customize:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->setContentView(I)V

    .line 1080
    sget v0, Lezg$l;->dt_contact_org_logo_v2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->setTitle(I)V

    .line 1083
    sget v0, Lezg$h;->ll_org_logo:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1084
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v5, "f_user_change_logo_title"

    .line 2083
    invoke-virtual {v0, v5, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 1084
    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1086
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1087
    sget v0, Lezg$h;->iv_org_logo:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1088
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1090
    sget v0, Lezg$h;->tv_org_logo_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1091
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->c:Lfli$a;

    invoke-interface {v4}, Lfli$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1092
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v4, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 1093
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1101
    :goto_2
    sget v0, Lezg$h;->tv_org_logo_des:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1102
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_user_change_logo_title"

    .line 3083
    invoke-virtual {v4, v5, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v4

    .line 1102
    if-eqz v4, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1104
    const-string/jumbo v4, "https://tms.dingtalk.com/markets/dingtalk/logoshowcase?isAuth=%d&orgId=%s&type=%s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->c:Lfli$a;

    invoke-interface {v2}, Lfli$a;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->d:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    const-string/jumbo v2, "logo"

    aput-object v2, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1105
    const-string/jumbo v5, "https://tms.dingtalk.com/markets/dingtalk/logoshowcase?isAuth=%d&orgId=%s&type=%s"

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->c:Lfli$a;

    invoke-interface {v2}, Lfli$a;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    iget-wide v8, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->d:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    const-string/jumbo v1, "title"

    aput-object v1, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1106
    sget v1, Lezg$l;->dt_contact_certify_clickToCertify:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1107
    sget v2, Lezg$l;->dt_contact_org_logo_desc:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1108
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1109
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x106000d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 1110
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->c:Lfli$a;

    invoke-interface {v3, p0, v2, v1, v4}, Lfli$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 3203
    new-instance v0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity$2;-><init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->e:Landroid/content/BroadcastReceiver;

    .line 3222
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3223
    const-string/jumbo v0, "com.workapp.choose.pictire.from.crop"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3224
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->e:Landroid/content/BroadcastReceiver;

    invoke-interface {v0, v2, p0, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/app/Activity;Landroid/content/IntentFilter;)V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 1084
    goto/16 :goto_1

    .line 1095
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v4, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 1096
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1097
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->c:Lfli$a;

    invoke-interface {v4}, Lfli$a;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->c:Lfli$a;

    invoke-interface {v5}, Lfli$a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    move v2, v1

    .line 1104
    goto/16 :goto_3

    :cond_5
    move v2, v1

    .line 1105
    goto/16 :goto_4
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->c:Lfli$a;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->c:Lfli$a;

    invoke-interface {v0}, Lfli$a;->i()V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->c:Lfli$a;

    .line 244
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 245
    return-void
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 55
    check-cast p1, Lfli$a;

    .line 5179
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->c:Lfli$a;

    .line 55
    return-void
.end method
