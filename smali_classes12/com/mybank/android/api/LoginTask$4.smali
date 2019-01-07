.class public final Lcom/mybank/android/api/LoginTask$4;
.super Ljava/lang/Object;
.source "LoginTask.java"

# interfaces
.implements Lcom/mybank/android/phone/common/service/login/LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mybank/android/api/LoginTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Ljfa;

.field final synthetic c:Lcom/mybank/android/api/LoginTask;


# direct methods
.method public constructor <init>(Lcom/mybank/android/api/LoginTask;Lorg/json/JSONObject;Ljfa;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mybank/android/api/LoginTask;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/mybank/android/api/LoginTask$4;->c:Lcom/mybank/android/api/LoginTask;

    iput-object p2, p0, Lcom/mybank/android/api/LoginTask$4;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/mybank/android/api/LoginTask$4;->b:Ljfa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback(Z)V
    .locals 4
    .param p1, "success"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/mybank/android/api/LoginTask$4;->a:Lorg/json/JSONObject;

    const-string/jumbo v2, "errorMessage"

    const-string/jumbo v3, "login failed."

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    iget-object v1, p0, Lcom/mybank/android/api/LoginTask$4;->b:Ljfa;

    iget-object v2, p0, Lcom/mybank/android/api/LoginTask$4;->a:Lorg/json/JSONObject;

    invoke-interface {v1, p1, v2}, Ljfa;->onResult(ZLorg/json/JSONObject;)V

    .line 215
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 208
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mybank/android/api/LoginTask$4;->a:Lorg/json/JSONObject;

    const-string/jumbo v2, "success"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 209
    :catch_1
    move-exception v0

    .line 210
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
