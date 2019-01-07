.class public Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "GroupAdminActivity.java"

# interfaces
.implements Lcvv$a;


# instance fields
.field private a:I

.field private b:Lcom/alibaba/wukong/im/Conversation;

.field private c:Lcvv;

.field private d:Landroid/widget/TextView;

.field private e:I

.field private f:I

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 60
    const/16 v0, 0xc

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->e:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;)Lcvv;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->c:Lcvv;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 52
    .line 3220
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3221
    :cond_0
    :goto_0
    return-void

    .line 3223
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->showLoadingDialog()V

    .line 3225
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;Ljava/util/List;Ljava/util/List;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-static {v1, p1, v0}, Ldjt;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method private b()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 159
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->c:Lcvv;

    invoke-virtual {v2}, Lcvv;->c()Ljava/util/List;

    move-result-object v0

    .line 160
    .local v0, "adminList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-nez v0, :cond_1

    move v2, v3

    :goto_0
    iput v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->f:I

    .line 161
    new-array v2, v8, [Ljava/lang/String;

    sget v4, Lctk$i;->dt_im_conversation_setting_admin_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "titleText":Ljava/lang/String;
    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->a:I

    sget-object v4, Lcom/alibaba/wukong/im/Member$RoleType;->MASTER:Lcom/alibaba/wukong/im/Member$RoleType;

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/Member$RoleType;->typeValue()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 163
    new-array v2, v6, [Ljava/lang/String;

    aput-object v1, v2, v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string/jumbo v5, "(%d/%d)"

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->f:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget v7, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->e:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    :cond_0
    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->a:I

    sget-object v4, Lcom/alibaba/wukong/im/Member$RoleType;->ADMIN:Lcom/alibaba/wukong/im/Member$RoleType;

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/Member$RoleType;->typeValue()I

    move-result v4

    if-ne v2, v4, :cond_2

    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->f:I

    if-nez v2, :cond_2

    .line 166
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->d:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    :goto_1
    return-void

    .line 160
    .end local v1    # "titleText":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 168
    .restart local v1    # "titleText":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->b()V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;

    .prologue
    .line 52
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->e:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 266
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_0

    .line 300
    :goto_0
    return-void

    .line 269
    :cond_0
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->f:I

    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->e:I

    if-lt v1, v2, :cond_1

    .line 270
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 271
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lctk$i;->dt_im_conversation_setting_admin_limit_alert:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->e:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 272
    sget v1, Lctk$i;->sure:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 273
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 275
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_1
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/group_chat_member.html"

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$4;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 5
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 304
    if-nez p1, :cond_0

    .line 358
    :goto_0
    return-void

    .line 307
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 308
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lctk$i;->dt_im_want_to_remove_admin_AT:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 309
    sget v1, Lctk$i;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 310
    sget v1, Lctk$i;->sure:I

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 357
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    sget v1, Lctk$g;->activity_group_admin:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->setContentView(I)V

    .line 1094
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1095
    const-string/jumbo v2, "intent_key_role_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->a:I

    .line 1096
    const-string/jumbo v2, "conversation"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Conversation;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 70
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->finish()V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 1099
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_2

    .line 1100
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v2, Lctk$i;->dt_im_conversation_setting_admin_title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1102
    :cond_2
    sget v1, Lctk$f;->tv_admin_num:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->d:Landroid/widget/TextView;

    .line 1104
    sget v1, Lctk$f;->lv_admin:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 1105
    new-instance v2, Lcvv;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->a:I

    invoke-direct {v2, p0, v3, v4}, Lcvv;-><init>(Landroid/app/Activity;Ljava/util/List;I)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->c:Lcvv;

    .line 1106
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->c:Lcvv;

    .line 2096
    iput-object p0, v2, Lcvv;->d:Lcvv$a;

    .line 1107
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->c:Lcvv;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1108
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->c:Lcvv;

    .line 3052
    iget-object v2, v2, Lcvv;->e:Landroid/view/View;

    .line 1108
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 75
    invoke-static {}, Ldjt;->a()I

    move-result v0

    .line 76
    .local v0, "maxCloudSetting":I
    if-lez v0, :cond_3

    .line 77
    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->e:I

    .line 3112
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->showLoadingDialog()V

    .line 3114
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;)V

    .line 3155
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    const-class v3, Lcma;

    invoke-static {v1, v3, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-static {v2, v1}, Ldjt;->a(Lcom/alibaba/wukong/im/Conversation;Lcma;)V

    .line 80
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->b()V

    .line 3174
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->g:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 3175
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->g:Landroid/content/BroadcastReceiver;

    .line 3214
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.workapp.choose.people.from.group.member"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3215
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 86
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->g:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 88
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupAdminActivity;->g:Landroid/content/BroadcastReceiver;

    .line 91
    :cond_0
    return-void
.end method
