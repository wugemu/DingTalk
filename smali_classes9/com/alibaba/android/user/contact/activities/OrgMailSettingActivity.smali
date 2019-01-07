.class public Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "OrgMailSettingActivity.java"


# instance fields
.field private final a:I

.field private b:Landroid/view/View;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->a:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    .line 1111
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-static {p0, v0}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 1114
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->g:Ljava/lang/String;

    .line 1115
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->g:Ljava/lang/String;

    .line 1118
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1119
    sget v0, Lezg$l;->dt_manage_mail_setting_input_hint:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1126
    :goto_0
    return-void

    .line 1124
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->g:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->f:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1125
    sget v0, Lezg$l;->dt_mail_scs_invalid_address:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 1130
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_key_org_mail_setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1131
    const-string/jumbo v1, "intent_key_mail_name"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1132
    const-string/jumbo v1, "intent_key_mail_domain"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1133
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1135
    new-array v0, v5, [Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->g:Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->f:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Ljava/lang/String;)V

    .line 1136
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    sget v0, Lezg$j;->activity_manage_email_settings:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->setContentView(I)V

    .line 1080
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1081
    const-string/jumbo v1, "intent_key_mail_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->g:Ljava/lang/String;

    .line 1082
    const-string/jumbo v1, "intent_key_mail_domain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->f:Ljava/lang/String;

    .line 1087
    sget v0, Lezg$l;->dt_manage_mail_setting_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1090
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->actbar_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->b:Landroid/view/View;

    .line 1091
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->b:Landroid/view/View;

    sget v1, Lezg$h;->btn_ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->c:Landroid/widget/Button;

    .line 1092
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->c:Landroid/widget/Button;

    sget v1, Lezg$l;->save:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1093
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1101
    sget v0, Lezg$h;->et_manage_staff_email_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 1102
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1105
    :cond_0
    sget v0, Lezg$h;->tv_manage_staff_email_domain:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->d:Landroid/widget/TextView;

    .line 1106
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 70
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->b:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 71
    const/4 v1, 0x1

    sget v2, Lezg$l;->save:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 72
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgMailSettingActivity;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 73
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 75
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method
