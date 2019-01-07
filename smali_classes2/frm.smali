.class public final Lfrm;
.super Ljava/lang/Object;
.source "NotReceiveSmsCodePresenter.java"

# interfaces
.implements Lfrl$a;


# instance fields
.field a:Landroid/app/Activity;

.field b:Lfrl$b;

.field c:Lcom/alicom/phonenumberauthsdk/gatewayauth/model/InitResult;

.field d:Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;


# direct methods
.method public constructor <init>(Lfrl$b;)V
    .locals 1
    .param p1, "view"    # Lfrl$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lfrm;->b:Lfrl$b;

    .line 46
    iget-object v0, p0, Lfrm;->b:Lfrl$b;

    if-nez v0, :cond_0

    .line 54
    .end local p1    # "view":Lfrl$b;
    :goto_0
    return-void

    .line 50
    .restart local p1    # "view":Lfrl$b;
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 51
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "view":Lfrl$b;
    iput-object p1, p0, Lfrm;->a:Landroid/app/Activity;

    .line 53
    :cond_1
    iget-object v0, p0, Lfrm;->b:Lfrl$b;

    invoke-interface {v0, p0}, Lfrl$b;->setPresenter(Lcjd;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "areaCode"    # Ljava/lang/String;
    .param p2, "rawPhoneNumber"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 61
    new-instance v0, Lfrm$1;

    invoke-direct {v0, p0}, Lfrm$1;-><init>(Lfrm;)V

    .line 91
    .local v0, "callback":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;>;"
    invoke-static {}, Lfas;->a()Lfas;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lfas;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 92
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lfrm;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfrm;->b:Lfrl$b;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "areaCode"    # Ljava/lang/String;
    .param p2, "rawPhoneNumber"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 99
    invoke-virtual {p0}, Lfrm;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    :goto_0
    return-void

    .line 102
    :cond_0
    const-string/jumbo v2, "+86"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    iget-object v2, p0, Lfrm;->b:Lfrl$b;

    invoke-interface {v2}, Lfrl$b;->h()V

    goto :goto_0

    .line 106
    :cond_1
    new-instance v1, Lfrm$2;

    invoke-direct {v1, p0}, Lfrm$2;-><init>(Lfrm;)V

    .line 160
    .local v1, "tokenListener":Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;
    iget-object v2, p0, Lfrm;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->getInstance(Landroid/content/Context;Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;)Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;

    move-result-object v2

    iput-object v2, p0, Lfrm;->d:Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;

    .line 1239
    iget-object v2, p0, Lfrm;->a:Landroid/app/Activity;

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    .line 162
    if-nez v2, :cond_2

    .line 163
    iget-object v2, p0, Lfrm;->a:Landroid/app/Activity;

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    aput-object v4, v3, v5

    const-string/jumbo v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v3, v6

    new-instance v4, Lfrm$3;

    invoke-direct {v4, p0}, Lfrm$3;-><init>(Lfrm;)V

    invoke-static {v2, v6, v3, v4}, Lbyy;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    .line 183
    :goto_1
    iget-object v2, p0, Lfrm;->c:Lcom/alicom/phonenumberauthsdk/gatewayauth/model/InitResult;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lfrm;->c:Lcom/alicom/phonenumberauthsdk/gatewayauth/model/InitResult;

    invoke-virtual {v2}, Lcom/alicom/phonenumberauthsdk/gatewayauth/model/InitResult;->isCan4GAuth()Z

    move-result v2

    if-nez v2, :cond_3

    .line 184
    iget-object v2, p0, Lfrm;->d:Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;

    invoke-virtual {v2}, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->onDestroy()V

    .line 185
    const-string/jumbo v2, "NotReceiveSmsCodePresenter.initSim: can\'t 4G auth"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lfxo;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object v2, p0, Lfrm;->b:Lfrl$b;

    invoke-interface {v2}, Lfrl$b;->h()V

    goto :goto_0

    .line 181
    :cond_2
    iget-object v2, p0, Lfrm;->d:Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;

    invoke-virtual {v2}, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->init()Lcom/alicom/phonenumberauthsdk/gatewayauth/model/InitResult;

    move-result-object v2

    iput-object v2, p0, Lfrm;->c:Lcom/alicom/phonenumberauthsdk/gatewayauth/model/InitResult;

    goto :goto_1

    .line 190
    :cond_3
    iget-object v2, p0, Lfrm;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->getInstance(Landroid/content/Context;Lcom/alicom/phonenumberauthsdk/gatewayauth/TokenResultListener;)Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;

    move-result-object v2

    iput-object v2, p0, Lfrm;->d:Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;

    .line 192
    new-instance v0, Lfrm$4;

    invoke-direct {v0, p0}, Lfrm$4;-><init>(Lfrm;)V

    .line 235
    .local v0, "simInitCallback":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/SimVerifyInitObject;>;>;"
    invoke-static {}, Lfas;->a()Lfas;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v5

    const-string/jumbo v4, "-"

    aput-object v4, v3, v6

    aput-object p2, v3, v7

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lfrm;->d:Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;

    invoke-virtual {v4}, Lcom/alicom/phonenumberauthsdk/gatewayauth/AlicomAuthHelper;->getVersion()Ljava/lang/String;

    move-result-object v4

    .line 1557
    new-instance v5, Lfas$14;

    invoke-direct {v5, v2, v0}, Lfas$14;-><init>(Lfas;Lcma;)V

    .line 1564
    new-instance v6, Lhzx;

    invoke-direct {v6}, Lhzx;-><init>()V

    .line 1565
    const-wide/16 v8, 0x1388

    .line 2043
    iput-wide v8, v6, Lhzx;->a:J

    .line 1566
    invoke-virtual {v5, v6}, Lcmg;->addBeforeFiler(Liyt;)V

    .line 1568
    iget-object v2, v2, Lfas;->a:Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;->simVerifyInit(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto/16 :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method
