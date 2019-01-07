.class Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$3;
.super Landroid/content/BroadcastReceiver;
.source "RedEnvelop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, -0x1

    .line 194
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_0
    move v5, v6

    :goto_0
    packed-switch v5, :pswitch_data_1

    .line 221
    :cond_1
    :goto_1
    return-void

    .line 195
    :pswitch_0
    const-string/jumbo v7, "intent_action_send_result"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    .line 197
    :pswitch_1
    const-string/jumbo v5, "intent_key_callback_id"

    invoke-static {p2, v5}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "callbackId":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;->access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 201
    const-string/jumbo v5, "intent_key_send_result"

    invoke-static {p2, v5, v6}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v4

    .line 202
    .local v4, "status":I
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 204
    .local v3, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "sendResult"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_2
    packed-switch v4, :pswitch_data_2

    .line 218
    :goto_3
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;->access$900(Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;)V

    goto :goto_1

    .line 205
    :catch_0
    move-exception v2

    .line 206
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 210
    .end local v2    # "e":Lorg/json/JSONException;
    :pswitch_2
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;->access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;->access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_3

    .line 215
    :pswitch_3
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;->access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;->access$800(Lcom/alibaba/lightapp/runtime/plugin/biz/RedEnvelop;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_3

    .line 195
    .line 208
    :pswitch_data_0
    .packed-switch -0x21bce552
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
