.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2;
.super Ljava/lang/Object;
.source "MiniappActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 168
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    invoke-virtual {v4}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "appId"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "miniAppId":Ljava/lang/String;
    invoke-static {}, Lhhx;->a()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "corpId":Ljava/lang/String;
    invoke-static {v1, v3, v6}, Lhhx;->a(Ljava/lang/String;Ljava/lang/String;I)Lhin;

    move-result-object v0

    .line 171
    .local v0, "appStatementModel":Lhin;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lhin;->b:Ljava/lang/Boolean;

    invoke-static {v4}, Lhdo;->a(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1, v3, v6}, Lhhx;->b(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 174
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v4, "message"

    iget-object v5, v0, Lhin;->c:Ljava/util/Map;

    invoke-static {v5}, Lhdo;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string/jumbo v4, "title"

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    sget v6, Lhdn$k;->miniapp_disclaimer_title:I

    invoke-virtual {v5, v6}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string/jumbo v4, "buttonName"

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    sget v6, Lhdn$k;->dd_mini_check_permission_deny_confirm:I

    invoke-virtual {v5, v6}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2$1;

    invoke-direct {v5, p0, v2}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2;Lorg/json/JSONObject;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v4, v0, Lhin;->f:Ljava/lang/Boolean;

    invoke-static {v4}, Lhdo;->a(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 197
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2$2;

    invoke-direct {v5, p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2$2;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$2;Lhin;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 218
    :cond_1
    return-void

    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
