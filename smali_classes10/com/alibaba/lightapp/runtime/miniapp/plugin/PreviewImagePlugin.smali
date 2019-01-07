.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin;
.super Lipd;
.source "PreviewImagePlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;ILcom/alibaba/fastjson/JSONArray;Z)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "x2"    # Liny;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/alibaba/fastjson/JSONArray;
    .param p5, "x5"    # Z

    .prologue
    .line 29
    const/4 v3, 0x0

    .line 3104
    invoke-virtual {p4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    .line 3105
    invoke-virtual {p4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    if-gez p3, :cond_1

    .line 3106
    :cond_0
    const/4 p3, 0x0

    .line 3108
    .end local p3    # "x3":I
    :cond_1
    new-array v2, v4, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 3111
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_4

    .line 3112
    :try_start_0
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 3113
    if-nez v5, :cond_2

    .line 3114
    const-string/jumbo v0, "PreviewImagePlugin"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "img is null index :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v5}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3111
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3117
    :cond_2
    const-string/jumbo v0, "u"

    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3118
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    move-result-object v6

    .line 3119
    if-eqz v6, :cond_3

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3120
    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3121
    if-eqz v6, :cond_3

    .line 3122
    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    move-result-object v6

    .line 3123
    if-eqz v6, :cond_3

    .line 3124
    iget-object v0, v6, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->filePath:Ljava/lang/String;

    .line 3128
    :cond_3
    const-string/jumbo v6, "t"

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3129
    new-instance v6, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {v6}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 3131
    neg-int v7, v1

    int-to-long v8, v7

    iput-wide v8, v6, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    .line 3132
    iput-object v0, v6, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    .line 3133
    iput-object v5, v6, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    .line 3134
    aput-object v6, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3137
    :catch_0
    move-exception v0

    .line 3138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3141
    :cond_4
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3142
    const-string/jumbo v0, "showRemove"

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3143
    const-string/jumbo v0, "hide_list_button"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3144
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v1

    aget-object v3, v2, p3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLandroid/os/Bundle;)V

    .line 3145
    invoke-interface {p2}, Liny;->sendSuccess()V

    .line 29
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 7
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 84
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 1081
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p1, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 85
    instance-of v3, v3, Liop;

    if-nez v3, :cond_0

    .line 86
    const-string/jumbo v3, "PreviewImagePlugin"

    new-array v4, v1, [Ljava/lang/Object;

    const-string/jumbo v5, "not from h5 page."

    aput-object v5, v4, v2

    .line 1098
    const-string/jumbo v2, "mini_api"

    invoke-static {v2, v3, v4}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v2}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 2097
    :goto_0
    return v1

    .line 90
    :cond_0
    const-string/jumbo v3, "PreviewImagePlugin"

    new-array v4, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onActionCalled:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2095
    const-string/jumbo v3, "imageViewer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3040
    const-string/jumbo v2, "PreviewImagePlugin"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/PreviewImagePlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 91
    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 4
    .param p1, "filter"    # Liof;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 76
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "imageViewer"

    aput-object v2, v1, v3

    .local v1, "actions":[Ljava/lang/String;
    move v2, v3

    .line 77
    :goto_0
    if-gtz v2, :cond_0

    aget-object v0, v1, v3

    .line 78
    .local v0, "a":Ljava/lang/String;
    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "a":Ljava/lang/String;
    :cond_0
    return-void
.end method
