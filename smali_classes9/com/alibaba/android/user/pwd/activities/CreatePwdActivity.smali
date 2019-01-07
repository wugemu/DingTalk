.class public Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;
.super Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;
.source "CreatePwdActivity.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;-><init>()V

    .line 26
    sget v0, Lezg$l;->enter_passcode:I

    iput v0, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->a:I

    .line 28
    iput v1, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->b:I

    .line 32
    iput-boolean v1, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;

    .prologue
    .line 20
    .line 1114
    :try_start_0
    const-string/jumbo v0, "1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcni;->a(Ljava/lang/String;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 1119
    :goto_0
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->h()Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;

    move-result-object v2

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity$2;-><init>(Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-interface {v2, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;->b(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 20
    return-void

    .line 1115
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1116
    const-string/jumbo v0, ""

    .line 1117
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    goto :goto_0
.end method

.method private h()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 54
    iget v0, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->b:I

    if-nez v0, :cond_3

    .line 55
    iget-boolean v0, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->d:Z

    if-eqz v0, :cond_2

    .line 1075
    iget-object v0, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1076
    sget v0, Lezg$l;->dt_single_org_create_pwd_tip:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->a(Ljava/lang/String;)V

    .line 60
    :goto_1
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->b(Ljava/lang/String;)V

    .line 72
    :cond_0
    :goto_2
    return-void

    .line 1078
    :cond_1
    sget v0, Lezg$l;->dt_multi_orgs_create_pwd_tip:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_2
    iget v0, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->a:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 61
    :cond_3
    iget v0, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->b:I

    if-ne v0, v1, :cond_5

    .line 62
    iget-boolean v0, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->d:Z

    if-eqz v0, :cond_4

    .line 63
    sget v0, Lezg$l;->dt_create_pwd_confirm_security_code_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->a(Ljava/lang/String;)V

    .line 67
    :goto_3
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 65
    :cond_4
    sget v0, Lezg$l;->renter_passcode:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 68
    :cond_5
    iget v0, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 69
    iget v0, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->a:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->a(Ljava/lang/String;)V

    .line 70
    sget v0, Lezg$l;->passcode_not_match:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->b(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method protected final d(Ljava/lang/String;)V
    .locals 8
    .param p1, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 144
    iget v1, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->b:I

    if-nez v1, :cond_1

    .line 145
    iput-object p1, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->c:Ljava/lang/String;

    .line 146
    invoke-virtual {p0, v6, v7}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->a(J)V

    .line 147
    iput v3, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->b:I

    .line 148
    invoke-direct {p0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->h()V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget v1, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->b:I

    if-ne v1, v3, :cond_4

    .line 150
    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    iget-boolean v1, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->d:Z

    if-eqz v1, :cond_2

    .line 1083
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1086
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcni;->a(Ljava/lang/String;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 1091
    :goto_1
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->h()Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;

    move-result-object v3

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity$1;-><init>(Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-interface {v3, v2, v1}, Lcom/alibaba/android/dingtalk/userbase/PwdManageInterface;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 1087
    :catch_0
    move-exception v1

    move-object v2, v1

    .line 1088
    const-string/jumbo v1, ""

    .line 1089
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v1

    goto :goto_1

    .line 154
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->setResult(ILandroid/content/Intent;)V

    .line 157
    invoke-virtual {p0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->finish()V

    goto :goto_0

    .line 160
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->a(J)V

    .line 161
    invoke-virtual {p0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->c()V

    .line 162
    iput v4, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->b:I

    .line 163
    invoke-direct {p0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->h()V

    goto :goto_0

    .line 165
    :cond_4
    iget v1, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->b:I

    if-ne v1, v4, :cond_0

    .line 166
    iput-object p1, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->c:Ljava/lang/String;

    .line 167
    invoke-virtual {p0, v6, v7}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->a(J)V

    .line 168
    iput v3, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->b:I

    .line 169
    invoke-direct {p0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->h()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/alibaba/android/user/pwd/activities/BasePwdActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1044
    invoke-virtual {p0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1045
    if-eqz v0, :cond_0

    .line 1046
    const-string/jumbo v1, "screenlock"

    const-string/jumbo v2, "[createpwdpage]create pwd from home"

    invoke-static {v1, v2}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    const-string/jumbo v1, "conference_from_home"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->d:Z

    .line 1048
    const-string/jumbo v1, "key_orgs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->e:Ljava/util/ArrayList;

    .line 1050
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "first_step_title_res"

    sget v2, Lezg$l;->enter_passcode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->a:I

    .line 39
    invoke-direct {p0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->h()V

    .line 40
    invoke-virtual {p0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->d()V

    .line 41
    return-void
.end method
