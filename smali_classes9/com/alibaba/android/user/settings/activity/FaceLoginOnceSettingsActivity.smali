.class public Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "FaceLoginOnceSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lfri$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;

    .prologue
    .line 42
    .line 1108
    new-instance v0, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;)V

    .line 1130
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;->a:Lfri$b;

    invoke-interface {v1, v0}, Lfri$b;->a(Lcma;)V

    .line 42
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;

    .prologue
    .line 42
    .line 1156
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_user_facebox_login_set"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1157
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1158
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;->a:Lfri$b;

    invoke-interface {v0}, Lfri$b;->g()V

    .line 1159
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;->finish()V

    .line 42
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;

    .prologue
    .line 42
    .line 2134
    new-instance v0, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity$3;-><init>(Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;)V

    .line 2152
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;->a:Lfri$b;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v0}, Lfri$b;->a(Ljava/lang/String;ILcma;)V

    .line 42
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 70
    .local v0, "vid":I
    sget v1, Lezg$h;->tv_start:I

    if-ne v0, v1, :cond_1

    .line 71
    const-string/jumbo v1, "facerecognition_start_click"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "facerecognition_start_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1080
    sget v1, Lezg$l;->dt_login_facebox_password_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1081
    sget v1, Lezg$l;->dt_login_facebox_password_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1083
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    new-instance v4, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;)V

    const-class v5, Lcma;

    invoke-interface {v1, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 1104
    const/4 v4, 0x1

    invoke-static {p0, v1, v3, v2, v4}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(Landroid/app/Activity;Lcma;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    sget v1, Lezg$h;->tv_face_close:I

    if-ne v0, v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v0, Lezg$j;->activity_face_login_once_settings:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;->setContentView(I)V

    .line 1054
    new-instance v0, Lfrk;

    invoke-direct {v0, p0}, Lfrk;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;->a:Lfri$b;

    .line 1055
    sget v0, Lezg$h;->tv_start:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1056
    sget v0, Lezg$h;->tv_face_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FaceLoginOnceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method
