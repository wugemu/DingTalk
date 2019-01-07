.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$30;
.super Landroid/content/BroadcastReceiver;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->registerScanCardReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 3626
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$30;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 3629
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3630
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v7, "activity_identify"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3631
    .local v2, "flag":Ljava/lang/String;
    const-string/jumbo v7, "com.workapp.recognize.card.from.camera"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "biz.Util"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3633
    :try_start_0
    const-string/jumbo v7, "recognize_card_result"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3635
    .local v6, "result":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3636
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3640
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :goto_0
    const-string/jumbo v7, "media_id"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 3642
    .local v4, "mediaId":Ljava/lang/String;
    :try_start_1
    invoke-static {v4}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3643
    .local v5, "remoteUrl":Ljava/lang/String;
    const-string/jumbo v7, "IMAGE"

    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3648
    .end local v5    # "remoteUrl":Ljava/lang/String;
    :goto_1
    :try_start_2
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$30;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const-string/jumbo v8, "JsApi"

    const-string/jumbo v9, "biz.util.scanCard"

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$30;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$10300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$10400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3649
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$30;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v8, v9, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$30;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$10500(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$10600(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 3660
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "mediaId":Ljava/lang/String;
    .end local v6    # "result":Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 3638
    .restart local v6    # "result":Ljava/lang/String;
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 3644
    .restart local v4    # "mediaId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3645
    .local v1, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    const-string/jumbo v7, "lightapp"

    const-string/jumbo v8, "biz.Util"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "MediaIdEncodingException "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3646
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 3650
    .end local v1    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "mediaId":Ljava/lang/String;
    .end local v6    # "result":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 3652
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3653
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$30;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const-string/jumbo v8, "JsApi"

    const-string/jumbo v9, "biz.util.scanCard"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$30;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v11}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$10300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v8, v9, v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$10700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3655
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$30;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v10, 0x3

    .line 3656
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$30;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$10500(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/lang/String;

    move-result-object v9

    .line 3655
    invoke-static {v7, v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$10800(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_2
.end method
