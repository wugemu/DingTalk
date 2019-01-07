.class final Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$3;
.super Ljava/lang/Object;
.source "NotReceiveSmsCodeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$3;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 198
    const-string/jumbo v0, "bh_register_carrier_verification_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$3;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$3;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$3;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    sget v4, Lezg$l;->dt_register_sim_authorizing:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->a(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 201
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$3;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->e(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;)Lfrn;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$3;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->d(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;)Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$3;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->b(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;)Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    move-result-object v3

    .line 1269
    const-string/jumbo v1, "SimPresenter.login."

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lfxo;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1270
    if-eqz v2, :cond_0

    if-nez v3, :cond_2

    .line 1271
    :cond_0
    invoke-virtual {v0}, Lfrn;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1274
    iget-object v0, v0, Lfrn;->b:Lcom/alibaba/android/user/login/verify/VerifyContract$b;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "validRequest or verifyContext == null"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/android/user/login/verify/VerifyContract$b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V

    .line 1276
    :cond_1
    :goto_0
    return-void

    .line 1278
    :cond_2
    iget-object v1, v0, Lfrn;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1279
    new-instance v4, Lfwt;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 1280
    invoke-static {v1}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v8

    invoke-virtual {v8}, Lcom/taobao/dp/DeviceSecuritySDK;->getSecurityToken()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v6, v5, v7, v8}, Lfwt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    invoke-virtual {v4}, Lfwt;->a()Lcfo;

    move-result-object v5

    .line 1282
    invoke-static {v1}, Lfrb;->a(Landroid/content/Context;)Z

    move-result v4

    .line 1283
    invoke-static {v1, v4}, Lfrb;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    .line 1285
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iget-object v7, v3, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->areaCode:Ljava/lang/String;

    aput-object v7, v1, v9

    const/4 v7, 0x1

    const-string/jumbo v8, "-"

    aput-object v8, v1, v7

    const/4 v7, 0x2

    iget-object v8, v3, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->phone:Ljava/lang/String;

    aput-object v8, v1, v7

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1287
    new-instance v7, Lfrn$4;

    invoke-direct {v7, v0, v3}, Lfrn$4;-><init>(Lfrn;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V

    .line 1331
    const-class v3, Lcma;

    iget-object v0, v0, Lfrn;->a:Landroid/app/Activity;

    invoke-static {v7, v3, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1332
    invoke-static {}, Lfas;->a()Lfas;

    move-result-object v9

    .line 1334
    invoke-virtual {v2}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/VaildRequest;->getAccessCode()Ljava/lang/String;

    move-result-object v2

    .line 1335
    invoke-static {}, Lfxg;->a()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "VerifyPresenter"

    .line 1573
    new-instance v8, Lfas$15;

    invoke-direct {v8, v9, v0}, Lfas$15;-><init>(Lfas;Lcma;)V

    .line 1589
    iget-object v0, v9, Lfas;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    invoke-interface/range {v0 .. v8}, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;->simVerifyLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcfo;Lcfw;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method
