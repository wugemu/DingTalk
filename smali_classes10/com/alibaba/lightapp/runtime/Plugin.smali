.class public abstract Lcom/alibaba/lightapp/runtime/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/Plugin$a;
    }
.end annotation


# static fields
.field static final ACTION_PARAMTYPES:[Ljava/lang/Class;

.field protected static final API_INVOKE_INTERVAL_TIME:I = 0x1f4

.field public static final ERR_CALL_EXTERNAL_NATIVE_CODE:I = 0x11

.field public static final ERR_CANCEL:I = -0x1

.field public static final ERR_CHANNEL_NOT_EXIST:I = 0x1f4

.field public static final ERR_CORPID:I = 0x5

.field public static final ERR_CREAT_CONVERSATION:I = 0x6

.field public static final ERR_DEVICE_INFO:I = 0xa

.field public static final ERR_DUPLICATE_INVOKE:I = 0xd

.field public static final ERR_FAST_INVOKE:I = 0x1bc

.field public static final ERR_IMAGE_GET_FAIL:I = 0xc

.field public static final ERR_IMAGE_TOO_LARGE:I = 0xe

.field public static final ERR_INSECURE_LINK:I = 0xf

.field public static final ERR_INVALID_CORPID:I = 0x8

.field public static final ERR_JSON:I = 0x2

.field public static final ERR_JSON_PARAM_CODE:I = 0x10

.field public static final ERR_NO_EXTERNAL_HANDLER_CODE:I = 0x12

.field public static final ERR_PERMISSION:I = 0x1bd

.field public static final ERR_SERVICE_CALLBACK:I = 0x9

.field public static final ERR_UID:I = 0x4

.field public static final ERR_UNAUTHORIZED:I = 0x7

.field public static final ERR_UNKNOWN:I = 0x3

.field public static final EXTRAS_ACTIVITY_INTENT:Ljava/lang/String; = "extras_activity_intent"

.field public static final KEY_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final KEY_ERROR_MSG:Ljava/lang/String; = "errorMessage"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mInvokeTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const-class v0, Lcom/alibaba/lightapp/runtime/Plugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/lightapp/runtime/Plugin;->TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/alibaba/lightapp/runtime/ActionRequest;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/lightapp/runtime/Plugin;->ACTION_PARAMTYPES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mInvokeTimeMap:Ljava/util/Map;

    .line 319
    return-void
.end method

.method public static buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "errCode"    # I
    .param p1, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 150
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 152
    .local v1, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "errorCode"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 153
    const-string/jumbo v2, "errorMessage"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-object v1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static buildErrorResult(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "errCode"    # Ljava/lang/String;
    .param p1, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 161
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 163
    .local v1, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "errorCode"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string/jumbo v2, "errorMessage"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-object v1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static jsonArrayToList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 289
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p0, :cond_0

    .line 291
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 292
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 294
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_1

    .line 300
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_0
    return-object v2
.end method

.method public static listToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 309
    .local v1, "jsonArray":Lorg/json/JSONArray;
    if-eqz p0, :cond_0

    .line 310
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 311
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 312
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method protected cancel(Ljava/lang/String;)V
    .locals 2
    .param p1, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->NO_RESULT:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 100
    .local v0, "res":Lcom/alibaba/lightapp/runtime/ActionResponse;
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/lightapp/runtime/Plugin;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method protected console()Lhde$a;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/PluginManager;->d()Lhde$a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONObject;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 123
    return-void
.end method

.method protected fail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errMsg"    # Ljava/lang/String;
    .param p2, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1, p1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    .line 105
    .local v0, "res":Lcom/alibaba/lightapp/runtime/ActionResponse;
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method protected fail(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Lorg/json/JSONArray;
    .param p2, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1, p1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONArray;)V

    .line 117
    .local v0, "res":Lcom/alibaba/lightapp/runtime/ActionResponse;
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method protected fail(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Lorg/json/JSONObject;
    .param p2, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1, p1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 111
    .local v0, "res":Lcom/alibaba/lightapp/runtime/ActionResponse;
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 174
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;

    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/PluginManager;->a()Landroid/content/Context;

    move-result-object v1

    .line 175
    .local v1, "context":Landroid/content/Context;
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 176
    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 177
    .local v0, "baseContext":Landroid/content/Context;
    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 189
    .end local v0    # "baseContext":Landroid/content/Context;
    :goto_0
    return-object v0

    .line 180
    .restart local v0    # "baseContext":Landroid/content/Context;
    :cond_0
    instance-of v3, v0, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    .line 181
    check-cast v0, Landroid/content/ContextWrapper;

    .end local v0    # "baseContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 182
    .local v2, "nextBaseContext":Landroid/content/Context;
    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 183
    goto :goto_0

    .end local v2    # "nextBaseContext":Landroid/content/Context;
    :cond_1
    move-object v0, v1

    .line 189
    goto :goto_0
.end method

.method protected getCurrentUrl()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/PluginManager;->b()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 223
    :goto_0
    return-object v1

    .line 219
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "getCurrentUrl"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "errorMsg= "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method protected getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/PluginManager;->c()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getIPluginManagerContext()Lhde;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/PluginManager;->f()Lhde;

    move-result-object v0

    return-object v0
.end method

.method protected getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ipUrl"    # Ljava/lang/String;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "ipUrl":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method protected getParentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;

    .line 2907
    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/PluginManager;->h:Landroid/view/View;

    .line 285
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected inappropriateSetInterceptBackButton(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 235
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;

    .line 1293
    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Z)V

    .line 238
    :cond_0
    return-void
.end method

.method protected isOutIntervalTime(Ljava/lang/String;)Z
    .locals 10
    .param p1, "method"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 246
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 247
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mInvokeTimeMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 2044
    invoke-static {v6, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 248
    .local v4, "lastInvokeTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 249
    .local v0, "currentTime":J
    sub-long v2, v0, v4

    .line 251
    .local v2, "intervalTime":J
    const-wide/16 v6, 0x1f4

    cmp-long v6, v2, v6

    if-gtz v6, :cond_0

    cmp-long v6, v2, v8

    if-gez v6, :cond_1

    .line 252
    :cond_0
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mInvokeTimeMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const/4 v6, 0x1

    .line 257
    .end local v0    # "currentTime":J
    .end local v2    # "intervalTime":J
    .end local v4    # "lastInvokeTime":J
    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 282
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 268
    return-void
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 279
    return-void
.end method

.method public onPageStarted(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 277
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method protected refreshWebView()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;

    .line 1260
    new-instance v1, Lcom/alibaba/lightapp/runtime/PluginManager$1;

    invoke-direct {v1, v0}, Lcom/alibaba/lightapp/runtime/PluginManager$1;-><init>(Lcom/alibaba/lightapp/runtime/PluginManager;)V

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/Runnable;)V

    .line 206
    :cond_0
    return-void
.end method

.method protected reportInvokeFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "jsApiName"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    return-void
.end method

.method protected reportInvokeFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "jsApiName"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v0, :cond_0

    .line 144
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    return-void
.end method

.method protected reportInvokeSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "jsApiName"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v0, :cond_0

    .line 132
    invoke-static {p1, p2, p3}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    return-void
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v0, :cond_0

    .line 198
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/Runnable;)V

    .line 200
    :cond_0
    return-void
.end method

.method public setup(Lcom/alibaba/lightapp/runtime/PluginManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/alibaba/lightapp/runtime/PluginManager;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/Plugin;->mPluginManager:Lcom/alibaba/lightapp/runtime/PluginManager;

    .line 65
    return-void
.end method

.method protected success(Ljava/lang/String;)V
    .locals 2
    .param p1, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 95
    .local v0, "res":Lcom/alibaba/lightapp/runtime/ActionResponse;
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/lightapp/runtime/Plugin;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method protected success(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1, p1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    .line 90
    .local v0, "res":Lcom/alibaba/lightapp/runtime/ActionResponse;
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method protected success(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Lorg/json/JSONArray;
    .param p2, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1, p1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONArray;)V

    .line 85
    .local v0, "res":Lcom/alibaba/lightapp/runtime/ActionResponse;
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method protected success(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Lorg/json/JSONObject;
    .param p2, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/lightapp/runtime/Plugin;->success(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 69
    return-void
.end method

.method protected success(Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "result"    # Lorg/json/JSONObject;
    .param p2, "callbackId"    # Ljava/lang/String;
    .param p3, "keepCallback"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1, p1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 79
    .local v0, "res":Lcom/alibaba/lightapp/runtime/ActionResponse;
    invoke-virtual {v0, p3}, Lcom/alibaba/lightapp/runtime/ActionResponse;->setKeepCallback(Z)V

    .line 80
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 81
    return-void
.end method
