.class public final Lfro;
.super Ljava/lang/Object;
.source "VerifyView.java"

# interfaces
.implements Lcom/alibaba/android/user/login/verify/VerifyContract$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfro$a;
    }
.end annotation


# instance fields
.field a:Landroid/app/Activity;

.field private final b:Ljava/lang/String;

.field private c:Lcom/alibaba/android/user/login/verify/VerifyContract$a;

.field private d:Lfro$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lfro$a;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "verifyResultListener"    # Lfro$a;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string/jumbo v0, "VerifyView"

    iput-object v0, p0, Lfro;->b:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lfro;->a:Landroid/app/Activity;

    .line 62
    iput-object p2, p0, Lfro;->d:Lfro$a;

    .line 63
    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 205
    .line 206
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->setAppFront()V

    .line 207
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->b(Z)V

    .line 208
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfro;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/home.html"

    new-instance v2, Lfro$3;

    invoke-direct {v2, p0}, Lfro$3;-><init>(Lfro;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 217
    iget-object v0, p0, Lfro;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 218
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 258
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lfro;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 259
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lezg$l;->sure:I

    new-instance v2, Lfro$5;

    invoke-direct {v2, p0, v0}, Lfro$5;-><init>(Lfro;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 267
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfro;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->server_down:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "reason":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 271
    return-void
.end method

.method private a(ZLcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V
    .locals 3
    .param p1, "resultToEditProfile"    # Z
    .param p2, "verifyContext"    # Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 233
    .line 234
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfro;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/pwd.html"

    new-instance v2, Lfro$4;

    invoke-direct {v2, p0, p2, p1}, Lfro$4;-><init>(Lfro;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;Z)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 248
    iget-object v0, p0, Lfro;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 249
    return-void
.end method

.method private a(ZLjava/lang/String;ZLcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "orgName"    # Ljava/lang/String;
    .param p3, "isUserDataComplete"    # Z
    .param p4, "verifyContext"    # Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    .prologue
    .line 221
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const/4 v0, 0x1

    invoke-direct {p0, v0, p4}, Lfro;->a(ZLcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V

    .line 228
    :goto_0
    iget-object v0, p0, Lfro;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 229
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lfro;->a:Landroid/app/Activity;

    invoke-static {v0, p1, p2, p3}, Lfqz;->a(Landroid/app/Activity;ZLjava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V
    .locals 9
    .param p1, "user"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .param p2, "verifyContext"    # Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 139
    if-nez p1, :cond_0

    .line 141
    invoke-direct {p0, v6, v8, v6, p2}, Lfro;->a(ZLjava/lang/String;ZLcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V

    .line 202
    :goto_0
    return-void

    .line 146
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "login success"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 147
    iget-object v1, p0, Lfro;->d:Lfro$a;

    invoke-interface {v1}, Lfro$a;->a()V

    .line 150
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    .line 3215
    iput-wide v2, v1, Lccr;->a:J

    .line 151
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v1, v2, v3}, Lchy;->updateQuotaCenter(J)V

    .line 152
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1, p1}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 154
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    .line 156
    invoke-static {}, Lfxn;->a()Lfxn;

    move-result-object v1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfxn;->a(Landroid/content/Context;)V

    .line 157
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->loginSuccess()V

    .line 159
    iget-object v1, p0, Lfro;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "pref_user_id"

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-static {v1, v2, v4, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 160
    iget-object v1, p0, Lfro;->c:Lcom/alibaba/android/user/login/verify/VerifyContract$a;

    invoke-interface {v1}, Lcom/alibaba/android/user/login/verify/VerifyContract$a;->a()V

    .line 162
    iget-object v1, p0, Lfro;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lfro$2;

    invoke-direct {v2, p0, p1}, Lfro$2;-><init>(Lfro;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 171
    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isDataComplete:Z

    if-eqz v1, :cond_5

    .line 173
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 175
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 176
    .local v0, "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isOrgAuth:Z

    if-eqz v1, :cond_2

    .line 178
    if-eqz p2, :cond_1

    iget-boolean v1, p2, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->isDeviceSecurity:Z

    if-eqz v1, :cond_1

    .line 179
    invoke-direct {p0}, Lfro;->a()V

    .line 199
    .end local v0    # "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->q()V

    .line 200
    invoke-static {}, Lcod;->a()Lcod;

    move-result-object v1

    sget-object v2, Lcod;->c:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcod;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 201
    const-string/jumbo v1, "login_device_mainpage"

    const-string/jumbo v2, "is_simulator=%b"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lfro;->a:Landroid/app/Activity;

    invoke-static {v4}, Lfrb;->a(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    .line 3315
    invoke-static {v8, v1, v2, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 181
    .restart local v0    # "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_1
    invoke-direct {p0, v6, p2}, Lfro;->a(ZLcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V

    goto :goto_1

    .line 184
    :cond_2
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isDataComplete:Z

    invoke-direct {p0, v7, v1, v2, p2}, Lfro;->a(ZLjava/lang/String;ZLcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V

    goto :goto_1

    .line 188
    .end local v0    # "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_3
    if-eqz p2, :cond_4

    iget-boolean v1, p2, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->isDeviceSecurity:Z

    if-eqz v1, :cond_4

    .line 189
    invoke-direct {p0}, Lfro;->a()V

    goto :goto_1

    .line 191
    :cond_4
    invoke-direct {p0, v6, p2}, Lfro;->a(ZLcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V

    goto :goto_1

    .line 196
    :cond_5
    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isDataComplete:Z

    invoke-direct {p0, v7, v8, v1, p2}, Lfro;->a(ZLjava/lang/String;ZLcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V
    .locals 12
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "verifyContext"    # Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "login failed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string/jumbo v2, "STATISTICS"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 72
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const/16 v2, 0x3459

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 75
    iget-object v2, p3, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->oldUserFlag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "OLDUSER"

    iget-object v3, p3, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->oldUserFlag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    const-string/jumbo v2, "verifycode_login"

    invoke-static {v2}, Lcpv;->a(Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v1

    .line 77
    .local v1, "trace":Lcom/alibaba/doraemon/trace/Trace;
    new-array v2, v8, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "verifycode_login faild code:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/trace/Trace;->error([Ljava/lang/String;)V

    .line 78
    invoke-interface {v1}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 85
    :goto_0
    const-string/jumbo v2, "12304"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 86
    iget-object v2, p0, Lfro;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$l;->network_error:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lfro;->a(Ljava/lang/String;)V

    .line 119
    :goto_1
    invoke-virtual {p0}, Lfro;->H_()V

    .line 121
    iget-object v2, p0, Lfro;->d:Lfro$a;

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lfro;->d:Lfro$a;

    invoke-interface {v2, p2}, Lfro$a;->a(Ljava/lang/String;)V

    .line 125
    :cond_0
    const-string/jumbo v2, "register"

    iget-object v3, p3, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->target:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 126
    const-string/jumbo v2, "bh_register_verify_smscode_error"

    const-string/jumbo v3, "phone=%s,via=%d,code=%s,type=%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    new-array v5, v10, [Ljava/lang/String;

    iget-object v6, p3, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->areaCode:Ljava/lang/String;

    aput-object v6, v5, v7

    const-string/jumbo v6, "-"

    aput-object v6, v5, v8

    iget-object v6, p3, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->phone:Ljava/lang/String;

    aput-object v6, v5, v9

    .line 127
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget v5, p3, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->viaType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object p1, v4, v9

    const-string/jumbo v5, "register"

    aput-object v5, v4, v10

    .line 1315
    invoke-static {v11, v2, v3, v4}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :cond_1
    :goto_2
    return-void

    .line 80
    .end local v1    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :cond_2
    const-string/jumbo v2, "verifycode_newuser_signup"

    invoke-static {v2}, Lcpv;->a(Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v1

    .line 81
    .restart local v1    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    new-array v2, v8, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "verifycode_newuser_signup faild code:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/trace/Trace;->error([Ljava/lang/String;)V

    .line 82
    invoke-interface {v1}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    goto/16 :goto_0

    .line 87
    :cond_3
    const-string/jumbo v2, "12303"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 88
    iget-object v2, p0, Lfro;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$l;->server_down:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lfro;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 89
    :cond_4
    const-string/jumbo v2, "123002"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 90
    iget-object v2, p0, Lfro;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$l;->login_error_phone_code:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lfro;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 91
    :cond_5
    const-string/jumbo v2, "12305"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 92
    iget-object v2, p0, Lfro;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$l;->login_error_try_again:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lfro;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 93
    :cond_6
    const-string/jumbo v2, "12306"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 94
    iget-object v2, p0, Lfro;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$l;->failed_ssl_error:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lfro;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 95
    :cond_7
    const-string/jumbo v2, "11044"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 96
    const-string/jumbo v2, "login_contact_confirm_popup_click"

    invoke-static {v2}, Lfxo;->a(Ljava/lang/String;)V

    .line 97
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v3, p0, Lfro;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lezg$l;->sure:I

    new-instance v4, Lfro$1;

    invoke-direct {v4, p0, p2, p3}, Lfro$1;-><init>(Lfro;Ljava/lang/String;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lezg$l;->cancel:I

    .line 114
    invoke-virtual {v2, v3, v11}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lezg$l;->login_verify_contact_need_verify:I

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_1

    .line 116
    :cond_8
    invoke-direct {p0, p2}, Lfro;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 128
    :cond_9
    const-string/jumbo v2, "changeMobile"

    iget-object v3, p3, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->target:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "unregister"

    iget-object v3, p3, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->target:Ljava/lang/String;

    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "forgetPwd"

    iget-object v3, p3, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->target:Ljava/lang/String;

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "empty_pwd"

    iget-object v3, p3, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->target:Ljava/lang/String;

    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    const-string/jumbo v2, "bh_register_verify_smscode_error"

    const-string/jumbo v3, "phone=%s,via=%d,code=%s,type=%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    new-array v5, v10, [Ljava/lang/String;

    iget-object v6, p3, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->areaCode:Ljava/lang/String;

    aput-object v6, v5, v7

    const-string/jumbo v6, "-"

    aput-object v6, v5, v8

    iget-object v6, p3, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->phone:Ljava/lang/String;

    aput-object v6, v5, v9

    .line 133
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget v5, p3, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->viaType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object p1, v4, v9

    const-string/jumbo v5, "login"

    aput-object v5, v4, v10

    .line 2315
    invoke-static {v11, v2, v3, v4}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lfro;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 52
    check-cast p1, Lcom/alibaba/android/user/login/verify/VerifyContract$a;

    .line 6253
    invoke-static {p1}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/login/verify/VerifyContract$a;

    iput-object v0, p0, Lfro;->c:Lcom/alibaba/android/user/login/verify/VerifyContract$a;

    .line 52
    return-void
.end method
