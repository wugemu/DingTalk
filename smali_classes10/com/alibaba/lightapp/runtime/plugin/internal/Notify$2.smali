.class Lcom/alibaba/lightapp/runtime/plugin/internal/Notify$2;
.super Landroid/content/BroadcastReceiver;
.source "Notify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->handleHostCheckIn(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;

.field final synthetic val$h5Host:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify$2;->val$h5Host:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "com.alibaba.lightapp.runtime.host_checkin_ACTION"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 175
    const-string/jumbo v5, "domain"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "serverHost":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify$2;->val$h5Host:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 177
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 179
    .local v3, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "name"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v5, "name"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string/jumbo v5, "value"

    const-string/jumbo v6, "value"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string/jumbo v5, "lightapp"

    sget-object v6, Lcom/alibaba/lightapp/runtime/Plugin;->TAG:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "handleHostCheckIn dispatchEvent success "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;

    const-string/jumbo v6, "hostCheckIn"

    invoke-static {v5, v6, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "result":Lorg/json/JSONObject;
    .end local v4    # "serverHost":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 184
    .restart local v3    # "result":Lorg/json/JSONObject;
    .restart local v4    # "serverHost":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "lightapp"

    sget-object v6, Lcom/alibaba/lightapp/runtime/Plugin;->TAG:Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/String;

    const-string/jumbo v8, "handleHostCheckIn dispatchEvent err"

    aput-object v8, v7, v10

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "result":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v5, "lightapp"

    sget-object v6, Lcom/alibaba/lightapp/runtime/Plugin;->TAG:Ljava/lang/String;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "handleHostCheckIn fail, host not match "

    aput-object v8, v7, v10

    aput-object v4, v7, v11

    const-string/jumbo v8, " "

    aput-object v8, v7, v12

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify$2;->val$h5Host:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
