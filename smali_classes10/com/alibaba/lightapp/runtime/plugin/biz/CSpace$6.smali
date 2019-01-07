.class Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$6;
.super Landroid/content/BroadcastReceiver;
.source "CSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 475
    const-string/jumbo v8, "com.alibaba.dingtalk.cspace.savefile2space"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 476
    const-string/jumbo v8, "data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 477
    .local v7, "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    if-nez v7, :cond_2

    .line 478
    const-string/jumbo v8, "errorCode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, "errorCode":Ljava/lang/String;
    const-string/jumbo v8, "errorMsg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 481
    .local v3, "errorMeg":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 482
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v11, 0x3

    invoke-static {v11, v3}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 539
    .end local v2    # "errorCode":Ljava/lang/String;
    .end local v3    # "errorMeg":Ljava/lang/String;
    .end local v7    # "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    :cond_0
    :goto_0
    return-void

    .line 484
    .restart local v2    # "errorCode":Ljava/lang/String;
    .restart local v3    # "errorMeg":Ljava/lang/String;
    .restart local v7    # "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v11, 0x3

    const-string/jumbo v12, "\u5e76\u6ca1\u6709\u53d1\u8d77\u5b58\u50a8\u8bf7\u6c42"

    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0

    .line 487
    .end local v2    # "errorCode":Ljava/lang/String;
    .end local v3    # "errorMeg":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    invoke-static {v8, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$1300(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v6

    .line 488
    .local v6, "jsonArray":Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 490
    .local v5, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v8, "data"

    invoke-virtual {v5, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v9, v10, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0

    .line 491
    :catch_0
    move-exception v1

    .line 492
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 497
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "com.alibaba.dingtalk.cspace.choosespacedir"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 498
    const-string/jumbo v8, "data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 499
    .restart local v7    # "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_6

    .line 500
    :cond_4
    const-string/jumbo v8, "errorCode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 501
    .restart local v2    # "errorCode":Ljava/lang/String;
    const-string/jumbo v8, "errorMsg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 503
    .restart local v3    # "errorMeg":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 504
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v11, 0x3

    invoke-static {v11, v3}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$1500(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$1600(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 506
    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v11, 0x3

    const-string/jumbo v12, "\u5e76\u6ca1\u6709\u53d1\u8d77\u5b58\u50a8\u8bf7\u6c42"

    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$1500(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$1700(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 509
    .end local v2    # "errorCode":Ljava/lang/String;
    .end local v3    # "errorMeg":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {v9, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$1800(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lorg/json/JSONArray;

    move-result-object v6

    .line 510
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 512
    .restart local v5    # "json":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v8, "data"

    invoke-virtual {v5, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 517
    :goto_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v9, v10, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$1500(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$1900(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 513
    :catch_1
    move-exception v1

    .line 514
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 519
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "com.alibaba.dingtalk.cspace.copy"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 520
    const-string/jumbo v8, "data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 522
    .restart local v7    # "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_a

    .line 523
    :cond_8
    const-string/jumbo v8, "errorCode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 524
    .restart local v2    # "errorCode":Ljava/lang/String;
    const-string/jumbo v8, "errorMsg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 526
    .local v4, "errorMsg":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 527
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v11, 0x3

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    const/4 v13, 0x1

    aput-object v4, v12, v13

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$2000(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$2100(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 530
    :cond_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v11, 0x3

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    const/4 v13, 0x1

    .line 531
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v14

    invoke-virtual {v14}, Lcid;->c()Landroid/app/Application;

    move-result-object v14

    sget v15, Lhdn$k;->and_cspace_save_error:I

    invoke-virtual {v14, v15}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 530
    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    .line 531
    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$2000(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;)Ljava/lang/String;

    move-result-object v10

    .line 530
    invoke-static {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$2200(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 535
    .end local v2    # "errorCode":Ljava/lang/String;
    .end local v4    # "errorMsg":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v11, "success"

    invoke-direct {v9, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$2000(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;->access$2300(Lcom/alibaba/lightapp/runtime/plugin/biz/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
