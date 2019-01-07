.class Lcom/alibaba/lightapp/runtime/plugin/internal/Util$1;
.super Landroid/content/BroadcastReceiver;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 83
    if-nez p2, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "action":Ljava/lang/String;
    const-string/jumbo v16, "action_key_select_org_type"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 89
    const-string/jumbo v16, "action_key_selected_org_industry"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    .line 91
    .local v8, "industryObject":Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;
    new-instance v14, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v16, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 92
    .local v14, "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 93
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 95
    .local v15, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v16, "code"

    iget v0, v8, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    const-string/jumbo v16, "name"

    iget-object v0, v8, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string/jumbo v16, "icon"

    iget-object v0, v8, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->mediaId:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    new-instance v14, Lcom/alibaba/lightapp/runtime/ActionResponse;

    .end local v14    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    sget-object v16, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    move-object/from16 v0, v16

    invoke-direct {v14, v0, v15}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v15    # "result":Lorg/json/JSONObject;
    .restart local v14    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v14, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    move-object/from16 v16, v0

    const-string/jumbo v17, ""

    invoke-static/range {v16 .. v17}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$002(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 99
    .end local v14    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    .restart local v15    # "result":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 100
    .local v5, "e":Lorg/json/JSONException;
    new-instance v14, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v16, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v17, 0x3

    .line 101
    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v18

    .line 100
    invoke-static/range {v17 .. v18}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v14, v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .restart local v14    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    goto :goto_1

    .line 106
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v8    # "industryObject":Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;
    .end local v14    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    .end local v15    # "result":Lorg/json/JSONObject;
    :cond_3
    const-string/jumbo v16, "selector_region"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 107
    const-string/jumbo v16, "region_key"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 108
    .local v12, "regionKey":Ljava/lang/String;
    const-string/jumbo v16, "regionName"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 109
    .local v13, "regionName":Ljava/lang/String;
    const-string/jumbo v16, "regionFullName"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 110
    .local v9, "regionFullName":Ljava/lang/String;
    new-instance v14, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v16, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 111
    .restart local v14    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 112
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 114
    .restart local v15    # "result":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v16, "region"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string/jumbo v16, "regionName"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string/jumbo v16, "regionFullName"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    new-instance v14, Lcom/alibaba/lightapp/runtime/ActionResponse;

    .end local v14    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    sget-object v16, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    move-object/from16 v0, v16

    invoke-direct {v14, v0, v15}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    .end local v15    # "result":Lorg/json/JSONObject;
    .restart local v14    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v14, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    move-object/from16 v16, v0

    const-string/jumbo v17, ""

    invoke-static/range {v16 .. v17}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$202(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 118
    .end local v14    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    .restart local v15    # "result":Lorg/json/JSONObject;
    :catch_1
    move-exception v5

    .line 119
    .restart local v5    # "e":Lorg/json/JSONException;
    new-instance v14, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v16, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v17, 0x3

    .line 120
    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v18

    .line 119
    invoke-static/range {v17 .. v18}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v14, v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .restart local v14    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    goto :goto_2

    .line 125
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v9    # "regionFullName":Ljava/lang/String;
    .end local v12    # "regionKey":Ljava/lang/String;
    .end local v13    # "regionName":Ljava/lang/String;
    .end local v14    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    .end local v15    # "result":Lorg/json/JSONObject;
    :cond_5
    const-string/jumbo v16, "com.workapp.lightapp.smart.device.choose.org.complete"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 130
    const-string/jumbo v16, "org_id"

    const-wide/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 132
    .local v10, "orgIdChosen":J
    const-wide/16 v16, 0x0

    cmp-long v16, v10, v16

    if-lez v16, :cond_6

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    move-object/from16 v16, v0

    new-instance v17, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v18, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$402(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 138
    :cond_6
    const-string/jumbo v16, "intent_key_error_code"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, "errorCode":Ljava/lang/String;
    const-string/jumbo v16, "intent_key_error_msg"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, "errorMsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    move-object/from16 v16, v0

    new-instance v17, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v18, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-static {v6, v7}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$600(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Util$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Util;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/alibaba/lightapp/runtime/plugin/internal/Util;->access$402(Lcom/alibaba/lightapp/runtime/plugin/internal/Util;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method
