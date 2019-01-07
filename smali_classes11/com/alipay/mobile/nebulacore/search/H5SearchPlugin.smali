.class public Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;
.super Lipd;
.source "H5SearchPlugin.java"


# static fields
.field private static final navSearchBar:Ljava/lang/String; = "navSearchBar"


# instance fields
.field private h5Page:Liop;


# direct methods
.method public constructor <init>(Liop;)V
    .locals 0
    .param p1, "h5Page"    # Liop;

    .prologue
    .line 28
    invoke-direct {p0}, Lipd;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->h5Page:Liop;

    .line 30
    return-void
.end method

.method private getH5InputCallback()Lcom/alipay/mobile/nebula/search/H5InputCallback;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/search/H5InputCallback;

    .line 41
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/search/H5InputCallback;

    .line 40
    return-object v0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 13
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    .line 46
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 1121
    .local v0, "action":Ljava/lang/String;
    iget-object v5, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 48
    .local v5, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "navSearchBar"

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 49
    const-string/jumbo v8, "actionType"

    invoke-static {v5, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "actionType":Ljava/lang/String;
    const-string/jumbo v8, "show"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 52
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "param"

    invoke-static {v5, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 54
    .local v6, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "navSearchBar_placeholder"

    const-string/jumbo v9, "placeholder"

    .line 55
    invoke-static {v6, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 54
    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string/jumbo v8, "navSearchBar_value"

    const-string/jumbo v9, "value"

    .line 57
    invoke-static {v6, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 56
    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string/jumbo v8, "navSearchBar_maxLength"

    const-string/jumbo v9, "maxLength"

    .line 59
    invoke-static {v6, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v9

    .line 58
    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->h5Page:Liop;

    invoke-interface {v8}, Liop;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v4

    .line 61
    .local v4, "h5TitleView":Lcom/alipay/mobile/nebula/view/H5TitleView;
    invoke-interface {v4, v2}, Lcom/alipay/mobile/nebula/view/H5TitleView;->setTitleBarSearch(Landroid/os/Bundle;)Landroid/view/View;

    .line 63
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v8

    const-class v9, Lcom/alipay/mobile/nebula/search/H5InputListen;

    .line 64
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;

    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->h5Page:Liop;

    invoke-direct {v10, v11}, Lcom/alipay/mobile/nebulacore/search/H5SearchInputListen;-><init>(Liop;)V

    invoke-virtual {v8, v9, v10}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->setProvider(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    invoke-interface {p2}, Liny;->sendSuccess()V

    .line 114
    .end local v1    # "actionType":Ljava/lang/String;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "h5TitleView":Lcom/alipay/mobile/nebula/view/H5TitleView;
    .end local v6    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    :goto_0
    return v12

    .line 68
    .restart local v1    # "actionType":Ljava/lang/String;
    :cond_1
    const-string/jumbo v8, "hide"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 69
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->h5Page:Liop;

    if-eqz v8, :cond_0

    .line 70
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->h5Page:Liop;

    invoke-interface {v8}, Liop;->getH5TitleBar()Lcom/alipay/mobile/nebula/view/H5TitleView;

    move-result-object v8

    invoke-interface {v8}, Lcom/alipay/mobile/nebula/view/H5TitleView;->switchToTitleBar()V

    .line 71
    invoke-interface {p2}, Liny;->sendSuccess()V

    goto :goto_0

    .line 73
    :cond_2
    const-string/jumbo v8, "focus"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 74
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->getH5InputCallback()Lcom/alipay/mobile/nebula/search/H5InputCallback;

    move-result-object v8

    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->getH5InputCallback()Lcom/alipay/mobile/nebula/search/H5InputCallback;

    move-result-object v8

    invoke-interface {v8}, Lcom/alipay/mobile/nebula/search/H5InputCallback;->focusInNavSearchBar()V

    .line 76
    invoke-interface {p2}, Liny;->sendSuccess()V

    goto :goto_0

    .line 78
    :cond_3
    const-string/jumbo v8, "blur"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 79
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->getH5InputCallback()Lcom/alipay/mobile/nebula/search/H5InputCallback;

    move-result-object v8

    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->getH5InputCallback()Lcom/alipay/mobile/nebula/search/H5InputCallback;

    move-result-object v8

    invoke-interface {v8}, Lcom/alipay/mobile/nebula/search/H5InputCallback;->focusOutNavSearchBar()V

    .line 81
    invoke-interface {p2}, Liny;->sendSuccess()V

    goto :goto_0

    .line 83
    :cond_4
    const-string/jumbo v8, "set"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 84
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->getH5InputCallback()Lcom/alipay/mobile/nebula/search/H5InputCallback;

    move-result-object v8

    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    .line 85
    const-string/jumbo v8, "param"

    .line 86
    invoke-static {v5, v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    const-string/jumbo v9, "value"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 88
    .local v7, "value":Ljava/lang/String;
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->getH5InputCallback()Lcom/alipay/mobile/nebula/search/H5InputCallback;

    move-result-object v8

    invoke-interface {v8, v7}, Lcom/alipay/mobile/nebula/search/H5InputCallback;->setNavSearchBarValue(Ljava/lang/String;)V

    .line 89
    invoke-interface {p2}, Liny;->sendSuccess()V

    goto/16 :goto_0

    .line 92
    .end local v7    # "value":Ljava/lang/String;
    :cond_5
    const-string/jumbo v8, "get"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 93
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->getH5InputCallback()Lcom/alipay/mobile/nebula/search/H5InputCallback;

    move-result-object v8

    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    .line 94
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 95
    .local v3, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "success"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v8, "value"

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->getH5InputCallback()Lcom/alipay/mobile/nebula/search/H5InputCallback;

    move-result-object v9

    invoke-interface {v9}, Lcom/alipay/mobile/nebula/search/H5InputCallback;->getNavSearchBarValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-interface {p2, v3}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_0

    .line 101
    .end local v3    # "data":Lcom/alibaba/fastjson/JSONObject;
    :cond_6
    const-string/jumbo v8, "enable"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 102
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->getH5InputCallback()Lcom/alipay/mobile/nebula/search/H5InputCallback;

    move-result-object v8

    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->getH5InputCallback()Lcom/alipay/mobile/nebula/search/H5InputCallback;

    move-result-object v8

    invoke-interface {v8}, Lcom/alipay/mobile/nebula/search/H5InputCallback;->enable()V

    .line 104
    invoke-interface {p2}, Liny;->sendSuccess()V

    goto/16 :goto_0

    .line 107
    :cond_7
    const-string/jumbo v8, "disable"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->getH5InputCallback()Lcom/alipay/mobile/nebula/search/H5InputCallback;

    move-result-object v8

    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/search/H5SearchPlugin;->getH5InputCallback()Lcom/alipay/mobile/nebula/search/H5InputCallback;

    move-result-object v8

    invoke-interface {v8}, Lcom/alipay/mobile/nebula/search/H5InputCallback;->disable()V

    .line 110
    invoke-interface {p2}, Liny;->sendSuccess()V

    goto/16 :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lipd;->onPrepare(Liof;)V

    .line 35
    const-string/jumbo v0, "navSearchBar"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 36
    return-void
.end method
