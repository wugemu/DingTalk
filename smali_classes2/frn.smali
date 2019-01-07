.class public final Lfrn;
.super Ljava/lang/Object;
.source "VerifyPresenter.java"

# interfaces
.implements Lcom/alibaba/android/user/login/verify/VerifyContract$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfrn$a;
    }
.end annotation


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Lcom/alibaba/android/user/login/verify/VerifyContract$b;

.field c:Lfrn$a;

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/user/login/verify/VerifyContract$b;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Lcom/alibaba/android/user/login/verify/VerifyContract$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v0, 0x1388

    iput v0, p0, Lfrn;->d:I

    .line 59
    const-string/jumbo v0, "authCode"

    iput-object v0, p0, Lfrn;->e:Ljava/lang/String;

    .line 64
    new-instance v0, Lfrn$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfrn$a;-><init>(Lfrn;B)V

    iput-object v0, p0, Lfrn;->c:Lfrn$a;

    .line 67
    iput-object p1, p0, Lfrn;->a:Landroid/app/Activity;

    .line 68
    iput-object p2, p0, Lfrn;->b:Lcom/alibaba/android/user/login/verify/VerifyContract$b;

    .line 70
    iget-object v0, p0, Lfrn;->b:Lcom/alibaba/android/user/login/verify/VerifyContract$b;

    invoke-interface {v0, p0}, Lcom/alibaba/android/user/login/verify/VerifyContract$b;->setPresenter(Lcjd;)V

    .line 71
    return-void
.end method

.method static synthetic a(Lfrn;Lcee;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V
    .locals 4
    .param p0, "x0"    # Lfrn;
    .param p1, "x1"    # Lcee;
    .param p2, "x2"    # Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    .prologue
    .line 54
    .line 2342
    if-nez p1, :cond_0

    .line 2343
    iget-object v0, p0, Lfrn;->b:Lcom/alibaba/android/user/login/verify/VerifyContract$b;

    const-string/jumbo v1, "err_parameter"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lezg$l;->dt_user_common_error_param_invalid:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lcom/alibaba/android/user/login/verify/VerifyContract$b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V

    .line 2344
    :goto_0
    return-void

    .line 2347
    :cond_0
    new-instance v1, Lfaq$a;

    new-instance v0, Lfaq;

    invoke-direct {v0}, Lfaq;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lfaq$a;-><init>(Lfaq;)V

    .line 2348
    new-instance v0, Lfrn$5;

    invoke-direct {v0, p0, p2}, Lfrn$5;-><init>(Lfrn;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V

    .line 2365
    const-class v2, Lcma;

    iget-object v3, p0, Lfrn;->a:Landroid/app/Activity;

    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2366
    const-string/jumbo v2, ""

    invoke-virtual {v1, p1, v2, v0}, Lfaq$a;->a(Lcee;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 189
    invoke-static {}, Lfwu;->a()Lfwu;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lfrn$2;

    invoke-direct {v2, p0}, Lfrn$2;-><init>(Lfrn;)V

    const-class v3, Lcma;

    iget-object v4, p0, Lfrn;->a:Landroid/app/Activity;

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v0}, Lfwu;->a(Lcma;)V

    .line 207
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;Z)V
    .locals 14
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "upstreamCode"    # Ljava/lang/String;
    .param p3, "verifyContext"    # Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;
    .param p4, "triggerByUser"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 75
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    iget-object v3, p0, Lfrn;->c:Lfrn$a;

    invoke-virtual {v2, v3}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 77
    new-instance v11, Lfrn$1;

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v11, p0, v0, p1, v1}, Lfrn$1;-><init>(Lfrn;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;Ljava/lang/String;Z)V

    .line 127
    .local v11, "callback":Lcma;, "Lcma<Lcee;>;"
    const-class v2, Lcma;

    iget-object v3, p0, Lfrn;->a:Landroid/app/Activity;

    invoke-static {v11, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "callback":Lcma;, "Lcma<Lcee;>;"
    check-cast v11, Lcma;

    .line 128
    .restart local v11    # "callback":Lcma;, "Lcma<Lcee;>;"
    new-instance v12, Lfwt;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iget-object v5, p0, Lfrn;->a:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lfxj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v12, v2, v3, v4, v5}, Lfwt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .local v12, "deviceObject":Lfwt;
    iget-object v2, p0, Lfrn;->a:Landroid/app/Activity;

    invoke-static {v2}, Lfrb;->a(Landroid/content/Context;)Z

    move-result v13

    .line 130
    .local v13, "isSimulator":Z
    iget-object v2, p0, Lfrn;->a:Landroid/app/Activity;

    invoke-static {v2, v13}, Lfrb;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    .line 131
    .local v7, "t":Ljava/lang/String;
    invoke-static {}, Lfas;->a()Lfas;

    move-result-object v2

    invoke-virtual {v12}, Lfwt;->a()Lcfo;

    move-result-object v3

    invoke-static {}, Lfxg;->a()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, ""

    .line 1402
    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1403
    :cond_0
    if-eqz v11, :cond_1

    .line 1404
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lfas$8;

    invoke-direct {v4, v2, v11}, Lfas$8;-><init>(Lfas;Lcma;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1411
    :cond_1
    :goto_0
    return-void

    .line 1414
    :cond_2
    new-instance v10, Lfas$9;

    invoke-direct {v10, v2, v11}, Lfas$9;-><init>(Lfas;Lcma;)V

    .line 1430
    iget-object v2, v2, Lfas;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    const/4 v8, 0x0

    move-object v4, p1

    move-object/from16 v5, p2

    invoke-interface/range {v2 .. v10}, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;->upstreamTokenLogin(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcfw;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lfrn;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfrn;->b:Lcom/alibaba/android/user/login/verify/VerifyContract$b;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 382
    return-void
.end method
