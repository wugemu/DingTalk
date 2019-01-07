.class public final Lfaq;
.super Ljava/lang/Object;
.source "LWPOAuthProvider.java"

# interfaces
.implements Lezm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfaq$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-class v0, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    iput-object v0, p0, Lfaq;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    .line 83
    return-void
.end method

.method static synthetic a(Lfaq;)V
    .locals 2
    .param p0, "x0"    # Lfaq;

    .prologue
    .line 46
    .line 2785
    new-instance v0, Lfal;

    invoke-direct {v0}, Lfal;-><init>()V

    .line 2789
    new-instance v1, Lfaq$18;

    invoke-direct {v1, p0}, Lfaq$18;-><init>(Lfaq;)V

    invoke-interface {v0, v1}, Lezp;->a(Lcma;)V

    .line 46
    return-void
.end method

.method static synthetic a(Lfaq;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lfaq;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 46
    .line 1874
    const-string/jumbo v0, "11024"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1875
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1876
    const-string/jumbo v1, "login_fail"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{\"phone\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\",\"errorCode\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\",\"action\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1877
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "login_fail"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{\"phone\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\",\"errorCode\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\",\"action\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->userLoginFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method

.method private b()Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lfaq;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    if-nez v0, :cond_0

    .line 677
    const-class v0, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    iput-object v0, p0, Lfaq;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    .line 680
    :cond_0
    iget-object v0, p0, Lfaq;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 345
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/AuthService;->logout()V

    .line 1351
    const/4 v0, 0x0

    .line 1353
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1357
    :goto_0
    if-eqz v0, :cond_0

    .line 1360
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 347
    :cond_0
    return-void

    .line 1354
    :catch_0
    move-exception v1

    .line 1355
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcma;)V
    .locals 11
    .param p1, "personalDeviceModel"    # Lcfo;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "tempToken"    # Ljava/lang/String;
    .param p4, "appKey"    # Ljava/lang/String;
    .param p5, "uid"    # J
    .param p7, "t"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 616
    .local p8, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    if-nez p8, :cond_0

    .line 617
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "login with tempToken listener is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 620
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 621
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lfaq$16;

    move-object/from16 v0, p8

    invoke-direct {v3, p0, v0}, Lfaq$16;-><init>(Lfaq;Lcma;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 673
    :goto_0
    return-void

    .line 630
    :cond_1
    invoke-direct {p0}, Lfaq;->b()Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    .line 631
    const-string/jumbo v2, "LwpOAuthProvider"

    const-string/jumbo v3, "loginService tempTokenLogin begin"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    iget-object v2, p0, Lfaq;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    const/4 v9, 0x0

    new-instance v10, Lfaq$17;

    move-object/from16 v0, p8

    invoke-direct {v10, p0, v0, p2}, Lfaq$17;-><init>(Lfaq;Lcma;Ljava/lang/String;)V

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    invoke-interface/range {v2 .. v10}, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;->loginByTempToken(Lcfo;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcfw;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 7
    .param p1, "personalDeviceModel"    # Lcfo;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "appKey"    # Ljava/lang/String;
    .param p5, "alilangToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 284
    .local p6, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    if-nez p6, :cond_0

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "login with password listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfaq$25;

    invoke-direct {v1, p0, p6}, Lfaq$25;-><init>(Lfaq;Lcma;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 341
    :goto_0
    return-void

    .line 298
    :cond_2
    invoke-direct {p0}, Lfaq;->b()Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    .line 299
    const-string/jumbo v0, "LwpOAuthProvider"

    const-string/jumbo v1, "loginService login begin"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lfaq;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    new-instance v6, Lfaq$2;

    invoke-direct {v6, p0, p6, p2}, Lfaq$2;-><init>(Lfaq;Lcma;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;->login(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 11
    .param p1, "personalDeviceModel"    # Lcfo;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "appKey"    # Ljava/lang/String;
    .param p5, "token"    # Ljava/lang/String;
    .param p6, "alilangToken"    # Ljava/lang/String;
    .param p7, "tempCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 95
    .local p8, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    if-nez p8, :cond_0

    .line 96
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "login with password listener is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lfaq$1;

    move-object/from16 v0, p8

    invoke-direct {v2, p0, v0}, Lfaq$1;-><init>(Lfaq;Lcma;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 146
    :goto_0
    return-void

    .line 109
    :cond_2
    invoke-direct {p0}, Lfaq;->b()Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    .line 111
    iget-object v1, p0, Lfaq;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    const/4 v8, 0x0

    new-instance v10, Lfaq$12;

    move-object/from16 v0, p8

    invoke-direct {v10, p0, v0, p2}, Lfaq$12;-><init>(Lfaq;Lcma;Ljava/lang/String;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    invoke-interface/range {v1 .. v10}, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;->tokenLogin(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcfw;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcma;)V
    .locals 8
    .param p1, "personalDeviceModel"    # Lcfo;
    .param p2, "mobile"    # Ljava/lang/String;
    .param p3, "tempCode"    # Ljava/lang/String;
    .param p4, "verifyCatId"    # Ljava/lang/String;
    .param p6, "t"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 528
    .local p5, "verifyUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p5, :cond_0

    .line 530
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 531
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfaq$11;

    invoke-direct {v1, p0, p7}, Lfaq$11;-><init>(Lfaq;Lcma;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 571
    :goto_0
    return-void

    .line 542
    :cond_1
    iget-object v0, p0, Lfaq;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    new-instance v7, Lfaq$13;

    invoke-direct {v7, p0, p7, p2}, Lfaq$13;-><init>(Lfaq;Lcma;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;->loginBySelectUser(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;IILcma;)V
    .locals 4
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "bizType"    # I
    .param p3, "viaType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 365
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const-string/jumbo v0, "LwpOAuthProvider"

    const-string/jumbo v1, "sendVerifyCode begin"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    if-nez p4, :cond_0

    .line 368
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "send sms code listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfaq$3;

    invoke-direct {v1, p0, p4}, Lfaq$3;-><init>(Lfaq;Lcma;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 403
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-direct {p0}, Lfaq;->b()Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    .line 383
    iget-object v0, p0, Lfaq;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lfaq$4;

    invoke-direct {v3, p0, p4, p1}, Lfaq$4;-><init>(Lfaq;Lcma;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;->sendVerifyCode(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcee;Lcma;)V
    .locals 5
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "loginResult"    # Lcee;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcee;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    const/4 v4, 0x0

    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    .line 221
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lfaq$21;

    invoke-direct {v3, p0, p3}, Lfaq$21;-><init>(Lfaq;Lcma;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 278
    :goto_0
    return-void

    .line 233
    :cond_1
    if-nez p2, :cond_2

    .line 234
    const-string/jumbo v2, "LwpOAuthProvider"

    const-string/jumbo v3, "LoginResultModel, dt tokenLogin suc. result null"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lfaq$22;

    invoke-direct {v3, p0, p3}, Lfaq$22;-><init>(Lfaq;Lcma;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 247
    :cond_2
    iget-object v2, p2, Lcee;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 248
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lfaq$23;

    invoke-direct {v3, p0, p3, p2}, Lfaq$23;-><init>(Lfaq;Lcma;Lcee;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 260
    :cond_3
    iget-object v0, p2, Lcee;->i:Lcgj;

    .line 261
    .local v0, "profileExtensionModel":Lcgj;
    if-nez v0, :cond_4

    .line 262
    const-string/jumbo v2, "LwpOAuthProvider"

    const-string/jumbo v3, "LoginResultModel, dt tokenLogin suc. UserProfileExtensionModel null"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lfaq$24;

    invoke-direct {v3, p0, p3}, Lfaq$24;-><init>(Lfaq;Lcma;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 275
    :cond_4
    const-string/jumbo v2, "LwpOAuthProvider"

    const-string/jumbo v3, "LoginResultModel, dt tokenLogin suc"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    new-instance v1, Lfaq$a;

    invoke-direct {v1, p0}, Lfaq$a;-><init>(Lfaq;)V

    .line 277
    .local v1, "wukongLogin":Lfaq$a;
    invoke-virtual {v1, p2, p1, p3}, Lfaq$a;->a(Lcee;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 12
    .param p1, "thirdPartyUserId"    # Ljava/lang/String;
    .param p2, "personalDeviceModel"    # Lcfo;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "appKey"    # Ljava/lang/String;
    .param p6, "token"    # Ljava/lang/String;
    .param p7, "alilangToken"    # Ljava/lang/String;
    .param p8, "tmpCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 153
    .local p9, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;>;"
    if-nez p9, :cond_0

    .line 154
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "thirdPartyUserId, login with password listener is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 159
    invoke-virtual/range {v1 .. v9}, Lfaq;->a(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 1177
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lfaq$19;

    move-object/from16 v0, p9

    invoke-direct {v2, p0, v0}, Lfaq$19;-><init>(Lfaq;Lcma;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 173
    :cond_3
    invoke-direct {p0}, Lfaq;->b()Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    .line 175
    invoke-static {}, Lfas;->a()Lfas;

    move-result-object v2

    new-instance v1, Lfaq$20;

    move-object/from16 v0, p9

    invoke-direct {v1, p0, v0, p3}, Lfaq$20;-><init>(Lfaq;Lcma;Ljava/lang/String;)V

    .line 1167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1168
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1169
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1170
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    if-nez p2, :cond_5

    .line 1174
    :cond_4
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "Bad request param."

    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1180
    :cond_5
    new-instance v10, Lfas$17;

    invoke-direct {v10, v2, v1}, Lfas$17;-><init>(Lfas;Lcma;)V

    .line 1197
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    .line 1198
    const-string/jumbo v1, "LoginApiImpl"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v11

    new-instance v1, Lfas$18;

    const/4 v9, 0x0

    move-object v4, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, p2

    invoke-direct/range {v1 .. v10}, Lfas$18;-><init>(Lfas;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcfo;Lcfw;Lcmi;)V

    invoke-interface {v11, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "mobile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 408
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    if-nez p2, :cond_0

    .line 409
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "check has password listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfaq$5;

    invoke-direct {v1, p0, p2}, Lfaq$5;-><init>(Lfaq;Lcma;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 437
    :goto_0
    return-void

    .line 422
    :cond_1
    invoke-direct {p0}, Lfaq;->b()Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    .line 424
    iget-object v0, p0, Lfaq;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    new-instance v1, Lfaq$6;

    invoke-direct {v1, p0, p2}, Lfaq$6;-><init>(Lfaq;Lcma;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;->needInit(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ILcma;)V
    .locals 2
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "smsCode"    # Ljava/lang/String;
    .param p3, "bizType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 442
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-nez p4, :cond_0

    .line 443
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "checkVerifyCode listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfaq$7;

    invoke-direct {v1, p0, p4}, Lfaq$7;-><init>(Lfaq;Lcma;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 471
    :goto_0
    return-void

    .line 456
    :cond_1
    invoke-direct {p0}, Lfaq;->b()Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    .line 458
    iget-object v0, p0, Lfaq;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    new-instance v1, Lfaq$8;

    invoke-direct {v1, p0, p4}, Lfaq$8;-><init>(Lfaq;Lcma;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;->checkVerifyCode(Ljava/lang/String;Ljava/lang/String;ILiyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcfw;Lcfo;Lcma;)V
    .locals 6
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "secureModel"    # Lcfw;
    .param p4, "personalDeviceModel"    # Lcfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcfw;",
            "Lcfo;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 580
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfaq$14;

    invoke-direct {v1, p0, p5}, Lfaq$14;-><init>(Lfaq;Lcma;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 612
    :goto_0
    return-void

    .line 593
    :cond_1
    iget-object v0, p0, Lfaq;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    new-instance v5, Lfaq$15;

    invoke-direct {v5, p0, p5}, Lfaq$15;-><init>(Lfaq;Lcma;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;->reportForLost(Ljava/lang/String;Ljava/lang/String;Lcfw;Lcfo;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "tempCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcge;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 484
    .local p3, "listener":Lcma;, "Lcma<Lcge;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfaq$9;

    invoke-direct {v1, p0, p3}, Lfaq$9;-><init>(Lfaq;Lcma;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 520
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v0, p0, Lfaq;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    new-instance v1, Lfaq$10;

    invoke-direct {v1, p0, p3}, Lfaq$10;-><init>(Lfaq;Lcma;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;->showUsersForVerify(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method
