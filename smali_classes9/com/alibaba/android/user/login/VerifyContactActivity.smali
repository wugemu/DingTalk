.class public Lcom/alibaba/android/user/login/VerifyContactActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "VerifyContactActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:Landroid/widget/ListView;

.field private d:Landroid/view/View;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfsb;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lfrc;

.field private k:Landroid/widget/TextView;

.field private l:Z

.field private m:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lfsb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/alibaba/android/user/login/VerifyContactActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/login/VerifyContactActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->l:Z

    .line 83
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->m:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/VerifyContactActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyContactActivity;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->b:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/VerifyContactActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyContactActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/VerifyContactActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyContactActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/VerifyContactActivity;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyContactActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 72
    .line 3206
    const-string/jumbo v0, "login_contact_confirm_pass_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 3207
    new-instance v0, Lfjl;

    invoke-direct {v0, p0}, Lfjl;-><init>(Landroid/app/Activity;)V

    sget v1, Lezg$g;->icon_report_loss_success:I

    sget v2, Lezg$l;->login_verify_contact_title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lezg$l;->login_verify_contact_success:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lezg$l;->login_verify_contact_success_content:I

    .line 3208
    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lezg$l;->enter_guide:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "https://qr.dingtalk.com/login_confirm.html"

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v8, "success"

    .line 3209
    invoke-virtual {v7, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "orgName"

    .line 3210
    invoke-virtual {v7, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "userName"

    .line 3211
    invoke-virtual {v7, v8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "intent_key_is_user_data_complete"

    .line 3212
    invoke-virtual {v7, v8, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 3207
    invoke-virtual/range {v0 .. v9}, Lfjl;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Z)V

    .line 3213
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->finish()V

    .line 72
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/alibaba/android/user/login/VerifyContactActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/login/VerifyContactActivity;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyContactActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->m:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/login/VerifyContactActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyContactActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    .line 2286
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2287
    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/login/VerifyContactActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/login/VerifyContactActivity$6;-><init>(Lcom/alibaba/android/user/login/VerifyContactActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2302
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 72
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/login/VerifyContactActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyContactActivity;

    .prologue
    .line 72
    iget v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->b:I

    return v0
.end method

.method private c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->showLoadingDialog()V

    .line 232
    invoke-static {}, Lfaf;->b()Lezm;

    move-result-object v0

    .line 233
    .local v0, "authorizationAPI":Lezm;
    if-nez v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->dismissLoadingDialog()V

    .line 283
    :goto_0
    return-void

    .line 239
    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->h:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "-"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->f:Ljava/lang/String;

    new-instance v1, Lcom/alibaba/android/user/login/VerifyContactActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/VerifyContactActivity$5;-><init>(Lcom/alibaba/android/user/login/VerifyContactActivity;)V

    const-class v4, Lcma;

    invoke-static {v1, v4, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-interface {v0, v2, v3, v1}, Lezm;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/login/VerifyContactActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyContactActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    .line 3218
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3219
    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/login/VerifyContactActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/login/VerifyContactActivity$4;-><init>(Lcom/alibaba/android/user/login/VerifyContactActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->server_down:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3225
    .end local p1    # "x1":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 3226
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 72
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/login/VerifyContactActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyContactActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/login/VerifyContactActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyContactActivity;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->c()V

    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/user/login/VerifyContactActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyContactActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/login/VerifyContactActivity;)Lfrc;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyContactActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->j:Lfrc;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/login/VerifyContactActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyContactActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/login/VerifyContactActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyContactActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/login/VerifyContactActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyContactActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/login/VerifyContactActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyContactActivity;

    .prologue
    .line 72
    .line 3163
    invoke-static {}, Lfwu;->a()Lfwu;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/user/login/VerifyContactActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/login/VerifyContactActivity$3;-><init>(Lcom/alibaba/android/user/login/VerifyContactActivity;)V

    const-class v3, Lcma;

    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v0}, Lfwu;->a(Lcma;)V

    .line 72
    return-void
.end method

.method static synthetic l(Lcom/alibaba/android/user/login/VerifyContactActivity;)V
    .locals 12
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyContactActivity;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 72
    .line 3194
    const-string/jumbo v0, "login_contact_confirm_pass_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 3195
    iget-boolean v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->l:Z

    if-eqz v0, :cond_0

    .line 3196
    new-instance v0, Lfjl;

    invoke-direct {v0, p0}, Lfjl;-><init>(Landroid/app/Activity;)V

    sget v1, Lezg$g;->icon_report_loss_success:I

    sget v2, Lezg$l;->login_verify_contact_title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lezg$l;->login_verify_contact_success:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lezg$l;->login_verify_contact_success_content:I

    .line 3197
    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lezg$l;->enter_guide:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "https://qr.dingtalk.com/pwd.html"

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v10, "areaCode"

    iget-object v11, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->h:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v10, "setting_change_pwd"

    iget-object v11, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->e:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 3196
    invoke-virtual/range {v0 .. v9}, Lfjl;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Z)V

    .line 3202
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->finish()V

    .line 72
    return-void

    .line 3199
    :cond_0
    new-instance v0, Lfjl;

    invoke-direct {v0, p0}, Lfjl;-><init>(Landroid/app/Activity;)V

    sget v1, Lezg$g;->icon_report_loss_success:I

    sget v2, Lezg$l;->login_verify_contact_title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lezg$l;->login_verify_contact_success:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lezg$l;->login_verify_contact_success_content:I

    .line 3200
    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lezg$l;->enter_guide:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "https://qr.dingtalk.com/ding/home.html"

    move-object v7, v8

    .line 3199
    invoke-virtual/range {v0 .. v9}, Lfjl;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static synthetic m(Lcom/alibaba/android/user/login/VerifyContactActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/VerifyContactActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 449
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->rl_verify_contact_fail:I

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->c:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 158
    invoke-direct {p0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->c()V

    .line 160
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 87
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    sget v0, Lezg$j;->activity_verify_contact:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->setContentView(I)V

    .line 1093
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1094
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1095
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1096
    const/16 v0, 0x12

    invoke-static {v0}, Lcms;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$g;->small_home_up_indicator:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->login_verify_contact_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1100
    sget v0, Lezg$h;->tv_contact_verify_hint:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->k:Landroid/widget/TextView;

    .line 1101
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->k:Landroid/widget/TextView;

    sget v1, Lezg$l;->login_verify_contact_prompt:I

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1102
    sget v0, Lezg$h;->gv_contact_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->c:Landroid/widget/ListView;

    .line 1103
    sget v0, Lezg$h;->rl_verify_contact_fail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->d:Landroid/view/View;

    .line 1104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->i:Ljava/util/List;

    .line 1105
    new-instance v0, Lfrc;

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->i:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->c:Landroid/widget/ListView;

    invoke-direct {v0, p0, v1, v2}, Lfrc;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->j:Lfrc;

    .line 1106
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->j:Lfrc;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1108
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1109
    sget-object v0, Lcom/alibaba/android/user/login/VerifyContactActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "get intent null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1110
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->finish()V

    .line 1112
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "phone_number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->e:Ljava/lang/String;

    .line 1113
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "tempCode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->f:Ljava/lang/String;

    .line 1114
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "areaCode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->h:Ljava/lang/String;

    .line 1115
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "needChangePassword"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->l:Z

    .line 1116
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/user/login/VerifyContactActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/VerifyContactActivity$1;-><init>(Lcom/alibaba/android/user/login/VerifyContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1145
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/login/VerifyContactActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/VerifyContactActivity$2;-><init>(Lcom/alibaba/android/user/login/VerifyContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 310
    iget-object v5, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->m:Ljava/util/LinkedList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->m:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 311
    .local v1, "selectedSize":I
    :goto_0
    const-string/jumbo v5, "%s(%d/%d)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    sget v7, Lezg$l;->sure:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    iget v7, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "text":Ljava/lang/String;
    invoke-interface {p1, v3, v8, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 313
    .local v0, "item":Landroid/view/MenuItem;
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 314
    iget v5, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->b:I

    if-ne v1, v5, :cond_0

    move v3, v4

    :cond_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 315
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3

    .end local v0    # "item":Landroid/view/MenuItem;
    .end local v1    # "selectedSize":I
    .end local v2    # "text":Ljava/lang/String;
    :cond_1
    move v1, v3

    .line 310
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 320
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 1327
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1328
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->f()V

    .line 323
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1331
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->showLoadingDialog()V

    .line 1332
    invoke-static {}, Lfaf;->b()Lezm;

    move-result-object v3

    .line 1333
    if-nez v3, :cond_2

    .line 1335
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->dismissLoadingDialog()V

    goto :goto_0

    .line 1338
    :cond_2
    new-instance v0, Lfwt;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lfxj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v2, v4, v5}, Lfwt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    invoke-virtual {v0}, Lfwt;->a()Lcfo;

    move-result-object v4

    .line 1340
    new-instance v6, Ljava/util/ArrayList;

    iget v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->b:I

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1341
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfsb;

    .line 1342
    iget-object v0, v0, Lfsb;->a:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1344
    :cond_3
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->h:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string/jumbo v1, "-"

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyContactActivity;->e:Ljava/lang/String;

    aput-object v1, v0, v8

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1346
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/VerifyContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1347
    const-string/jumbo v0, "VerifyContactLogin"

    invoke-static {v0, v7}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v7

    new-instance v0, Lcom/alibaba/android/user/login/VerifyContactActivity$7;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/user/login/VerifyContactActivity$7;-><init>(Lcom/alibaba/android/user/login/VerifyContactActivity;Landroid/content/Context;Lezm;Lcfo;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v7, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
