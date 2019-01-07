.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$9;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->chosen(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

.field final synthetic val$args:Lorg/json/JSONObject;

.field final synthetic val$itemMap:Ljava/util/Map;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/util/Map;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 1646
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$9;->val$args:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$9;->val$itemMap:Ljava/util/Map;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$9;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1650
    :try_start_0
    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$9;->val$args:Lorg/json/JSONObject;

    const-string/jumbo v13, "source"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1651
    .local v5, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 1652
    .local v6, "jsonArrayLength":I
    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$9;->val$args:Lorg/json/JSONObject;

    const-string/jumbo v13, "selectedKey"

    const-string/jumbo v14, ""

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1653
    .local v10, "selectedKey":Ljava/lang/String;
    const/4 v4, -0x1

    .line 1654
    .local v4, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 1655
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 1656
    .local v7, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v12, "key"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1657
    .local v8, "key":Ljava/lang/String;
    const-string/jumbo v12, "value"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1658
    .local v11, "value":Ljava/lang/String;
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1659
    move v4, v3

    .line 1661
    :cond_0
    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$9;->val$itemMap:Ljava/util/Map;

    invoke-interface {v12, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1664
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v8    # "key":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_1
    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$9;->val$args:Lorg/json/JSONObject;

    const-string/jumbo v13, "showConfirm"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1665
    .local v1, "confirm":Z
    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$9;->val$args:Lorg/json/JSONObject;

    const-string/jumbo v13, "showCancel"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1666
    .local v0, "cancel":Z
    new-instance v9, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;

    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$2000(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;

    move-result-object v12

    iget-object v13, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$9;->val$itemMap:Ljava/util/Map;

    invoke-direct {v9, v12, v13, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;-><init>(Landroid/content/Context;Ljava/util/Map;I)V

    .line 1667
    .local v9, "pullWidgetUtil":Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;
    invoke-virtual {v9, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->setShowComfirm(Z)V

    .line 1668
    invoke-virtual {v9, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->setShowCancel(Z)V

    .line 1669
    new-instance v12, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$9$1;

    invoke-direct {v12, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$9$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util$9;)V

    invoke-virtual {v9, v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;->showPullWidget(Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil$OnItemSelectedListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1696
    .end local v0    # "cancel":Z
    .end local v1    # "confirm":Z
    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "jsonArrayLength":I
    .end local v9    # "pullWidgetUtil":Lcom/alibaba/lightapp/runtime/plugin/biz/PullWidgetUtil;
    .end local v10    # "selectedKey":Ljava/lang/String;
    :goto_1
    return-void

    .line 1690
    :catch_0
    move-exception v2

    .line 1691
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1692
    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const/4 v13, 0x3

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    iget-object v14, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$9;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v14, v14, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v12, v13, v14}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$2400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    .line 1693
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 1694
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    const/4 v13, 0x3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    iget-object v14, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$9;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v14, v14, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v12, v13, v14}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$2500(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1
.end method
