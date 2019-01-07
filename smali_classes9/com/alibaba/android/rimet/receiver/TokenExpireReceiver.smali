.class public Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TokenExpireReceiver.java"


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 113
    const-string/jumbo v3, "LIFECYCLE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 114
    .local v2, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->isBackground()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;->d:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 116
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;->d:Landroid/content/Context;

    const-class v4, Lcom/alibaba/android/rimet/biz/FinishActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v1, "intent":Landroid/content/Intent;
    const v3, 0x10008000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    iget-object v3, p0, Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;->d:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "user_lg"

    sget-object v4, Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;->a:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Go to finish exp: "

    aput-object v7, v5, v6

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;->d:Landroid/content/Context;

    invoke-virtual {v3, v4, v8}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a(Landroid/content/Context;Z)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;->c:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Leme;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 47
    iput-object p1, p0, Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;->d:Landroid/content/Context;

    .line 49
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const-string/jumbo v5, "general_quick_login_enable"

    invoke-virtual {v4, v5, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 51
    .local v1, "isNoPwdOpen":Z
    const-string/jumbo v4, "general_quick_login_enable"

    invoke-static {v4, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 53
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getTempToken()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;->b:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getKickOutMsg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;->c:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v4}, Lcom/alibaba/android/rimet/RimetDDContext;->unregisterXpn()V

    .line 57
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->e()V

    .line 58
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v4}, Lcom/alibaba/android/rimet/RimetDDContext;->unRegisterAccountReceiver()V

    .line 60
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->i()V

    .line 62
    invoke-static {p1}, Lcms;->s(Landroid/content/Context;)Z

    move-result v0

    .line 64
    .local v0, "isAppFont":Z
    const-string/jumbo v4, "com.alibaba.wukong.auth.LOGOUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 65
    sget-object v4, Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;->a:Ljava/lang/String;

    const-string/jumbo v5, "ACTION_REFRESH_TOKEN_EXPIRE go to login"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string/jumbo v4, "user_lg"

    sget-object v5, Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;->a:Ljava/lang/String;

    const-string/jumbo v6, "ACTION_REFRESH_TOKEN_EXPIRE go to logout"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->a()V

    .line 69
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->f()V

    .line 70
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v4}, Lcom/alibaba/android/rimet/RimetDDContext;->clearLocalCache()V

    .line 71
    const-string/jumbo v4, "kick_out_reason"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "reason":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 74
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 76
    iget-object v4, p0, Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;->d:Landroid/content/Context;

    const v5, 0x7f0900e8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    .line 81
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;->a()V

    .line 109
    .end local v3    # "reason":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 110
    return-void

    .line 78
    .restart local v3    # "reason":Ljava/lang/String;
    :cond_3
    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    .end local v3    # "reason":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "com.alibaba.wukong.auth.KICKOUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 84
    sget-object v4, Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;->a:Ljava/lang/String;

    const-string/jumbo v5, "ACTTION_KICKOUT go to login"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string/jumbo v4, "user_lg"

    sget-object v5, Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;->a:Ljava/lang/String;

    const-string/jumbo v6, "ACTTION_KICKOUT go to logout"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->a()V

    .line 88
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->f()V

    .line 89
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v4}, Lcom/alibaba/android/rimet/RimetDDContext;->clearLocalCache()V

    .line 90
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->l()V

    .line 91
    if-eqz v0, :cond_7

    .line 93
    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 94
    :cond_5
    const-string/jumbo v4, "msg"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .restart local v3    # "reason":Ljava/lang/String;
    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    .line 97
    .end local v3    # "reason":Ljava/lang/String;
    :cond_6
    invoke-direct {p0}, Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;->a()V

    .line 100
    :cond_7
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v2

    .line 101
    .local v2, "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->j()V

    .line 104
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->C()V

    goto/16 :goto_1

    .line 105
    .end local v2    # "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    :cond_8
    const-string/jumbo v4, "com.alibaba.wukong.auth.LOGIN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 107
    const-string/jumbo v4, "user_lg"

    sget-object v5, Lcom/alibaba/android/rimet/receiver/TokenExpireReceiver;->a:Ljava/lang/String;

    const-string/jumbo v6, "clearProtocolRequest go to logout"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
