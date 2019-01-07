.class Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$8;
.super Landroid/content/BroadcastReceiver;
.source "FaceBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$8;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

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
    .line 537
    :try_start_0
    const-string/jumbo v10, "FaceRecord"

    const-string/jumbo v11, "FaceBox"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "[FaceRecord] facebox jsapi, receiver action:"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string/jumbo v10, "face_record_action"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 539
    const-string/jumbo v10, "uuid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 540
    .local v9, "uuid":Ljava/lang/String;
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$8;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 541
    .local v2, "callbackId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 579
    .end local v2    # "callbackId":Ljava/lang/String;
    .end local v9    # "uuid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 545
    .restart local v2    # "callbackId":Ljava/lang/String;
    .restart local v9    # "uuid":Ljava/lang/String;
    :cond_1
    const-string/jumbo v10, "record_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 546
    .local v8, "url":Ljava/lang/String;
    const-string/jumbo v10, "record_code"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 547
    .local v3, "code":Ljava/lang/String;
    const-string/jumbo v10, "record_msg"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 548
    .local v7, "msg":Ljava/lang/String;
    const-string/jumbo v10, "record_mediaid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 549
    .local v6, "mediaId":Ljava/lang/String;
    const-string/jumbo v10, "record_base_face_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 551
    .local v1, "baseFaceUrl":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 553
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v10, "0"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 554
    const-string/jumbo v10, "url"

    invoke-virtual {v5, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 555
    const-string/jumbo v10, "mediaId"

    invoke-virtual {v5, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    const-string/jumbo v10, "baseFaceUrl"

    invoke-virtual {v5, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 557
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$8;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

    invoke-static {v10, v5, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 559
    const-string/jumbo v10, "FaceRecord"

    const-string/jumbo v11, "FaceBox"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "[FaceRecord] facebox jsapi, success"

    aput-object v14, v12, v13

    invoke-static {v12}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 575
    .end local v1    # "baseFaceUrl":Ljava/lang/String;
    .end local v2    # "callbackId":Ljava/lang/String;
    .end local v3    # "code":Ljava/lang/String;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "mediaId":Ljava/lang/String;
    .end local v7    # "msg":Ljava/lang/String;
    .end local v8    # "url":Ljava/lang/String;
    .end local v9    # "uuid":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 576
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 577
    const-string/jumbo v10, "FaceRecord"

    const-string/jumbo v11, "FaceBox"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "[FaceRecord] registerReceiver error="

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v12}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 561
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "baseFaceUrl":Ljava/lang/String;
    .restart local v2    # "callbackId":Ljava/lang/String;
    .restart local v3    # "code":Ljava/lang/String;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "mediaId":Ljava/lang/String;
    .restart local v7    # "msg":Ljava/lang/String;
    .restart local v8    # "url":Ljava/lang/String;
    .restart local v9    # "uuid":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v10, "-1"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 562
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$8;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

    invoke-static {v10, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->access$1300(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Ljava/lang/String;)V

    .line 564
    const-string/jumbo v10, "FaceRecord"

    const-string/jumbo v11, "FaceBox"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "[FaceRecord] facebox jsapi, cancel"

    aput-object v14, v12, v13

    invoke-static {v12}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 566
    :cond_3
    const-string/jumbo v10, "code"

    invoke-virtual {v5, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 567
    const-string/jumbo v10, "msg"

    invoke-virtual {v5, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 569
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$8;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

    invoke-static {v10, v5, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->access$1400(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 571
    const-string/jumbo v10, "FaceRecord"

    const-string/jumbo v11, "FaceBox"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "[FaceRecord] facebox jsapi, fail"

    aput-object v14, v12, v13

    invoke-static {v12}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
