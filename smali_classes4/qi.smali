.class public abstract Lqi;
.super Lyr;
.source "AbsAutoRetryTask.java"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field protected c:Lcom/alibaba/alimei/emailcommon/Account;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lyr;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(JLcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;Ljava/lang/String;)V
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "autoTryNetwork"    # Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;
    .param p4, "autoTryFailure"    # Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;
    .param p5, "referenceId"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lyr;-><init>(JLcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryFailure;Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 46
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v7

    iget-object v8, p0, Lqi;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v7

    iput-object v7, p0, Lqi;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 47
    iget-object v7, p0, Lqi;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    if-nez v7, :cond_0

    .line 48
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "Sync user basic folder but"

    aput-object v8, v7, v1

    iget-object v8, p0, Lqi;->a:Ljava/lang/String;

    aput-object v8, v7, v6

    const/4 v6, 0x2

    const-string/jumbo v8, " is not login or has logout"

    aput-object v8, v7, v6

    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "errorMsg":Ljava/lang/String;
    const-string/jumbo v6, "AbsAutoRetryTask"

    invoke-static {v6, v0}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string/jumbo v6, "AbsAutoRetryTask"

    invoke-static {v6, v0}, Lzd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v0    # "errorMsg":Ljava/lang/String;
    :goto_0
    return v1

    .line 55
    :cond_0
    iget-object v1, p0, Lqi;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-object v1, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 58
    .local v4, "now":J
    iget-object v1, p0, Lqi;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-wide v8, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthExpires:J

    const-wide/32 v10, 0xea60

    sub-long v2, v8, v10

    .line 59
    .local v2, "expireIn":J
    cmp-long v1, v4, v2

    if-ltz v1, :cond_1

    .line 60
    iget-object v1, p0, Lqi;->a:Ljava/lang/String;

    .line 1093
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1097
    sget-object v7, Lup;->a:Luq;

    .line 2026
    if-nez v7, :cond_2

    .line 88
    .end local v2    # "expireIn":J
    .end local v4    # "now":J
    :cond_1
    :goto_1
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v1

    iget-object v7, p0, Lqi;->a:Ljava/lang/String;

    invoke-interface {v1, v7}, Lpq;->getAccountByMail(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v1

    iput-object v1, p0, Lqi;->c:Lcom/alibaba/alimei/emailcommon/Account;

    move v1, v6

    .line 89
    goto :goto_0

    .line 3026
    .restart local v2    # "expireIn":J
    .restart local v4    # "now":J
    :cond_2
    sget-object v7, Lup;->a:Luq;

    .line 1101
    const/4 v8, 0x0

    invoke-interface {v7, v1, v8}, Luq;->a(Ljava/lang/String;Lxv;)V

    goto :goto_1

    .line 63
    .end local v2    # "expireIn":J
    .end local v4    # "now":J
    :cond_3
    const-string/jumbo v1, "AbsAutoRetryTask"

    const-string/jumbo v7, "useraccountModel oauthToken is null"

    invoke-static {v1, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
