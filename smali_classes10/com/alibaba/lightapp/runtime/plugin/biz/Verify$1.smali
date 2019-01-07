.class Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;
.super Landroid/content/BroadcastReceiver;
.source "Verify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->startAuth(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;

.field final synthetic val$agentId:Ljava/lang/Long;

.field final synthetic val$bizId:Ljava/lang/String;

.field final synthetic val$callbackId:Ljava/lang/String;

.field final synthetic val$corpId:Ljava/lang/String;

.field final synthetic val$miniAppId:Ljava/lang/String;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/ActionRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->val$callbackId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->val$miniAppId:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->val$bizId:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->val$corpId:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->val$agentId:Ljava/lang/Long;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 263
    const-string/jumbo v3, "data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 264
    .local v18, "data":Ljava/lang/String;
    const-string/jumbo v21, ""

    .line 265
    .local v21, "receivedCallbackId":Ljava/lang/String;
    const/16 v17, 0x0

    .line 267
    .local v17, "agree":Z
    :try_start_0
    new-instance v19, Lorg/json/JSONObject;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 268
    .local v19, "dataObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "callbackId"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 269
    const-string/jumbo v3, "agree"

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 273
    .end local v19    # "dataObject":Lorg/json/JSONObject;
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->val$callbackId:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 334
    :goto_1
    return-void

    .line 270
    :catch_0
    move-exception v20

    .line 271
    .local v20, "e":Lorg/json/JSONException;
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 277
    .end local v20    # "e":Lorg/json/JSONException;
    :cond_0
    if-nez v17, :cond_1

    .line 278
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;

    const/16 v6, 0x2710

    const-string/jumbo v7, "UserReject"

    invoke-static {v6, v7}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v7, v7, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;)V

    goto :goto_1

    .line 281
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "authType"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, "authType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "userInfo"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 283
    .local v5, "userInfo":Ljava/lang/String;
    const-class v3, Lcom/alibaba/lightapp/runtime/idl/FaceAuthIService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/idl/FaceAuthIService;

    .line 284
    .local v2, "service":Lcom/alibaba/lightapp/runtime/idl/FaceAuthIService;
    new-instance v8, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;)V

    .line 324
    .local v8, "requestCallback":Lcmi;, "Lcmi<Lhiy;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->val$miniAppId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->val$miniAppId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->access$800(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/security/zim/api/ZIMFacade;->getMetaInfos(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->val$bizId:Ljava/lang/String;

    invoke-interface/range {v2 .. v8}, Lcom/alibaba/lightapp/runtime/idl/FaceAuthIService;->initFaceAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;)V

    goto :goto_1

    .line 327
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->val$corpId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->val$agentId:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->access$900(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/zim/api/ZIMFacade;->getMetaInfos(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->val$bizId:Ljava/lang/String;

    move-object v9, v2

    move-object v12, v4

    move-object v13, v5

    move-object/from16 v16, v8

    invoke-interface/range {v9 .. v16}, Lcom/alibaba/lightapp/runtime/idl/FaceAuthIService;->initFaceAuthForH5(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 329
    .end local v2    # "service":Lcom/alibaba/lightapp/runtime/idl/FaceAuthIService;
    .end local v4    # "authType":Ljava/lang/String;
    .end local v5    # "userInfo":Ljava/lang/String;
    .end local v8    # "requestCallback":Lcmi;, "Lcmi<Lhiy;>;"
    :catch_1
    move-exception v20

    .line 330
    .local v20, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    .line 331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;

    const/4 v6, 0x3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v7, v7, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;)V

    goto/16 :goto_1

    .end local v20    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;)V

    throw v3
.end method
