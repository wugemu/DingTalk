.class Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$9;
.super Ljava/lang/Object;
.source "FaceBox.java"

# interfaces
.implements Lhqu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->showRemindDialog(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhqu",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

.field final synthetic val$callbackId:Ljava/lang/String;

.field final synthetic val$model:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

    .prologue
    .line 594
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$9;->val$callbackId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$9;->val$model:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x3

    .line 612
    const-string/jumbo v0, "FaceRecord"

    const-string/jumbo v1, "FaceBox"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "[FaceRecord] queryUserIdentityObjectList error="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " msg="

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 615
    invoke-static {v5, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$9;->val$callbackId:Ljava/lang/String;

    .line 614
    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->access$1700(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 616
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 594
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$9;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 598
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 599
    :cond_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v5, 0x3

    const-string/jumbo v6, "invalid users"

    .line 600
    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$9;->val$callbackId:Ljava/lang/String;

    .line 599
    invoke-static {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->access$1500(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 608
    :goto_0
    return-void

    .line 602
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v1, "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 604
    .local v0, "obj":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 606
    .end local v0    # "obj":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$9;->val$callbackId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$9;->val$model:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;

    invoke-static {v2, v3, v1, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->access$1600(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRemindModel;)V

    goto :goto_0
.end method
