.class public Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "FaceLoginSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/widget/ToggleButton;

.field b:Landroid/view/View;

.field c:Lfri$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    .prologue
    .line 45
    .line 3117
    new-instance v0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;)V

    .line 3135
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->c:Lfri$b;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3, v0}, Lfri$b;->a(Ljava/lang/String;ILcma;)V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    .line 5139
    new-instance v0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$3;-><init>(Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;)V

    .line 5159
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5160
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->c:Lfri$b;

    const/4 v2, 0x3

    invoke-interface {v1, v2, p1, v0}, Lfri$b;->a(ILjava/lang/String;Lcma;)V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 45
    .line 3256
    const-string/jumbo v0, "32"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3257
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3258
    sget v1, Lezg$l;->dt_face_box_reset_error_oneself:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$8;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$8;-><init>(Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 3264
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 3270
    :goto_0
    return-void

    .line 3269
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3270
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->c:Lfri$b;

    sget v1, Lezg$l;->dt_face_box_verify_fail:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lfri$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3272
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->c:Lfri$b;

    invoke-interface {v0, p1, p2}, Lfri$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    .line 3277
    if-eqz p1, :cond_0

    .line 3278
    invoke-static {}, Lfxg;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfls;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 3280
    :cond_0
    const-string/jumbo v0, ""

    invoke-static {v0}, Lfls;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    .prologue
    .line 45
    .line 3252
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->c:Lfri$b;

    const-string/jumbo v1, ""

    sget v2, Lezg$l;->dt_login_facebox_success:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lfri$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;

    .prologue
    .line 45
    .line 4222
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->a:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    .line 4223
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 4225
    :goto_0
    new-instance v2, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$7;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$7;-><init>(Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;Z)V

    .line 4248
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->c:Lfri$b;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v0, v2}, Lfri$b;->a(Ljava/lang/String;ILcma;)V

    .line 45
    return-void

    .line 4223
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 78
    .local v0, "vid":I
    sget v1, Lezg$h;->item_facebox_try:I

    if-ne v0, v1, :cond_1

    .line 79
    const-string/jumbo v1, "facerecognition_try_click"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 2164
    new-instance v1, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$4;-><init>(Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;)V

    .line 2182
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->c:Lfri$b;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-interface {v2, v3, v4, v1}, Lfri$b;->a(Ljava/lang/String;ILcma;)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    sget v1, Lezg$h;->item_facebox_reset:I

    if-ne v0, v1, :cond_0

    .line 82
    const-string/jumbo v1, "facerecognition_reset_click"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 3089
    sget v1, Lezg$l;->dt_login_facebox_password_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3090
    sget v1, Lezg$l;->and_redpackets_verify_pwd:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3092
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    new-instance v4, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;)V

    const-class v5, Lcma;

    invoke-interface {v1, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 3113
    const/4 v4, 0x1

    invoke-static {p0, v1, v3, v2, v4}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(Landroid/app/Activity;Lcma;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget v0, Lezg$j;->activity_face_login_settings:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->setContentView(I)V

    .line 1060
    sget v0, Lezg$h;->item_facebox_reset:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1061
    sget v0, Lezg$h;->item_facebox_try:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1062
    sget v0, Lezg$h;->ll_facebox_config:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->b:Landroid/view/View;

    .line 1063
    sget v0, Lezg$h;->toggle_facebox:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lezg$h;->uidic_forms_item_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->a:Landroid/widget/ToggleButton;

    .line 1064
    new-instance v0, Lfrk;

    invoke-direct {v0, p0}, Lfrk;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->c:Lfri$b;

    .line 1186
    new-instance v0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$5;-><init>(Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;)V

    .line 1210
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1211
    invoke-static {}, Lfas;->a()Lfas;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfas;->a(Lcma;)V

    .line 1213
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;->a:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity$6;-><init>(Lcom/alibaba/android/user/settings/activity/FaceLoginSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 72
    return-void
.end method
