.class public Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "ChangePwdActivity.java"


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field c:Landroid/widget/Button;

.field public d:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Ljava/lang/String;

.field private l:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    .line 7434
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7435
    sget v1, Lezg$l;->sure:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 7436
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->server_down:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "x1":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 7437
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 66
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .param p1, "inputString"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 325
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 326
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->sure:I

    const/4 v3, 0x0

    .line 327
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 329
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 330
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "areaCode"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 144
    invoke-static {}, Lfaf;->b()Lezm;

    move-result-object v0

    .line 145
    .local v0, "api":Lezm;
    sget-object v1, Lcom/alibaba/android/user/devset/DevSettingActivity;->x:Ljava/lang/String;

    .line 146
    if-eqz p1, :cond_0

    const-string/jumbo v1, "+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 149
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;)V

    const-class v4, Lcma;

    invoke-interface {v1, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-interface {v0, v2, v1}, Lezm;->a(Ljava/lang/String;Lcma;)V

    .line 184
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 66
    .line 6409
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_result_to_edit_profile"

    invoke-static {v0, v1, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    .line 6410
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isDataComplete:Z

    if-nez v0, :cond_2

    .line 6412
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 6413
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 6414
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isDataComplete:Z

    invoke-static {p0, v2, v0, v1}, Lfqz;->a(Landroid/app/Activity;ZLjava/lang/String;Z)V

    .line 6426
    :goto_1
    return-void

    .line 6414
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 6417
    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isDataComplete:Z

    invoke-static {p0, v2, v0, v1}, Lfqz;->a(Landroid/app/Activity;ZLjava/lang/String;Z)V

    goto :goto_1

    .line 6425
    :cond_2
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_user_contact_permission"

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6426
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->j(Landroid/app/Activity;)V

    goto :goto_1

    .line 6428
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->i(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;

    .prologue
    .line 66
    .line 7341
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    .line 7342
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method protected getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    const-string/jumbo v0, "User_Set_Pwd"

    return-object v0
.end method

.method protected getPageSpmCnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    const-string/jumbo v0, "a2o5v.11793182.0.0"

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 458
    const-string/jumbo v0, "intent_key_change_pwd_from_setting"

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onBackPressed()V

    .line 463
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v7, 0x14

    const/4 v6, 0x6

    const/4 v5, 0x0

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lezg$h;->btn_confirm:I

    if-ne v2, v3, :cond_0

    .line 291
    const-string/jumbo v2, "set_pwd_next"

    const/4 v3, 0x0

    const-string/jumbo v4, "a2o5v.11793182.1.set_pwd_next"

    invoke-static {p1, v2, v3, v4}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 293
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->f()V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-static {p0, v2}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 300
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "inputPwd":Ljava/lang/String;
    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "rawNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 306
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v6, :cond_3

    .line 307
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v7, :cond_3

    .line 5354
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->c:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6333
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v2, :cond_2

    .line 6334
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 6335
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    sget v3, Lezg$l;->sending:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 6337
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 5356
    invoke-static {}, Lfaf;->b()Lezm;

    .line 5357
    sget-object v2, Lcom/alibaba/android/user/devset/DevSettingActivity;->x:Ljava/lang/String;

    .line 5358
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "nextTag"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 5360
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v3

    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$6;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$6;-><init>(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;)V

    const-class v5, Lcma;

    invoke-interface {v2, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    invoke-interface {v3, v1, v2}, Lfac;->d(Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 310
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_4

    .line 311
    sget v2, Lezg$l;->pls_input_pwd_less_than_20:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 312
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_5

    .line 313
    sget v2, Lezg$l;->and_pls_input_pwd_above_n:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "6"

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 317
    :cond_5
    sget v2, Lezg$l;->input_pwd_format_error:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 90
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "setting_change_pwd"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->f:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "areaCode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->k:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "TARGET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->g:Ljava/lang/String;

    .line 1201
    sget v0, Lezg$j;->activity_change_pwd:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->setContentView(I)V

    .line 1203
    sget v0, Lezg$h;->et_pwd_input:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 1204
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 2086
    sget v1, Lezg$e;->ui_common_level1_icon_bg_color:I

    invoke-static {v1}, Lfxp;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1204
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setClearDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1206
    sget v0, Lezg$h;->btn_confirm:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->c:Landroid/widget/Button;

    .line 1207
    sget v0, Lezg$h;->tv_change_pwd_mobilenum:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->h:Landroid/widget/TextView;

    .line 2187
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->actbar_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2188
    sget v0, Lezg$h;->btn_ok:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->i:Landroid/widget/TextView;

    .line 2189
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->i:Landroid/widget/TextView;

    sget v2, Lezg$l;->jump:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2190
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->i:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$3;-><init>(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1211
    iput-object v1, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->j:Landroid/view/View;

    .line 1212
    sget v0, Lezg$h;->cb_see_pwd:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->o:Landroid/widget/CheckBox;

    .line 1215
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1216
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->m:Ljava/lang/String;

    .line 1218
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->n:Ljava/lang/String;

    .line 1221
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1222
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->n:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1228
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->f:Ljava/lang/String;

    .line 1230
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->h:Landroid/widget/TextView;

    sget v1, Lezg$l;->phone_number:I

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->f:Ljava/lang/String;

    aput-object v3, v2, v8

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1234
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1235
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$4;-><init>(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1271
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->o:Landroid/widget/CheckBox;

    .line 2466
    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {p0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 2467
    sget v2, Lezg$l;->icon_closeeye:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2468
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->ui_common_theme_icon_bg_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 2469
    new-instance v4, Lecw;

    invoke-direct {v4, v2, v3}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 3070
    iput v1, v4, Lecw;->a:I

    .line 3079
    iput v1, v4, Lecw;->b:I

    .line 2473
    sget v2, Lezg$l;->icon_eye:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2474
    new-instance v5, Lecw;

    invoke-direct {v5, v2, v3}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 4070
    iput v1, v5, Lecw;->a:I

    .line 4079
    iput v1, v5, Lecw;->b:I

    .line 2478
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 2479
    new-array v2, v7, [I

    const v3, 0x10100a0

    aput v3, v2, v8

    invoke-virtual {v1, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 2480
    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v1, v2, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1271
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1272
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1273
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->o:Landroid/widget/CheckBox;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$5;-><init>(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1284
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p0, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    .line 1285
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->o:Landroid/widget/CheckBox;

    .line 5024
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/View;

    new-instance v0, Lfxl$1;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lfxl$1;-><init>(Landroid/view/View;IIII)V

    invoke-virtual {v6, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 97
    if-eqz p1, :cond_2

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_2
    const-string/jumbo v0, "intent_key_change_pwd_from_setting"

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->c:Landroid/widget/Button;

    sget v1, Lezg$l;->login_ok:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 5124
    :goto_1
    sget v0, Lezg$h;->vertical_scroll_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 121
    return-void

    .line 1224
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->f:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_6

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v8}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v8}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 114
    const/16 v0, 0x12

    invoke-static {v0}, Lcms;->b(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$g;->small_home_up_indicator:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 118
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->c:Landroid/widget/Button;

    sget v1, Lezg$l;->login_next:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 135
    const/4 v1, 0x1

    sget v2, Lezg$l;->sure:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 136
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->j:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 137
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 139
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 453
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 454
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 443
    const-string/jumbo v0, "phone"

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/ChangePwdActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 445
    return-void
.end method
