.class Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2$1;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Lhqu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;->onSuccess(Ljava/util/HashMap;)V
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
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Long;",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;

.field final synthetic val$uidList:Ljava/util/List;

.field final synthetic val$uidSelectedMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2$1;->val$uidList:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2$1;->val$uidSelectedMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 264
    sget-object v0, Lcom/alibaba/lightapp/runtime/Plugin;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x4

    .line 266
    invoke-static {v3, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 265
    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 253
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2$1;->onSuccess(Ljava/util/HashMap;)V

    return-void
.end method

.method public onSuccess(Ljava/util/HashMap;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "uidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;

    iget-object v3, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;->val$disabledItem:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;

    if-eqz p1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v2, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;->uidDisabledList:Ljava/util/List;

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;->val$disabledItem:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;

    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;->uidDisabledMap:Ljava/util/HashMap;

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;

    iget-object v3, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;

    iget-boolean v4, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;->val$multiple:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;

    iget v5, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;->val$maxChooseLimit:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;

    iget-wide v6, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;->val$orgId:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;

    iget v8, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;->val$departmentId:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2$1;->val$uidList:Ljava/util/List;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2$1;->val$uidSelectedMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;

    iget-object v12, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;->val$disabledItem:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;

    iget-object v13, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;->val$title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;

    iget-object v14, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;->val$limitTips:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;

    iget-boolean v15, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;->val$isShowLocal:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;

    iget-boolean v0, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$2;->val$isNeedSearch:Z

    move/from16 v16, v0

    const-string/jumbo v17, "choose"

    const/16 v18, 0x1

    invoke-static/range {v3 .. v18}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;ZIJILjava/util/List;Ljava/util/List;Ljava/util/HashMap;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)V

    .line 259
    return-void

    .line 256
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method
