.class Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Lhqu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->internalComplexPicker(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;

.field final synthetic val$deptId:I

.field final synthetic val$disabledDeptsList:Ljava/util/List;

.field final synthetic val$disabledUsersList:Ljava/util/List;

.field final synthetic val$enableAutoJumpDepart:Z

.field final synthetic val$filter:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

.field final synthetic val$labelId:J

.field final synthetic val$limitTips:Ljava/lang/String;

.field final synthetic val$maxUsers:I

.field final synthetic val$multiple:Z

.field final synthetic val$orgId:J

.field final synthetic val$pickedDeptsList:Ljava/util/List;

.field final synthetic val$pickedUsersList:Ljava/util/List;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

.field final synthetic val$requiredDeptsList:Ljava/util/List;

.field final synthetic val$requiredUsersList:Ljava/util/List;

.field final synthetic val$responseUserOnly:Z

.field final synthetic val$showExtContactPick:Z

.field final synthetic val$showFriendPick:Z

.field final synthetic val$showLabelPick:Z

.field final synthetic val$showMobileContactPick:Z

.field final synthetic val$showOrgRelationPick:Z

.field final synthetic val$showRootOrg:Z

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;JIJLjava/lang/String;ZLjava/lang/String;IZZZZZZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;

    iput-wide p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$orgId:J

    iput p4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$deptId:I

    iput-wide p5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$labelId:J

    iput-object p7, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$title:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$multiple:Z

    iput-object p9, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$limitTips:Ljava/lang/String;

    iput p10, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$maxUsers:I

    iput-boolean p11, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$responseUserOnly:Z

    iput-boolean p12, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showRootOrg:Z

    iput-boolean p13, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$enableAutoJumpDepart:Z

    iput-boolean p14, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showFriendPick:Z

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showMobileContactPick:Z

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showOrgRelationPick:Z

    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showLabelPick:Z

    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showExtContactPick:Z

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$filter:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$pickedDeptsList:Ljava/util/List;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$disabledDeptsList:Ljava/util/List;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$requiredDeptsList:Ljava/util/List;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$pickedUsersList:Ljava/util/List;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$disabledUsersList:Ljava/util/List;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$requiredUsersList:Ljava/util/List;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

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
    .line 484
    const-string/jumbo v0, "SW"

    invoke-static {v0, p1, p2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x4

    .line 486
    invoke-static {v3, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 485
    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 487
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 404
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->onSuccess(Ljava/util/HashMap;)V

    return-void
.end method

.method public onSuccess(Ljava/util/HashMap;)V
    .locals 28
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
    .line 407
    .local p1, "uidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 409
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$orgId:J

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$deptId:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$labelId:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$multiple:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$limitTips:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$maxUsers:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$responseUserOnly:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showRootOrg:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$enableAutoJumpDepart:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showFriendPick:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showMobileContactPick:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showOrgRelationPick:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showLabelPick:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showExtContactPick:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$filter:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$pickedDeptsList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$disabledDeptsList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$requiredDeptsList:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-static/range {v2 .. v26}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;JIJLjava/lang/String;ZLjava/lang/String;IZZZZZZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 480
    :goto_0
    return-void

    .line 415
    :cond_1
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v27, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 419
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;Ljava/util/HashMap;)V

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method
