.class public Lcom/alibaba/lightapp/runtime/weex/WMLUrlHandler;
.super Ljava/lang/Object;
.source "WMLUrlHandler.java"


# static fields
.field private static final PARAM_DD_INSTANCE:Ljava/lang/String; = "dd_instance"

.field private static final PARAM_DD_VERSION:Ljava/lang/String; = "dd_version"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handle(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 37
    const-string/jumbo v9, "hybrid_config_enable_weex_mini_app"

    invoke-static {v9, v7}, Lhdo;->b(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v7

    .line 42
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 43
    .local v6, "uri":Landroid/net/Uri;
    const-string/jumbo v9, "dd_version"

    invoke-virtual {v6, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "minVersion":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 45
    const/4 v9, 0x0

    invoke-static {v9}, Lcms;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "currentVersion":Ljava/lang/String;
    invoke-static {v0, v4}, Lhon;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 52
    .end local v0    # "currentVersion":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v9

    sget v10, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v9, v10, :cond_3

    move v1, v8

    .line 53
    .local v1, "debuggable":Z
    :goto_1
    invoke-static {}, Ljpo;->a()Ljpo;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9, v1}, Ljpo;->a(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v3

    .line 54
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 55
    invoke-static {}, Lcom/alibaba/lightapp/runtime/weex/RuntimeWeex;->init()V

    .line 56
    invoke-static {}, Lcom/alibaba/lightapp/runtime/weex/RuntimeWindmill;->init()V

    .line 57
    const-string/jumbo v9, "false"

    const-string/jumbo v10, "dd_instance"

    invoke-virtual {v6, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 58
    .local v5, "multiInstance":Z
    if-nez v5, :cond_4

    const-string/jumbo v9, "weex_multi_task_enable"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lhdo;->b(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 59
    invoke-static {v3, p0}, Lcom/alibaba/lightapp/runtime/weex/WMLUrlHandler;->startWeexAppFromV456(Landroid/content/Intent;Landroid/content/Context;)V

    :goto_2
    move v7, v8

    .line 63
    goto :goto_0

    .end local v1    # "debuggable":Z
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "multiInstance":Z
    :cond_3
    move v1, v7

    .line 52
    goto :goto_1

    .line 61
    .restart local v1    # "debuggable":Z
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "multiInstance":Z
    :cond_4
    invoke-static {v3, p0}, Lcom/alibaba/lightapp/runtime/weex/WMLUrlHandler;->startWeexAppOnOldVersion(Landroid/content/Intent;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 65
    .end local v1    # "debuggable":Z
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "minVersion":Ljava/lang/String;
    .end local v5    # "multiInstance":Z
    .end local v6    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static startWeexAppFromV456(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-class v0, Lcom/taobao/windmill/bundle/alive/AppProxyActivity;

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static startWeexAppOnOldVersion(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const-class v0, Lcom/alibaba/lightapp/runtime/weex/activity/DDWMLActivity;

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 79
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
