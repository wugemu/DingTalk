.class public Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter;
.super Ljava/lang/Object;
.source "WMLShareAdapter.java"

# interfaces
.implements Ljpy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter$ShareContent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public share(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "param"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    instance-of v6, p1, Landroid/app/Activity;

    if-eqz v6, :cond_6

    .line 36
    new-instance v3, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter$ShareContent;

    invoke-direct {v3, p0}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter$ShareContent;-><init>(Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter;)V

    .line 37
    .local v3, "shareContent":Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter$ShareContent;
    const-string/jumbo v6, "title"

    invoke-virtual {p2, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "title"

    invoke-virtual {p2, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    iput-object v6, v3, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter$ShareContent;->title:Ljava/lang/String;

    .line 38
    const-string/jumbo v6, "image"

    invoke-virtual {p2, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "image"

    invoke-virtual {p2, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    iput-object v6, v3, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter$ShareContent;->imageUrl:Ljava/lang/String;

    .line 39
    const-string/jumbo v6, "url"

    invoke-virtual {p2, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "url"

    invoke-virtual {p2, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    iput-object v6, v3, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter$ShareContent;->url:Ljava/lang/String;

    .line 41
    const-string/jumbo v6, "text"

    invoke-virtual {p2, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "text"

    invoke-virtual {p2, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "description":Ljava/lang/String;
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v0, "\u6211\u5206\u4eab\u7ed9\u4f60\u4e86\u4e00\u4e2a\u6dd8\u5b9d\u9875\u9762\uff0c\u5feb\u6765\u770b\u770b\u5427"

    .end local v0    # "description":Ljava/lang/String;
    :cond_0
    iput-object v0, v3, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter$ShareContent;->description:Ljava/lang/String;

    .line 46
    :try_start_0
    const-string/jumbo v6, "targets"

    .line 47
    invoke-virtual {p2, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, "targets"

    invoke-virtual {p2, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 48
    .local v5, "targets":Lcom/alibaba/fastjson/JSONArray;
    :goto_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v4, "shareItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 50
    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 37
    .end local v2    # "i":I
    .end local v4    # "shareItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "targets":Lcom/alibaba/fastjson/JSONArray;
    :cond_1
    const-string/jumbo v6, ""

    goto :goto_0

    .line 38
    :cond_2
    const-string/jumbo v6, ""

    goto :goto_1

    .line 39
    :cond_3
    const-string/jumbo v6, ""

    goto :goto_2

    .line 41
    :cond_4
    const-string/jumbo v0, ""

    goto :goto_3

    .line 47
    :cond_5
    :try_start_1
    new-instance v5, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONArray;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "Bridge"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "shareContent":Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter$ShareContent;
    :cond_6
    return-void
.end method

.method public share(Landroid/content/Context;Lcom/taobao/windmill/bundle/container/core/AppInfoModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appInfoModel"    # Lcom/taobao/windmill/bundle/container/core/AppInfoModel;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 23
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter$ShareContent;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter$ShareContent;-><init>(Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter;)V

    .line 24
    .local v0, "shareContent":Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter$ShareContent;
    const-string/jumbo v1, "1115_snipcode"

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter$ShareContent;->businessId:Ljava/lang/String;

    .line 25
    iget-object v1, p2, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter$ShareContent;->title:Ljava/lang/String;

    .line 26
    iput-object p3, v0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter$ShareContent;->description:Ljava/lang/String;

    .line 27
    iget-object v1, p2, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appLogo:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter$ShareContent;->imageUrl:Ljava/lang/String;

    .line 28
    iput-object p4, v0, Lcom/alibaba/lightapp/runtime/weex/adapter/WMLShareAdapter$ShareContent;->url:Ljava/lang/String;

    .line 30
    return-void
.end method
