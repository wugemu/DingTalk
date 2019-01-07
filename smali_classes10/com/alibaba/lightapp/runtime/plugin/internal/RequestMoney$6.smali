.class Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$6;
.super Landroid/content/BroadcastReceiver;
.source "RequestMoney.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;

    .prologue
    .line 640
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 644
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 645
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v10, "extra_callback_id"

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 646
    .local v3, "callbackId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    const/4 v10, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 651
    :pswitch_0
    const-string/jumbo v10, "extra_contact_list"

    .line 652
    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 653
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/lightapp/runtime/money/RequestMoneyUser;>;"
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 655
    .local v9, "object":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-static {v8}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 656
    .local v2, "array":Lorg/json/JSONArray;
    const-string/jumbo v10, "users"

    invoke-virtual {v9, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    .end local v2    # "array":Lorg/json/JSONArray;
    :goto_2
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;

    invoke-static {v10, v9, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;->access$800(Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 649
    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/lightapp/runtime/money/RequestMoneyUser;>;"
    .end local v9    # "object":Lorg/json/JSONObject;
    :sswitch_0
    const-string/jumbo v11, "action_request_money_pick_result_contact"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v10, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v11, "action_request_money_pick_result_conversation"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    .line 657
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/lightapp/runtime/money/RequestMoneyUser;>;"
    .restart local v9    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 658
    .local v5, "e":Lorg/json/JSONException;
    const-string/jumbo v10, "lightapp"

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "RequestMoney JSONObject failed, error="

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 659
    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 658
    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 664
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/lightapp/runtime/money/RequestMoneyUser;>;"
    .end local v9    # "object":Lorg/json/JSONObject;
    :pswitch_1
    const-string/jumbo v10, "extra_conversation"

    .line 665
    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/alibaba/lightapp/runtime/money/RequestMoneyConversation;

    .line 666
    .local v4, "conversation":Lcom/alibaba/lightapp/runtime/money/RequestMoneyConversation;
    const/4 v6, 0x0

    .line 668
    .local v6, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-static {v4}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .local v7, "jsonObject":Lorg/json/JSONObject;
    move-object v6, v7

    .line 673
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    :goto_3
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;

    invoke-static {v10, v6, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;->access$900(Lcom/alibaba/lightapp/runtime/plugin/internal/RequestMoney;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 669
    :catch_1
    move-exception v5

    .line 670
    .restart local v5    # "e":Lorg/json/JSONException;
    const-string/jumbo v10, "lightapp"

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "RequestMoney JSONObject failed, error="

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 671
    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 670
    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 649
    nop

    :sswitch_data_0
    .sparse-switch
        -0x55eda59c -> :sswitch_0
        -0xaa20f41 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
