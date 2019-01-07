.class public abstract Lqj;
.super Lyq;
.source "AbsCommonTask.java"


# static fields
.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field protected c:Lcom/alibaba/alimei/emailcommon/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lqj;->d:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lqj;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lyq;-><init>()V

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

    iget-object v8, p0, Lqj;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v7

    iput-object v7, p0, Lqj;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 47
    iget-object v7, p0, Lqj;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    if-nez v7, :cond_0

    .line 48
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "Sync user basic folder but"

    aput-object v8, v7, v1

    iget-object v8, p0, Lqj;->a:Ljava/lang/String;

    aput-object v8, v7, v6

    const/4 v6, 0x2

    const-string/jumbo v8, " is not login or has logout"

    aput-object v8, v7, v6

    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "errorMsg":Ljava/lang/String;
    const-string/jumbo v6, "AbsCommonTask"

    invoke-static {v6, v0}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string/jumbo v6, "AbsCommonTask"

    invoke-static {v6, v0}, Lzd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .end local v0    # "errorMsg":Ljava/lang/String;
    :goto_0
    return v1

    .line 54
    :cond_0
    iget-object v1, p0, Lqj;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-object v1, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthToken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 57
    .local v4, "now":J
    iget-object v1, p0, Lqj;->b:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-wide v8, v1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthExpires:J

    const-wide/32 v10, 0xea60

    sub-long v2, v8, v10

    .line 58
    .local v2, "expireIn":J
    cmp-long v1, v4, v2

    if-ltz v1, :cond_1

    .line 59
    iget-object v1, p0, Lqj;->a:Ljava/lang/String;

    .line 1159
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1163
    sget-object v7, Lup;->a:Luq;

    .line 2026
    if-nez v7, :cond_2

    .line 65
    .end local v2    # "expireIn":J
    .end local v4    # "now":J
    :cond_1
    :goto_1
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v1

    iget-object v7, p0, Lqj;->a:Ljava/lang/String;

    invoke-interface {v1, v7}, Lpq;->getAccountByMail(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v1

    iput-object v1, p0, Lqj;->c:Lcom/alibaba/alimei/emailcommon/Account;

    move v1, v6

    .line 66
    goto :goto_0

    .line 3026
    .restart local v2    # "expireIn":J
    .restart local v4    # "now":J
    :cond_2
    sget-object v7, Lup;->a:Luq;

    .line 1167
    const/4 v8, 0x0

    invoke-interface {v7, v1, v8}, Luq;->a(Ljava/lang/String;Lxv;)V

    goto :goto_1

    .line 62
    .end local v2    # "expireIn":J
    .end local v4    # "now":J
    :cond_3
    const-string/jumbo v1, "AbsCommonTask"

    const-string/jumbo v7, "useraccountModel oauthToken is null"

    invoke-static {v1, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
