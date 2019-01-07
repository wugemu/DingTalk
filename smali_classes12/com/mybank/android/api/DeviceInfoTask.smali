.class public Lcom/mybank/android/api/DeviceInfoTask;
.super Ljava/lang/Object;
.source "DeviceInfoTask.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/mybank/android/api/DeviceInfoTask;->a:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public static a(Ljfa;)V
    .locals 5
    .param p0, "listener"    # Ljfa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 26
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 27
    .local v1, "result":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 29
    .local v0, "data":Lorg/json/JSONObject;
    const-string/jumbo v2, "appVersion"

    invoke-static {}, Lijn;->a()Lijn;

    move-result-object v3

    .line 1218
    iget-object v3, v3, Lijn;->b:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string/jumbo v2, "deviceModel"

    invoke-static {}, Lijo;->a()Lijo;

    move-result-object v3

    .line 1364
    iget-object v3, v3, Lijo;->c:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string/jumbo v2, "deviceType"

    const-string/jumbo v3, "android"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string/jumbo v2, "osVersion"

    invoke-static {}, Lijo;->a()Lijo;

    invoke-static {}, Lijo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string/jumbo v2, "success"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 35
    invoke-interface {p0, v4, v1}, Ljfa;->onResult(ZLorg/json/JSONObject;)V

    .line 36
    return-void
.end method
