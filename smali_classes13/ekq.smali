.class public final Lekq;
.super Ljava/lang/Object;
.source "JsapiConfigHandler.java"

# interfaces
.implements Leij;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lekq;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "jsApiList"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 33
    .local v0, "arr":Lorg/json/JSONArray;
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v3

    const-class v4, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    .line 34
    invoke-virtual {v3, v4}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    invoke-virtual {v3, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->handleJsapiConfigData(Lorg/json/JSONArray;)Z

    move-result v3

    iput-boolean v3, p0, Lekq;->a:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v2    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v1

    .line 37
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lekq;->a:Z

    return v0
.end method
