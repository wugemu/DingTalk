.class public Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLErrorPrompt;
.super Ljava/lang/Object;
.source "WMLErrorPrompt.java"

# interfaces
.implements Ljqk;


# static fields
.field private static final TAG:Ljava/lang/String; = "WMLErrorPrompt"


# instance fields
.field private mCodeView:Landroid/widget/TextView;

.field private mContext:Landroid/app/Activity;

.field private mLoadingNetError:Landroid/widget/ImageView;

.field private mSubText:Landroid/widget/TextView;

.field private mTipsText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLErrorPrompt;->mContext:Landroid/app/Activity;

    .line 36
    return-void
.end method

.method private fallback()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLErrorPrompt;->mContext:Landroid/app/Activity;

    if-eqz v10, :cond_0

    .line 66
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLErrorPrompt;->mContext:Landroid/app/Activity;

    check-cast v9, Ljqd;

    .line 67
    .local v9, "wmlContext":Ljqd;
    invoke-interface {v9}, Ljqd;->getAppCode()Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    move-result-object v0

    .line 68
    .local v0, "appCodeModel":Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
    if-eqz v0, :cond_0

    .line 69
    iget-object v5, v0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->orgUrl:Ljava/lang/String;

    .line 71
    .local v5, "orgUrl":Ljava/lang/String;
    const/4 v4, 0x0

    .line 73
    .local v4, "fallbackUrl":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 75
    .local v8, "uri":Landroid/net/Uri;
    if-eqz v8, :cond_1

    .line 76
    const-string/jumbo v10, "_wml_debug"

    invoke-virtual {v8, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "debugStatus":Ljava/lang/String;
    const-string/jumbo v10, "true"

    invoke-static {v10, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 112
    .end local v0    # "appCodeModel":Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
    .end local v2    # "debugStatus":Ljava/lang/String;
    .end local v4    # "fallbackUrl":Ljava/lang/String;
    .end local v5    # "orgUrl":Ljava/lang/String;
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v9    # "wmlContext":Ljqd;
    :cond_0
    :goto_0
    return-void

    .line 82
    .restart local v0    # "appCodeModel":Lcom/taobao/windmill/bundle/container/core/AppCodeModel;
    .restart local v4    # "fallbackUrl":Ljava/lang/String;
    .restart local v5    # "orgUrl":Ljava/lang/String;
    .restart local v8    # "uri":Landroid/net/Uri;
    .restart local v9    # "wmlContext":Ljqd;
    :cond_1
    const-string/jumbo v10, "fallback_url"

    invoke-virtual {v8, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, "paramFallbackUrl":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_3

    .line 84
    move-object v4, v6

    .line 94
    .end local v6    # "paramFallbackUrl":Ljava/lang/String;
    .end local v8    # "uri":Landroid/net/Uri;
    :goto_1
    const-string/jumbo v10, "WMLErrorPrompt"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "fallbackUrl in fallback method= "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceTask(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 97
    invoke-static {}, Ljqb;->a()Ljqb;

    move-result-object v10

    .line 1067
    iget-object v11, v0, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->appCode:Ljava/lang/String;

    .line 1068
    iget-object v10, v10, Ljqb;->b:Ljava/util/Map;

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 1069
    if-eqz v10, :cond_4

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 1070
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Context;

    move-object v7, v10

    .line 98
    .local v7, "proxyContext":Landroid/content/Context;
    :goto_2
    if-nez v7, :cond_2

    .line 99
    const-string/jumbo v10, "WMLErrorPrompt"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "proxyContext is null in fallback method"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceTask(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLErrorPrompt;->mContext:Landroid/app/Activity;

    .line 103
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v10, "url"

    invoke-virtual {v1, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {v7, v1}, Lhow;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 107
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLErrorPrompt;->mContext:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    .line 108
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLErrorPrompt;->mContext:Landroid/app/Activity;

    sget v11, Lhdn$a;->wml_temp:I

    sget v12, Lhdn$a;->wml_temp:I

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 86
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v7    # "proxyContext":Landroid/content/Context;
    .restart local v6    # "paramFallbackUrl":Ljava/lang/String;
    .restart local v8    # "uri":Landroid/net/Uri;
    :cond_3
    :try_start_1
    const-string/jumbo v10, "_wml_code="

    const-string/jumbo v11, "_dummy_wml_code="

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "_wml_path="

    const-string/jumbo v12, "_dummy_wml_path="

    .line 87
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto/16 :goto_1

    .line 90
    .end local v6    # "paramFallbackUrl":Ljava/lang/String;
    .end local v8    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v3

    .line 91
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "WMLErrorPrompt"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "parseUrl in fallback error: "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/weex/monitor/WeexLogger;->traceTask(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1072
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v7, 0x0

    goto :goto_2
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v4, 0x8

    .line 40
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLErrorPrompt;->mContext:Landroid/app/Activity;

    sget v2, Lhdn$i;->wml_error_layout:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 42
    .local v0, "view":Landroid/view/ViewGroup;
    sget v1, Lhdn$h;->loading_net_error:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLErrorPrompt;->mLoadingNetError:Landroid/widget/ImageView;

    .line 43
    sget v1, Lhdn$h;->tv_tips:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLErrorPrompt;->mTipsText:Landroid/widget/TextView;

    .line 44
    sget v1, Lhdn$h;->tv_error_subTitle:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLErrorPrompt;->mSubText:Landroid/widget/TextView;

    .line 45
    sget v1, Lhdn$h;->tv_mapping_code:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLErrorPrompt;->mCodeView:Landroid/widget/TextView;

    .line 46
    sget v1, Lhdn$h;->iv_four_ball:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 47
    sget v1, Lhdn$h;->iv_ding_logo:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 48
    return-object v0
.end method

.method public showError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errTitle"    # Ljava/lang/String;
    .param p2, "subTitle"    # Ljava/lang/String;
    .param p3, "errCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLErrorPrompt;->mLoadingNetError:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLErrorPrompt;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLErrorPrompt;->mTipsText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLErrorPrompt;->mCodeView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const-string/jumbo v0, "hybrid_weex_fallback_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lhdo;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLErrorPrompt;->fallback()V

    .line 62
    :cond_0
    return-void
.end method
