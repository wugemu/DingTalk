.class public Lcom/alibaba/android/user/contact/activities/AddDeptActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "AddDeptActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/ToggleButton;

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 61
    new-instance v0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/AddDeptActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/AddDeptActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/AddDeptActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/AddDeptActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/AddDeptActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/AddDeptActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/AddDeptActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/AddDeptActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/AddDeptActivity;

    .prologue
    const/4 v6, 0x0

    .line 47
    .line 2133
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-nez v0, :cond_0

    .line 2134
    const-string/jumbo v0, "org_add_subdept_ok_btn_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 2143
    :goto_0
    return-void

    .line 2137
    :cond_0
    const-string/jumbo v0, "org_add_subdept_ok_btn_click"

    const-string/jumbo v1, "org_id=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    .line 2315
    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2138
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2140
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2142
    sget v0, Lezg$l;->dept_name_not_null:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 2147
    :cond_1
    new-instance v2, Lfoz;

    invoke-direct {v2}, Lfoz;-><init>()V

    .line 2149
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v1, :cond_2

    .line 2150
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->toIDLModel()Lcen;

    move-result-object v1

    .line 2155
    :goto_1
    iput-object v1, v2, Lfoz;->b:Lcen;

    .line 2156
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v2, Lfoz;->c:Ljava/lang/Boolean;

    .line 2157
    new-instance v1, Lcen;

    invoke-direct {v1}, Lcen;-><init>()V

    iput-object v1, v2, Lfoz;->a:Lcen;

    .line 2158
    iget-object v1, v2, Lfoz;->a:Lcen;

    iput-object v0, v1, Lcen;->c:Ljava/lang/String;

    .line 2159
    iget-object v0, v2, Lfoz;->a:Lcen;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcen;->e:Ljava/lang/Integer;

    .line 2160
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->showLoadingDialog()V

    .line 2161
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    const-string/jumbo v0, "EVENTBUTLER"

    .line 2162
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/user/contact/activities/AddDeptActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity$3;-><init>(Lcom/alibaba/android/user/contact/activities/AddDeptActivity;)V

    const-class v6, Lcma;

    invoke-interface {v0, v3, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2161
    invoke-interface {v1, v4, v5, v2, v0}, Lezt;->a(JLfoz;Lcma;)V

    goto/16 :goto_0

    .line 2152
    :cond_2
    new-instance v1, Lcen;

    invoke-direct {v1}, Lcen;-><init>()V

    .line 2153
    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lcen;->b:Ljava/lang/Long;

    goto :goto_1
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/AddDeptActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/AddDeptActivity;

    .prologue
    .line 47
    .line 3216
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3217
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->c:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 47
    return-void

    .line 3216
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 233
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onBackPressed()V

    .line 235
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v0, :cond_0

    .line 236
    const-string/jumbo v0, "org_add_subdept_cancel_btn_click"

    const-string/jumbo v1, "org_id=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1315
    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    const-string/jumbo v0, "org_add_subdept_cancel_btn_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 244
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-nez v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->parent_name:I

    if-ne v0, v1, :cond_0

    .line 248
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/select_department.html"

    new-instance v2, Lcom/alibaba/android/user/contact/activities/AddDeptActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity$5;-><init>(Lcom/alibaba/android/user/contact/activities/AddDeptActivity;)V

    .line 249
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 77
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    sget v1, Lezg$j;->activity_add_dept:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->setContentView(I)V

    .line 1099
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1100
    if-eqz v1, :cond_0

    .line 1101
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "dept_object"

    .line 1102
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 1119
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lezg$j;->actbar_button:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1120
    sget v1, Lezg$h;->btn_ok:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->c:Landroid/widget/Button;

    .line 1121
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->c:Landroid/widget/Button;

    sget v3, Lezg$l;->finish:I

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 1122
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->c:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1123
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->c:Landroid/widget/Button;

    new-instance v3, Lcom/alibaba/android/user/contact/activities/AddDeptActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/AddDeptActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1107
    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->b:Landroid/view/View;

    .line 1108
    sget v1, Lezg$h;->et_dept_name:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->f:Landroid/widget/EditText;

    .line 1109
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->f:Landroid/widget/EditText;

    .line 1193
    new-instance v2, Lcom/alibaba/android/user/contact/activities/AddDeptActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity$4;-><init>(Lcom/alibaba/android/user/contact/activities/AddDeptActivity;)V

    .line 1109
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1110
    sget v1, Lezg$h;->parent_name:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    .line 1111
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setHintViewVisibility(I)V

    .line 1112
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setHint(Ljava/lang/String;)V

    .line 1113
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setRightArrow(I)V

    .line 1114
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;

    invoke-virtual {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1115
    sget v1, Lezg$h;->tb_create_group:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->d:Landroid/widget/ToggleButton;

    .line 82
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v2, Lezg$l;->add_child_dept:I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 84
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.workapp.choose.org.department"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->g:Landroid/content/BroadcastReceiver;

    .line 86
    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 87
    return-void

    .line 1112
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 91
    const/4 v1, 0x1

    sget v2, Lezg$l;->sure:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 92
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 93
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 95
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 227
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 228
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/AddDeptActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 229
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 222
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onResume()V

    .line 223
    return-void
.end method
