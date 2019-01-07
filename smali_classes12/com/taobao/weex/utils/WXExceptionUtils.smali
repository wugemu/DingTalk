.class public Lcom/taobao/weex/utils/WXExceptionUtils;
.super Ljava/lang/Object;
.source "WXExceptionUtils.java"


# static fields
.field public static degradeUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "BundleUrlDefaultDegradeUrl"

    sput-object v0, Lcom/taobao/weex/utils/WXExceptionUtils;->degradeUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 11
    .param p0, "instanceId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "errCode"    # Lcom/taobao/weex/common/WXErrorCode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "function"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "exception"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXErrorCode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p4, "extParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKManager;->getIWXJSExceptionAdapter()Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    move-result-object v7

    .line 67
    .local v7, "adapter":Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;
    const-string/jumbo v2, "BundleUrlDefault"

    .line 68
    .local v2, "bundleUrlCommit":Ljava/lang/String;
    const-string/jumbo v1, "InstanceIdDefalut"

    .line 69
    .local v1, "instanceIdCommit":Ljava/lang/String;
    move-object v5, p3

    .line 70
    .local v5, "exceptionMsgCommit":Ljava/lang/String;
    move-object v6, p4

    .line 71
    .local v6, "commitMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v6, :cond_0

    .line 72
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "commitMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 74
    .restart local v6    # "commitMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v3, "activity"

    const-string/jumbo v4, "empty"

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 77
    move-object v1, p0

    .line 78
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/taobao/weex/WXSDKInstance;

    .line 80
    .local v10, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/taobao/weex/WXSDKInstance;->getContainerView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 81
    invoke-virtual {v10}, Lcom/taobao/weex/WXSDKInstance;->getContainerView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 82
    .local v9, "c":Landroid/content/Context;
    instance-of v3, v9, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 83
    const-string/jumbo v3, "activity"

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .end local v9    # "c":Landroid/content/Context;
    :cond_1
    if-eqz v10, :cond_3

    .line 88
    invoke-virtual {v10}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v2

    .line 89
    const-string/jumbo v3, "templateInfo"

    invoke-virtual {v10}, Lcom/taobao/weex/WXSDKInstance;->getTemplateInfo()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 91
    :cond_2
    sget-object v3, Lcom/taobao/weex/utils/WXExceptionUtils;->degradeUrl:Ljava/lang/String;

    const-string/jumbo v4, "BundleUrlDefaultDegradeUrl"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 92
    sget-object v3, Lcom/taobao/weex/utils/WXExceptionUtils;->degradeUrl:Ljava/lang/String;

    move-object v8, v3

    .end local v2    # "bundleUrlCommit":Ljava/lang/String;
    .end local v10    # "instance":Lcom/taobao/weex/WXSDKInstance;
    .local v8, "bundleUrlCommit":Ljava/lang/String;
    :goto_0
    move-object v2, v8

    .line 107
    .end local v8    # "bundleUrlCommit":Ljava/lang/String;
    .restart local v2    # "bundleUrlCommit":Ljava/lang/String;
    :cond_3
    new-instance v0, Lcom/taobao/weex/common/WXJSExceptionInfo;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/taobao/weex/common/WXJSExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 108
    .local v0, "exceptionCommit":Lcom/taobao/weex/common/WXJSExceptionInfo;
    if-eqz v7, :cond_4

    .line 109
    invoke-interface {v7, v0}, Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;->onJSException(Lcom/taobao/weex/common/WXJSExceptionInfo;)V

    .line 112
    :cond_4
    invoke-static {v0, p0}, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->transferError(Lcom/taobao/weex/common/WXJSExceptionInfo;Ljava/lang/String;)V

    .line 114
    return-void

    .line 94
    .end local v0    # "exceptionCommit":Lcom/taobao/weex/common/WXJSExceptionInfo;
    .restart local v10    # "instance":Lcom/taobao/weex/WXSDKInstance;
    :cond_5
    sget-object v3, Lcom/taobao/weex/WXSDKInstance;->requestUrl:Ljava/lang/String;

    move-object v8, v3

    goto :goto_0

    .line 98
    .end local v10    # "instance":Lcom/taobao/weex/WXSDKInstance;
    :cond_6
    sget-object v3, Lcom/taobao/weex/WXSDKInstance;->requestUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 99
    sget-object v2, Lcom/taobao/weex/WXSDKInstance;->requestUrl:Ljava/lang/String;

    .line 101
    :cond_7
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 102
    const-string/jumbo v3, "weexUrl"

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "weexUrl"

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v8, v3

    goto :goto_0

    :cond_8
    const-string/jumbo v3, "bundleUrl"

    .line 103
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v8, v3

    goto :goto_0
.end method
