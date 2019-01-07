.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->share(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$linkUrl:Ljava/lang/String;

.field final synthetic val$picUrl:Ljava/lang/String;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

.field final synthetic val$shareInfoList:Ljava/util/List;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;ILcom/alibaba/lightapp/runtime/ActionRequest;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    .prologue
    .line 1457
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iput p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->val$type:I

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->val$shareInfoList:Ljava/util/List;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->val$title:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->val$content:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->val$linkUrl:Ljava/lang/String;

    iput-object p8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->val$picUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 1460
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1461
    iget v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->val$type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 1462
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v2, "destChannelStyle"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1463
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v2, "destChannelStyle"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1464
    .local v0, "destChannelStyle":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->val$shareInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$500()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1465
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v3

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$600(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;

    move-result-object v4

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->val$shareInfoList:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-virtual {v3, v4, v1, v2}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->doShare(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    .line 1483
    .end local v0    # "destChannelStyle":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1467
    .restart local v0    # "destChannelStyle":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$800(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/util/List;)V

    .line 1468
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/util/List;)V

    .line 1469
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->val$shareInfoList:Ljava/util/List;

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->showShareActionBox(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 1472
    .end local v0    # "destChannelStyle":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$800(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/util/List;)V

    .line 1473
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/util/List;)V

    .line 1474
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->val$shareInfoList:Ljava/util/List;

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->showShareActionBox(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 1477
    :cond_3
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$800(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/util/List;)V

    .line 1478
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$900(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/util/List;)V

    .line 1479
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->val$title:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->val$content:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->val$linkUrl:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$6;->val$picUrl:Ljava/lang/String;

    .line 1480
    invoke-static {v4, v5, v6, v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$1300(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    move-result-object v4

    .line 1479
    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->showShareActionBox(Landroid/content/Context;Ljava/util/List;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    goto/16 :goto_0
.end method
