.class public Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "FaceLoginResultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lfri$b;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;

    .prologue
    .line 39
    .line 1112
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1113
    sget v1, Lezg$l;->dt_login_facebox_success:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1114
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 1120
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 39
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;)Lfri$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;->a:Lfri$b;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 82
    .local v0, "vid":I
    sget v1, Lezg$h;->tv_try:I

    if-ne v0, v1, :cond_0

    .line 83
    const-string/jumbo v1, "facerecognition_haveatryImmediate_click"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 1090
    new-instance v1, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;)V

    .line 1108
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;->a:Lfri$b;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-interface {v2, v3, v4, v1}, Lfri$b;->a(Ljava/lang/String;ILcma;)V

    .line 86
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v0, Lezg$j;->activity_face_login_result:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;->setContentView(I)V

    .line 1053
    sget v0, Lezg$h;->tv_face_login_result_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;->b:Landroid/widget/TextView;

    .line 1054
    sget v0, Lezg$h;->tv_face_login_result_desc:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;->c:Landroid/widget/TextView;

    .line 1055
    sget v0, Lezg$h;->tv_try:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1056
    new-instance v0, Lfrk;

    invoke-direct {v0, p0}, Lfrk;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;->a:Lfri$b;

    .line 1058
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1059
    if-eqz v0, :cond_1

    .line 1060
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1061
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1062
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    :cond_0
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1066
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1067
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FaceLoginResultActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 76
    return-void
.end method
