.class public Lcom/alibaba/android/dingtalk/doc/ui/activity/DocHomeActivity;
.super Lcom/alibaba/android/dingtalk/doc/base/DocBaseActivity;
.source "DocHomeActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocHomeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocHomeActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/doc/base/DocBaseActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 15
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 60
    .local v2, "currentUri":Landroid/net/Uri;
    const-string/jumbo v10, "doc"

    sget-object v11, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocHomeActivity;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "handleIntent currentUri ="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, "path":Ljava/lang/String;
    const-string/jumbo v10, "type"

    invoke-virtual {v2, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 65
    .local v7, "type":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 66
    const-string/jumbo v10, "document"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 67
    const-string/jumbo v7, "d"

    .line 73
    :cond_0
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 74
    const-string/jumbo v10, "doc"

    sget-object v11, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocHomeActivity;->a:Ljava/lang/String;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "handleIntent param error : doc type null currentUri = "

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocHomeActivity;->finish()V

    .line 126
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 68
    .restart local v6    # "path":Ljava/lang/String;
    .restart local v7    # "type":Ljava/lang/String;
    :cond_2
    const-string/jumbo v10, "spreadsheet"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 69
    const-string/jumbo v7, "s"

    goto :goto_0

    .line 79
    :cond_3
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    .line 1129
    .local v8, "urlBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v10

    if-nez v10, :cond_5

    .line 1130
    const-string/jumbo v10, "http://dev-alidocs.dingtalk.com"

    .line 80
    :goto_2
    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/h5/"

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 81
    invoke-virtual {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 84
    .local v0, "builder":Landroid/net/Uri$Builder;
    :try_start_0
    invoke-virtual {v2}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v5

    .line 85
    .local v5, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_7

    .line 86
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 87
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 88
    .local v9, "value":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string/jumbo v11, "biz_ver"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 89
    invoke-virtual {v0, v4, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 113
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 114
    .local v3, "e":Ljava/lang/UnsupportedOperationException;
    const-string/jumbo v10, "doc"

    sget-object v11, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocHomeActivity;->a:Ljava/lang/String;

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "handleIntent parser error : exception = "

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v3}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string/jumbo v14, "\nstack="

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-virtual {v3}, Ljava/lang/UnsupportedOperationException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v3}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 118
    .end local v3    # "e":Ljava/lang/UnsupportedOperationException;
    :goto_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v10, "url"

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string/jumbo v10, "doc"

    sget-object v11, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocHomeActivity;->a:Ljava/lang/String;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "dispatch intent dest : "

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string/jumbo v10, "show_options_menu"

    const/4 v11, 0x1

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    const-string/jumbo v10, "show_bottom_botton"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    invoke-static {}, Lcom/alibaba/android/dingtalk/doc/WEDocInterface;->a()Lcom/alibaba/android/dingtalk/doc/WEDocInterface;

    move-result-object v10

    invoke-virtual {v10, p0, v1}, Lcom/alibaba/android/dingtalk/doc/WEDocInterface;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocHomeActivity;->finish()V

    goto/16 :goto_1

    .line 1131
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_5
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v10

    sget v11, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e:I

    if-ne v10, v11, :cond_6

    .line 1132
    const-string/jumbo v10, "https://pre-alidocs.dingtalk.com"

    goto/16 :goto_2

    .line 1134
    :cond_6
    const-string/jumbo v10, "https://alidocs.dingtalk.com"

    goto/16 :goto_2

    .line 94
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    .restart local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    :try_start_1
    const-string/jumbo v10, "dd_func_rt"

    invoke-virtual {v2, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 95
    const-string/jumbo v10, "dd_func_rt"

    const-string/jumbo v11, "true"

    invoke-virtual {v0, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 98
    :cond_8
    const-string/jumbo v10, "dd_rt_type"

    invoke-virtual {v2, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 99
    const-string/jumbo v10, "dd_rt_type"

    const-string/jumbo v11, "1"

    invoke-virtual {v0, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 102
    :cond_9
    const-string/jumbo v10, "showmenu"

    invoke-virtual {v2, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 103
    const-string/jumbo v10, "showmenu"

    const-string/jumbo v11, "false"

    invoke-virtual {v0, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 106
    :cond_a
    const-string/jumbo v10, "edit"

    invoke-virtual {v2, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 107
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string/jumbo v10, "edit"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 108
    const-string/jumbo v10, "edit"

    const-string/jumbo v11, "true"

    invoke-virtual {v0, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 112
    :cond_b
    const-string/jumbo v10, "biz_ver"

    const-string/jumbo v11, "10"

    invoke-virtual {v0, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/doc/base/DocBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocHomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocHomeActivity;->a(Landroid/content/Intent;)V

    .line 49
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/doc/base/DocBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocHomeActivity;->a(Landroid/content/Intent;)V

    .line 55
    return-void
.end method
