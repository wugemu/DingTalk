.class Lcom/alibaba/lightapp/runtime/plugin/internal/Notify$1;
.super Landroid/content/BroadcastReceiver;
.source "Notify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->handleAutoCheckIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 145
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "com.alibaba.lightapp.runtime.checkin_ACTION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    const-string/jumbo v4, "checkInType"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "checkInType":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 149
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 151
    .local v3, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v4, "checkInType"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;

    const-string/jumbo v5, "autoCheckIn"

    invoke-static {v4, v5, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/Notify;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v1    # "checkInType":Ljava/lang/String;
    .end local v3    # "result":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 153
    .restart local v1    # "checkInType":Ljava/lang/String;
    .restart local v3    # "result":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 154
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
