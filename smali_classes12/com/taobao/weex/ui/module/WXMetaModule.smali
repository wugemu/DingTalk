.class public Lcom/taobao/weex/ui/module/WXMetaModule;
.super Lcom/taobao/weex/common/WXModule;
.source "WXMetaModule.java"


# static fields
.field public static final DEVICE_WIDTH:Ljava/lang/String; = "device-width"

.field public static final WIDTH:Ljava/lang/String; = "width"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageInfo(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/ui/WXRenderManager;->getAllInstances()Ljava/util/List;

    move-result-object v1

    .line 106
    .local v1, "instances":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/WXSDKInstance;>;"
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 107
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WXSDKInstance;

    .line 108
    .local v0, "instance":Lcom/taobao/weex/WXSDKInstance;
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 111
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getTemplateInfo()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 113
    .end local v0    # "instance":Lcom/taobao/weex/WXSDKInstance;
    :cond_2
    invoke-interface {p1, v2}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public openLog(Ljava/lang/String;)V
    .locals 5
    .param p1, "open"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 80
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 81
    .local v0, "application":Landroid/app/Application;
    if-nez v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 85
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 86
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    invoke-static {v3}, Lcom/taobao/weex/WXEnvironment;->setApkDebugable(Z)V

    .line 88
    iget-object v2, p0, Lcom/taobao/weex/ui/module/WXMetaModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/taobao/weex/ui/module/WXMetaModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "log open success"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 92
    :cond_2
    invoke-static {v4}, Lcom/taobao/weex/WXEnvironment;->setApkDebugable(Z)V

    .line 93
    iget-object v2, p0, Lcom/taobao/weex/ui/module/WXMetaModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/taobao/weex/ui/module/WXMetaModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "log close success"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public setViewport(Ljava/lang/String;)V
    .locals 6
    .param p1, "param"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 57
    :try_start_0
    const-string/jumbo v4, "utf-8"

    invoke-static {p1, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-static {p1}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 59
    .local v2, "jsObj":Lcom/alibaba/fastjson/JSONObject;
    iget-object v4, p0, Lcom/taobao/weex/ui/module/WXMetaModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    .local v0, "cxt":Landroid/content/Context;
    const-string/jumbo v4, "device-width"

    const-string/jumbo v5, "width"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v3, v4

    .line 63
    .local v3, "width":I
    iget-object v4, p0, Lcom/taobao/weex/ui/module/WXMetaModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v4, v3}, Lcom/taobao/weex/WXSDKInstance;->setInstanceViewPortWidth(I)V

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[WXMetaModule] setViewport success[device-width]="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 76
    .end local v0    # "cxt":Landroid/content/Context;
    .end local v2    # "jsObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "width":I
    :cond_0
    :goto_0
    return-void

    .line 66
    .restart local v0    # "cxt":Landroid/content/Context;
    .restart local v2    # "jsObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    const-string/jumbo v4, "width"

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 67
    .restart local v3    # "width":I
    if-lez v3, :cond_2

    .line 68
    iget-object v4, p0, Lcom/taobao/weex/ui/module/WXMetaModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v4, v3}, Lcom/taobao/weex/WXSDKInstance;->setInstanceViewPortWidth(I)V

    .line 70
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[WXMetaModule] setViewport success[width]="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    .end local v0    # "cxt":Landroid/content/Context;
    .end local v2    # "jsObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "width":I
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "[WXMetaModule] alert param parse error "

    invoke-static {v4, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
