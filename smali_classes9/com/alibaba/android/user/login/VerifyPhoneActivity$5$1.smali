.class final Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;
.super Ljava/lang/Object;
.source "VerifyPhoneActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    .prologue
    .line 717
    iput-object p1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iput-boolean p2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 717
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 2791
    sget-object v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "login success"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2795
    if-eqz p1, :cond_5

    .line 2797
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    .line 3215
    iput-wide v2, v0, Lccr;->a:J

    .line 2798
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v0, v2, v3}, Lchy;->updateQuotaCenter(J)V

    .line 2799
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 2801
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    .line 2803
    invoke-static {}, Lfxn;->a()Lfxn;

    move-result-object v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfxn;->a(Landroid/content/Context;)V

    .line 2804
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->loginSuccess()V

    .line 2806
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "pref_user_id"

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-static {v0, v1, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 2807
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->g(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)V

    .line 2809
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1$2;-><init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 2817
    iget-boolean v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isDataComplete:Z

    if-eqz v0, :cond_4

    .line 2819
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2821
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 2822
    iget-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->isOrgAuth:Z

    if-eqz v1, :cond_1

    .line 2824
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->c(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2825
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->h(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)V

    .line 2848
    :goto_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->q()V

    .line 2849
    invoke-static {}, Lcod;->a()Lcod;

    move-result-object v0

    sget-object v1, Lcod;->c:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcod;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2850
    const-string/jumbo v0, "login_device_mainpage"

    const-string/jumbo v1, "is_simulator=%b"

    new-array v2, v5, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->a:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    .line 3315
    invoke-static {v6, v0, v1, v2}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 717
    return-void

    .line 2827
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v0, v4}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->a(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Z)V

    goto :goto_0

    .line 2830
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isDataComplete:Z

    invoke-static {v1, v5, v0, v2}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->a(Lcom/alibaba/android/user/login/VerifyPhoneActivity;ZLjava/lang/String;Z)V

    goto :goto_0

    .line 2834
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->c(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2835
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->h(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)V

    goto :goto_0

    .line 2837
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v0, v4}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->a(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Z)V

    goto :goto_0

    .line 2842
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isDataComplete:Z

    invoke-static {v0, v5, v6, v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->a(Lcom/alibaba/android/user/login/VerifyPhoneActivity;ZLjava/lang/String;Z)V

    goto :goto_0

    .line 2846
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v0, v4, v6, v4}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->a(Lcom/alibaba/android/user/login/VerifyPhoneActivity;ZLjava/lang/String;Z)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 722
    sget-object v2, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "login failed:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    const-string/jumbo v2, "STATISTICS"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 726
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const/16 v2, 0x3459

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 729
    iget-object v2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->d(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "OLDUSER"

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v3, v3, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->d(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 730
    const-string/jumbo v2, "verifycode_login"

    invoke-static {v2}, Lcpv;->a(Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v1

    .line 731
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

    .line 732
    invoke-interface {v1}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 739
    :goto_0
    const-string/jumbo v2, "12304"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 740
    iget-object v2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v3, v3, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$l;->network_error:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->c(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V

    .line 773
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->dismissLoadingDialog()V

    .line 774
    iget-object v2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v2, v2, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->e:Landroid/widget/EditText;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 776
    const-string/jumbo v2, "register"

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v3, v3, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->e(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 777
    const-string/jumbo v2, "bh_register_verify_smscode_error"

    const-string/jumbo v3, "phone=%s,via=%d,code=%s,type=%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    new-array v5, v10, [Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v6, v6, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v6, v6, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->g:Ljava/lang/String;

    aput-object v6, v5, v7

    const-string/jumbo v6, "-"

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v6, v6, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v6, v6, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->h:Ljava/lang/String;

    aput-object v6, v5, v9

    .line 778
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v5, v5, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->f(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object p1, v4, v9

    const-string/jumbo v5, "register"

    aput-object v5, v4, v10

    .line 1315
    invoke-static {v11, v2, v3, v4}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 786
    :cond_0
    :goto_2
    return-void

    .line 734
    .end local v1    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :cond_1
    const-string/jumbo v2, "verifycode_newuser_signup"

    invoke-static {v2}, Lcpv;->a(Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v1

    .line 735
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

    .line 736
    invoke-interface {v1}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    goto/16 :goto_0

    .line 741
    :cond_2
    const-string/jumbo v2, "12303"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 742
    iget-object v2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v3, v3, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$l;->server_down:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->c(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 743
    :cond_3
    const-string/jumbo v2, "123002"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 744
    iget-object v2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v3, v3, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$l;->login_error_phone_code:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->c(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 745
    :cond_4
    const-string/jumbo v2, "12305"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 746
    iget-object v2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v3, v3, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$l;->login_error_try_again:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->c(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 747
    :cond_5
    const-string/jumbo v2, "12306"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 748
    iget-object v2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v3, v3, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$l;->failed_ssl_error:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->c(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 749
    :cond_6
    const-string/jumbo v2, "11044"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 750
    const-string/jumbo v2, "login_contact_confirm_popup_click"

    invoke-static {v2}, Lfxo;->a(Ljava/lang/String;)V

    .line 751
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v3, v3, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lezg$l;->sure:I

    new-instance v4, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1$1;

    invoke-direct {v4, p0, p2}, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1$1;-><init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lezg$l;->cancel:I

    .line 768
    invoke-virtual {v2, v3, v11}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lezg$l;->login_verify_contact_need_verify:I

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_1

    .line 770
    :cond_7
    iget-object v2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v2, p2}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->c(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 779
    :cond_8
    const-string/jumbo v2, "changeMobile"

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v3, v3, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->e(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "unregister"

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v3, v3, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    .line 780
    invoke-static {v3}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->e(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "forgetPwd"

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v3, v3, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    .line 781
    invoke-static {v3}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->e(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "empty_pwd"

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v3, v3, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    .line 782
    invoke-static {v3}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->e(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 783
    const-string/jumbo v2, "bh_register_verify_smscode_error"

    const-string/jumbo v3, "phone=%s,via=%d,code=%s,type=%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    new-array v5, v10, [Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v6, v6, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v6, v6, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->g:Ljava/lang/String;

    aput-object v6, v5, v7

    const-string/jumbo v6, "-"

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v6, v6, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v6, v6, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->h:Ljava/lang/String;

    aput-object v6, v5, v9

    .line 784
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5$1;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;

    iget-object v5, v5, Lcom/alibaba/android/user/login/VerifyPhoneActivity$5;->f:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->f(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)I

    move-result v5

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

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 856
    return-void
.end method
