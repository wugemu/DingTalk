.class public final Lekp;
.super Ljava/lang/Object;
.source "HpmConfigHandler.java"

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

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lekp;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "hpm_app"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    const-string/jumbo v3, "hpm_app"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 46
    .local v1, "hpmApp":Lorg/json/JSONObject;
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v3

    const-class v4, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    invoke-virtual {v3, v4}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    invoke-virtual {v3, v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->handleHpmConfigData(Lorg/json/JSONObject;)Z

    .line 47
    const/4 v3, 0x1

    iput-boolean v3, p0, Lekp;->a:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v1    # "hpmApp":Lorg/json/JSONObject;
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lekp;->a:Z

    return v0
.end method
