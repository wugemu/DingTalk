.class public Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;
.super Lcom/alibaba/lightapp/runtime/Component;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/lightapp/runtime/Component",
        "<",
        "Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;",
        ">;"
    }
.end annotation


# instance fields
.field private mConfigCallbakcId:Ljava/lang/String;

.field private mGoPageCallbackId:Ljava/lang/String;

.field private mPreloadCallbackId:Ljava/lang/String;

.field private mSelectCallbackId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Component;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;)Lcom/alibaba/lightapp/runtime/Component$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;)Lcom/alibaba/lightapp/runtime/Component$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;)Lcom/alibaba/lightapp/runtime/Component$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->mSelectCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->success(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;)Lcom/alibaba/lightapp/runtime/Component$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->mConfigCallbakcId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->success(Ljava/lang/String;)V

    return-void
.end method

.method private createWebViewModelFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 304
    new-instance v0, Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;-><init>()V

    .line 305
    .local v0, "model":Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->joinUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->setUrl(Ljava/lang/String;)V

    .line 306
    const-string/jumbo v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->setId(Ljava/lang/String;)V

    .line 307
    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->setTitle(Ljava/lang/String;)V

    .line 308
    return-object v0
.end method

.method private joinUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "curl"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 290
    const-string/jumbo v1, ""

    .line 292
    .local v1, "q":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 293
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 300
    .end local v2    # "url":Ljava/net/URL;
    :goto_0
    return-object v1

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 1
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public callbackInitFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 267
    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->mPreloadCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public callbackInitSuccess(Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 252
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 254
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "id"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 256
    const-string/jumbo v3, "extras"

    if-eqz p3, :cond_0

    .end local p3    # "extras":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v1, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 258
    .local v2, "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;->setKeepCallback(Z)V

    .line 259
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->mPreloadCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 264
    .end local v2    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :goto_1
    return-void

    .line 256
    .restart local p3    # "extras":Lorg/json/JSONObject;
    :cond_0
    new-instance p3, Lorg/json/JSONObject;

    .end local p3    # "extras":Lorg/json/JSONObject;
    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 262
    const/4 v3, 0x3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->mPreloadCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public callbackStartFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 285
    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->mGoPageCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public callbackStartSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 271
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 274
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "id"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 276
    .local v2, "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;->setKeepCallback(Z)V

    .line 277
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->mGoPageCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->success(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v2    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 280
    const/4 v3, 0x3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->mGoPageCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public config(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 13
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 186
    .local v5, "jsonObject":Lorg/json/JSONObject;
    iget-object v11, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v11, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->mConfigCallbakcId:Ljava/lang/String;

    .line 189
    :try_start_0
    const-string/jumbo v11, "id"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "groupId":Ljava/lang/String;
    const-string/jumbo v11, "tabs"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 192
    .local v4, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 193
    .local v0, "arrayLength":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v6, "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/model/WebViewModel;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 196
    new-instance v9, Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    invoke-direct {v9}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;-><init>()V

    .line 197
    .local v9, "webViewModel":Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 198
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 199
    .local v10, "webviewModelObject":Lorg/json/JSONObject;
    const-string/jumbo v11, "id"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->setId(Ljava/lang/String;)V

    .line 200
    const-string/jumbo v11, "title"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->setTitle(Ljava/lang/String;)V

    .line 202
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    .end local v10    # "webviewModelObject":Lorg/json/JSONObject;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    .end local v9    # "webViewModel":Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 209
    .local v8, "tabSize":I
    if-gtz v8, :cond_2

    .line 210
    const/4 v11, 0x3

    const-string/jumbo v12, "tab size can not null"

    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->mConfigCallbakcId:Ljava/lang/String;

    invoke-virtual {p0, v11, v12}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 211
    const/4 v11, 0x0

    .line 235
    .end local v0    # "arrayLength":I
    .end local v2    # "groupId":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/model/WebViewModel;>;"
    .end local v8    # "tabSize":I
    :goto_1
    return-object v11

    .line 214
    .restart local v0    # "arrayLength":I
    .restart local v2    # "groupId":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v6    # "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/model/WebViewModel;>;"
    .restart local v8    # "tabSize":I
    :cond_2
    new-instance v11, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;

    invoke-direct {v11}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;-><init>()V

    .line 215
    invoke-virtual {v11, v6}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;->a(Ljava/util/List;)Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;

    move-result-object v11

    .line 3122
    iput-object v2, v11, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;->a:Ljava/lang/String;

    .line 217
    invoke-virtual {v11}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;->a()Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    move-result-object v7

    .line 219
    .local v7, "tabConfiguration":Lcom/alibaba/lightapp/runtime/config/TabConfiguration;
    new-instance v11, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$4;

    invoke-direct {v11, p0, v7}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$4;-><init>(Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;Lcom/alibaba/lightapp/runtime/config/TabConfiguration;)V

    invoke-virtual {p0, v11}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v0    # "arrayLength":I
    .end local v2    # "groupId":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/model/WebViewModel;>;"
    .end local v7    # "tabConfiguration":Lcom/alibaba/lightapp/runtime/config/TabConfiguration;
    .end local v8    # "tabSize":I
    :goto_2
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v11

    goto :goto_1

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 233
    const/4 v11, 0x2

    const-string/jumbo v12, "invalid args"

    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->mConfigCallbakcId:Ljava/lang/String;

    invoke-virtual {p0, v11, v12}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getDelegateModelType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/lightapp/runtime/Component$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    const-class v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel;

    return-object v0
.end method

.method public init(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 25
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 42
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 43
    .local v14, "jsonObject":Lorg/json/JSONObject;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->mPreloadCallbackId:Ljava/lang/String;

    .line 44
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 46
    .local v4, "baseUrl":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v23, "id"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 47
    .local v9, "groupId":Ljava/lang/String;
    const-string/jumbo v23, "tabs"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 49
    .local v13, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 50
    .local v3, "arrayLength":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v15, "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/model/WebViewModel;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v3, :cond_1

    .line 53
    new-instance v21, Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    invoke-direct/range {v21 .. v21}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;-><init>()V

    .line 54
    .local v21, "webViewModel":Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v23

    if-lez v23, :cond_0

    .line 55
    invoke-virtual {v13, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .line 56
    .local v22, "webviewModelObject":Lorg/json/JSONObject;
    const-string/jumbo v23, "id"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 57
    .local v11, "id":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->setId(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v23, "url"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v4, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->joinUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 59
    .local v20, "url":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->setUrl(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v23, "title"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->setTitle(Ljava/lang/String;)V

    .line 62
    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .end local v11    # "id":Ljava/lang/String;
    .end local v20    # "url":Ljava/lang/String;
    .end local v22    # "webviewModelObject":Lorg/json/JSONObject;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 68
    .end local v21    # "webViewModel":Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    :cond_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    .line 69
    .local v19, "tabSize":I
    if-gtz v19, :cond_2

    .line 70
    const/16 v23, 0x3

    const-string/jumbo v24, "tab size can not null"

    invoke-static/range {v23 .. v24}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->mPreloadCallbackId:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 71
    const/16 v23, 0x0

    .line 115
    .end local v3    # "arrayLength":I
    .end local v9    # "groupId":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v13    # "jsonArray":Lorg/json/JSONArray;
    .end local v15    # "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/model/WebViewModel;>;"
    .end local v19    # "tabSize":I
    :goto_1
    return-object v23

    .line 74
    .restart local v3    # "arrayLength":I
    .restart local v9    # "groupId":Ljava/lang/String;
    .restart local v10    # "i":I
    .restart local v13    # "jsonArray":Lorg/json/JSONArray;
    .restart local v15    # "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/model/WebViewModel;>;"
    .restart local v19    # "tabSize":I
    :cond_2
    const-string/jumbo v23, "indicator"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 75
    .local v12, "indicatorObject":Lorg/json/JSONObject;
    const-string/jumbo v23, "backgroundColor"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "bgColor":Ljava/lang/String;
    const-string/jumbo v23, "fontNormalColor"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 77
    .local v8, "fontNormalColor":Ljava/lang/String;
    const-string/jumbo v23, "chosenColor"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, "chosenColor":Ljava/lang/String;
    const-string/jumbo v23, "selected"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 81
    .local v16, "selectedId":Ljava/lang/String;
    const/16 v17, 0x0

    .line 82
    .local v17, "selectedIndex":I
    const/4 v10, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v10, v0, :cond_3

    .line 83
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/alibaba/lightapp/runtime/model/WebViewModel;

    .line 84
    .restart local v21    # "webViewModel":Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/lightapp/runtime/model/WebViewModel;->getId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 85
    move/from16 v17, v10

    .line 90
    .end local v21    # "webViewModel":Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    :cond_3
    new-instance v23, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;

    invoke-direct/range {v23 .. v23}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;-><init>()V

    .line 1097
    move-object/from16 v0, v23

    iput-object v5, v0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;->d:Ljava/lang/String;

    .line 1102
    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;->e:Ljava/lang/String;

    .line 1107
    move-object/from16 v0, v23

    iput-object v5, v0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;->f:Ljava/lang/String;

    .line 1112
    move/from16 v0, v17

    move-object/from16 v1, v23

    iput v0, v1, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;->g:I

    .line 2087
    move-object/from16 v0, v23

    iput-object v8, v0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;->b:Ljava/lang/String;

    .line 2092
    move-object/from16 v0, v23

    iput-object v6, v0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;->c:Ljava/lang/String;

    .line 96
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;->a(Ljava/util/List;)Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;

    move-result-object v23

    .line 2122
    move-object/from16 v0, v23

    iput-object v9, v0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;->a:Ljava/lang/String;

    .line 98
    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;->a()Lcom/alibaba/lightapp/runtime/config/TabConfiguration;

    move-result-object v18

    .line 100
    .local v18, "tabConfiguration":Lcom/alibaba/lightapp/runtime/config/TabConfiguration;
    new-instance v23, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;Lcom/alibaba/lightapp/runtime/config/TabConfiguration;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v3    # "arrayLength":I
    .end local v5    # "bgColor":Ljava/lang/String;
    .end local v6    # "chosenColor":Ljava/lang/String;
    .end local v8    # "fontNormalColor":Ljava/lang/String;
    .end local v9    # "groupId":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v12    # "indicatorObject":Lorg/json/JSONObject;
    .end local v13    # "jsonArray":Lorg/json/JSONArray;
    .end local v15    # "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/model/WebViewModel;>;"
    .end local v16    # "selectedId":Ljava/lang/String;
    .end local v17    # "selectedIndex":I
    .end local v18    # "tabConfiguration":Lcom/alibaba/lightapp/runtime/config/TabConfiguration;
    .end local v19    # "tabSize":I
    :goto_3
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v23

    goto/16 :goto_1

    .line 82
    .restart local v3    # "arrayLength":I
    .restart local v5    # "bgColor":Ljava/lang/String;
    .restart local v6    # "chosenColor":Ljava/lang/String;
    .restart local v8    # "fontNormalColor":Ljava/lang/String;
    .restart local v9    # "groupId":Ljava/lang/String;
    .restart local v10    # "i":I
    .restart local v12    # "indicatorObject":Lorg/json/JSONObject;
    .restart local v13    # "jsonArray":Lorg/json/JSONArray;
    .restart local v15    # "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/model/WebViewModel;>;"
    .restart local v16    # "selectedId":Ljava/lang/String;
    .restart local v17    # "selectedIndex":I
    .restart local v19    # "tabSize":I
    .restart local v21    # "webViewModel":Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 111
    .end local v3    # "arrayLength":I
    .end local v5    # "bgColor":Ljava/lang/String;
    .end local v6    # "chosenColor":Ljava/lang/String;
    .end local v8    # "fontNormalColor":Ljava/lang/String;
    .end local v9    # "groupId":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v12    # "indicatorObject":Lorg/json/JSONObject;
    .end local v13    # "jsonArray":Lorg/json/JSONArray;
    .end local v15    # "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/model/WebViewModel;>;"
    .end local v16    # "selectedId":Ljava/lang/String;
    .end local v17    # "selectedIndex":I
    .end local v19    # "tabSize":I
    .end local v21    # "webViewModel":Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    :catch_0
    move-exception v7

    .line 112
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    .line 113
    const/16 v23, 0x2

    const-string/jumbo v24, "invalid args"

    invoke-static/range {v23 .. v24}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->mPreloadCallbackId:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public remove(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 1
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 241
    const/4 v0, 0x0

    return-object v0
.end method

.method public select(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 157
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 158
    .local v3, "jsonObject":Lorg/json/JSONObject;
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->mSelectCallbackId:Ljava/lang/String;

    .line 161
    :try_start_0
    const-string/jumbo v4, "groupId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "groupId":Ljava/lang/String;
    const-string/jumbo v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "id":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$3;

    invoke-direct {v4, p0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v1    # "groupId":Ljava/lang/String;
    .end local v2    # "id":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v4

    return-object v4

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 177
    const/4 v4, 0x2

    const-string/jumbo v5, "invalid args"

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->mSelectCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 121
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 122
    .local v5, "jsonObject":Lorg/json/JSONObject;
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->mGoPageCallbackId:Ljava/lang/String;

    .line 125
    :try_start_0
    const-string/jumbo v6, "id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "id":Ljava/lang/String;
    const-string/jumbo v6, "autoRemove"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 127
    .local v4, "isPopParent":Z
    const-string/jumbo v6, "anim"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 129
    .local v0, "anim":I
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel$TabAnimInfo;

    invoke-direct {v1}, Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel$TabAnimInfo;-><init>()V

    .line 130
    .local v1, "animInfo":Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel$TabAnimInfo;
    iput v0, v1, Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel$TabAnimInfo;->type:I

    .line 131
    invoke-static {v0}, Lhhw;->a(I)[I

    move-result-object v6

    iput-object v6, v1, Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel$TabAnimInfo;->res:[I

    .line 132
    const/4 v6, 0x0

    iput-object v6, v1, Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel$TabAnimInfo;->transitFrom:Landroid/graphics/RectF;

    .line 133
    const/4 v6, 0x0

    iput-object v6, v1, Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel$TabAnimInfo;->transitTo:Landroid/graphics/RectF;

    .line 135
    new-instance v6, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$2;

    invoke-direct {v6, p0, v3, v4, v1}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;Ljava/lang/String;ZLcom/alibaba/lightapp/runtime/plugin/delegate/TabModel$TabAnimInfo;)V

    invoke-virtual {p0, v6}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0    # "anim":I
    .end local v1    # "animInfo":Lcom/alibaba/lightapp/runtime/plugin/delegate/TabModel$TabAnimInfo;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "isPopParent":Z
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v6

    return-object v6

    .line 145
    :catch_0
    move-exception v2

    .line 146
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 147
    const/4 v6, 0x2

    const-string/jumbo v7, "invalid args"

    invoke-static {v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->mGoPageCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/ui/Tab;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method
