.class public Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "RecruitSecuritySettingActivity.java"


# instance fields
.field private a:Landroid/widget/ToggleButton;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ToggleButton;

.field private d:Landroid/view/View;

.field private e:Lcom/alibaba/wukong/im/Conversation;

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->a:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    .prologue
    .line 32
    .line 2179
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->a:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 2182
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->a:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 32
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->f:J

    return-wide v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->c:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    .prologue
    .line 32
    .line 2195
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->c:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 2198
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->c:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 32
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    .prologue
    .line 32
    .line 2230
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2231
    sget v1, Lctk$i;->ok:I

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$9;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$9;-><init>(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->cancel:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$8;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)V

    .line 2238
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2246
    sget v1, Lctk$i;->dt_im_recruitment_msg_mute_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2247
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 32
    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;

    .prologue
    .line 32
    .line 3211
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3212
    sget v1, Lctk$i;->ok:I

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$7;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->cancel:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$6;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)V

    .line 3217
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3225
    sget v1, Lctk$i;->and_black_list_desc2:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3226
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 32
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    const/16 v8, 0x8

    .line 44
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget v0, Lctk$g;->activity_recruitment_security_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->setContentView(I)V

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lctk$i;->dt_recruitment_anti_harassment:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    :cond_0
    sget v0, Lctk$f;->recruitment_notice_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->uidic_forms_item_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->a:Landroid/widget/ToggleButton;

    .line 51
    sget v0, Lctk$f;->recruitment_blacklist_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->b:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->b:Landroid/view/View;

    sget v1, Lctk$f;->uidic_forms_item_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->c:Landroid/widget/ToggleButton;

    .line 53
    sget v0, Lctk$f;->recruitment_report_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->d:Landroid/view/View;

    .line 1168
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1169
    if-eqz v0, :cond_1

    .line 1172
    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    .line 1173
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    .line 1174
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getPeerId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->f:J

    .line 2060
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_2

    .line 2061
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2062
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2155
    :goto_0
    return-void

    .line 2066
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->a:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->isNotificationEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2067
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    .line 2068
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v3, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 2095
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->f:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    .line 2096
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->f:J

    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)V

    const-class v6, Lcma;

    invoke-static {v0, v6, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JJLcma;)V

    .line 2154
    :goto_2
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->f:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_5

    .line 2155
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v7

    .line 2066
    goto :goto_1

    .line 2150
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2157
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2158
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;->d:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/RecruitSecuritySettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
