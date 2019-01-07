.class public final Lell;
.super Ljava/lang/Object;
.source "UrlRouter.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/NavigatorHook;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hook(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intentB"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 39
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v8

    .line 42
    :cond_1
    instance-of v9, p1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v9, :cond_0

    move-object v0, p1

    .line 46
    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 47
    .local v0, "activityA":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 48
    .local v2, "intentA":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 52
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 55
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v8, "spm"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "spmA":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 57
    const-string/jumbo v8, "spm-pre"

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_2
    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    .line 60
    .local v6, "spmUrlA":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 61
    const-string/jumbo v8, "_pre"

    invoke-virtual {v3, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_3
    const-string/jumbo v8, "spm"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "spmB":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 67
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->getCachedClickedSpm()Ljava/lang/String;

    move-result-object v5

    .line 69
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 70
    const-string/jumbo v8, "spm-url"

    invoke-virtual {v3, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, "spmUrlB":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 74
    const-string/jumbo v8, "url"

    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_6
    const-string/jumbo v8, "ut-map"

    invoke-virtual {p2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v4    # "spmA":Ljava/lang/String;
    .end local v5    # "spmB":Ljava/lang/String;
    .end local v6    # "spmUrlA":Ljava/lang/String;
    .end local v7    # "spmUrlB":Ljava/lang/String;
    :goto_1
    const/4 v8, 0x1

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "launcher"

    const-string/jumbo v9, "UrlRouter"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "[Launcher]UrlRouter: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
