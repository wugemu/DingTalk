.class public Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;
.super Ljava/lang/Object;
.source "MarketActivitySearchEntryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->a:Ljava/util/List;

    .line 45
    const-string/jumbo v1, "pref_activity_keywords_json_config"

    invoke-static {v1}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "configJson":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->a(Ljava/lang/String;Z)V

    .line 47
    return-void
.end method

.method public static a()Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->b:Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->b:Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;

    invoke-direct {v0}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;-><init>()V

    sput-object v0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->b:Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->b:Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;)Z
    .locals 12
    .param p0, "config"    # Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 94
    const/4 v1, 0x1

    .line 95
    .local v1, "globalized":Z
    iget-boolean v4, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->globalized:Z

    if-eqz v4, :cond_0

    .line 96
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v4, v7, v6, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;ZZ)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    :goto_0
    and-int/lit8 v1, v4, 0x1

    .line 99
    :cond_0
    const-string/jumbo v4, "pref_key_entry_switch_search_market_actiivty"

    invoke-static {v4, v5}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 100
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const-string/jumbo v7, "config_switch_key_search_market_activity"

    invoke-virtual {v4, v7, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v5

    .line 101
    .local v0, "configSwitchOn":Z
    :goto_1
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    .line 102
    .local v2, "now":J
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-wide v8, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->start:J

    cmp-long v4, v8, v10

    if-eqz v4, :cond_1

    iget-wide v8, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->end:J

    cmp-long v4, v8, v10

    if-eqz v4, :cond_1

    iget-wide v8, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->start:J

    cmp-long v4, v2, v8

    if-lez v4, :cond_4

    iget-wide v8, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->end:J

    cmp-long v4, v2, v8

    if-gez v4, :cond_4

    :cond_1
    :goto_2
    return v5

    .end local v0    # "configSwitchOn":Z
    .end local v2    # "now":J
    :cond_2
    move v4, v6

    .line 96
    goto :goto_0

    :cond_3
    move v0, v6

    .line 100
    goto :goto_1

    .restart local v0    # "configSwitchOn":Z
    .restart local v2    # "now":J
    :cond_4
    move v5, v6

    .line 102
    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;
    .locals 5
    .param p1, "userKeyword"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 120
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_search_activity_keywords"

    .line 4083
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 121
    .local v1, "switchOn":Z
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->a:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;

    .line 124
    .local v0, "config":Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->a(Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->hasActivityKeywords()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->matchKeywords(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    .end local v0    # "config":Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "configJson"    # Ljava/lang/String;
    .param p2, "notify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    :goto_0
    return-void

    .line 66
    :cond_0
    :try_start_0
    const-class v3, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;

    invoke-static {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 67
    .local v0, "configList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;>;"
    if-nez v0, :cond_1

    .line 68
    const-string/jumbo v3, "empty activity keyword config list"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 1050
    const-string/jumbo v5, "search"

    invoke-static {v5, v3, v4}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 78
    .end local v0    # "configList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;>;"
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "Exception parse activity keyword config:"

    aput-object v4, v3, v6

    invoke-static {v1}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    .line 2050
    const-string/jumbo v5, "search"

    invoke-static {v5, v3, v4}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "configList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;>;"
    :cond_1
    if-eqz p2, :cond_2

    .line 73
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "action_search_query_hint_changed"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    invoke-virtual {v3, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 76
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    iput-object v0, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->a:Ljava/util/List;

    .line 77
    const-string/jumbo v3, "pref_activity_keywords_json_config"

    invoke-static {v3, p1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 80
    .end local v0    # "configList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;>;"
    :catch_1
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/IncompatibleClassChangeError;
    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "Exception parse activity keyword config:"

    aput-object v4, v3, v6

    invoke-static {v1}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    .line 3050
    const-string/jumbo v5, "search"

    invoke-static {v5, v3, v4}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b()Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 106
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_search_activity_keywords"

    .line 3083
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 107
    .local v1, "switchOn":Z
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->a:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;

    .line 110
    .local v0, "config":Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->a(Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->hasActivityQueryHints()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    .end local v0    # "config":Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;->b()Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;

    move-result-object v0

    .line 136
    .local v0, "config":Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->getQueryHintString()Ljava/lang/String;

    move-result-object v1

    .line 140
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lemt$g;->global_search:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
