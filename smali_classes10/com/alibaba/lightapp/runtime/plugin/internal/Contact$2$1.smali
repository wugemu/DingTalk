.class Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->onSuccess(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

.field final synthetic val$uidMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->val$uidMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 419
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->onDataReceived(Ljava/util/List;)V

    return-void
.end method

.method public onDataReceived(Ljava/util/List;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 422
    .local p1, "userProfileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-eqz p1, :cond_4

    .line 423
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v21, "pickedUserObjList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v22, "disabledUserObjList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v23, "requiredUserObjList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 430
    .local v31, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v31, :cond_0

    .line 434
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->val$uidMap:Ljava/util/HashMap;

    move-object/from16 v0, v31

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 436
    .local v29, "orgEmployeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lhrk;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v30

    .line 439
    .local v30, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$pickedUsersList:Ljava/util/List;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$pickedUsersList:Ljava/util/List;

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 440
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 441
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$disabledUsersList:Ljava/util/List;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$disabledUsersList:Ljava/util/List;

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 442
    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 443
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$requiredUsersList:Ljava/util/List;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$requiredUsersList:Ljava/util/List;

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 444
    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 447
    .end local v29    # "orgEmployeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    .end local v30    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v31    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "select_members_limit_optimize_closed"

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v28

    .line 448
    .local v28, "isLimitOptimizeClosed":Z
    if-nez v28, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget v2, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$maxUsers:I

    if-gtz v2, :cond_6

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_6

    .line 449
    const-string/jumbo v2, "select_members_input"

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lcnf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcnf$a;

    move-result-object v27

    .line 450
    .local v27, "fdWrapper":Lcnf$a;
    if-eqz v27, :cond_5

    .line 1044
    move-object/from16 v0, v27

    iget v2, v0, Lcnf$a;->a:I

    .line 450
    if-lez v2, :cond_5

    .line 1048
    move-object/from16 v0, v27

    iget v2, v0, Lcnf$a;->b:I

    .line 450
    if-lez v2, :cond_5

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-wide v3, v3, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$orgId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget v5, v5, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$deptId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-wide v6, v6, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$labelId:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-object v8, v8, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-boolean v9, v9, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$multiple:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-object v10, v10, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$limitTips:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget v11, v11, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$maxUsers:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-boolean v12, v12, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$responseUserOnly:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-boolean v13, v13, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$enableAutoJumpDepart:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-boolean v14, v14, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$enableAutoJumpDepart:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-boolean v15, v15, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showFriendPick:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showMobileContactPick:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showOrgRelationPick:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showLabelPick:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showExtContactPick:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$filter:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v24, v0

    .end local v21    # "pickedUserObjList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$pickedDeptsList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$disabledDeptsList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$requiredDeptsList:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-static/range {v2 .. v27}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;JIJLjava/lang/String;ZLjava/lang/String;IZZZZZZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcnf$a;)V

    .line 465
    .end local v22    # "disabledUserObjList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v23    # "requiredUserObjList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v27    # "fdWrapper":Lcnf$a;
    .end local v28    # "isLimitOptimizeClosed":Z
    :cond_4
    :goto_1
    return-void

    .line 455
    .restart local v21    # "pickedUserObjList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local v22    # "disabledUserObjList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local v23    # "requiredUserObjList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local v27    # "fdWrapper":Lcnf$a;
    .restart local v28    # "isLimitOptimizeClosed":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-wide v3, v3, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$orgId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget v5, v5, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$deptId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-wide v6, v6, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$labelId:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-object v8, v8, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-boolean v9, v9, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$multiple:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-object v10, v10, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$limitTips:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget v11, v11, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$maxUsers:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-boolean v12, v12, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$responseUserOnly:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-boolean v13, v13, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$enableAutoJumpDepart:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-boolean v14, v14, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$enableAutoJumpDepart:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-boolean v15, v15, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showFriendPick:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showMobileContactPick:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showOrgRelationPick:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showLabelPick:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showExtContactPick:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$filter:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$pickedDeptsList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$disabledDeptsList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$requiredDeptsList:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-static/range {v2 .. v26}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;JIJLjava/lang/String;ZLjava/lang/String;IZZZZZZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_1

    .line 460
    .end local v27    # "fdWrapper":Lcnf$a;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-wide v3, v3, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$orgId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget v5, v5, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$deptId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-wide v6, v6, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$labelId:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-object v8, v8, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-boolean v9, v9, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$multiple:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-object v10, v10, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$limitTips:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget v11, v11, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$maxUsers:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-boolean v12, v12, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$responseUserOnly:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-boolean v13, v13, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$enableAutoJumpDepart:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-boolean v14, v14, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$enableAutoJumpDepart:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-boolean v15, v15, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showFriendPick:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showMobileContactPick:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showOrgRelationPick:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showLabelPick:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showExtContactPick:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$filter:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$pickedDeptsList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$disabledDeptsList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$requiredDeptsList:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-static/range {v2 .. v26}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;JIJLjava/lang/String;ZLjava/lang/String;IZZZZZZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_1
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 27
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 474
    const-string/jumbo v2, "SW"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v2, v0, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-wide v3, v3, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$orgId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget v5, v5, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$deptId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-wide v6, v6, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$labelId:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-object v8, v8, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-boolean v9, v9, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$multiple:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-object v10, v10, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$limitTips:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget v11, v11, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$maxUsers:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-boolean v12, v12, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$responseUserOnly:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-boolean v13, v13, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$enableAutoJumpDepart:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-boolean v14, v14, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$enableAutoJumpDepart:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    iget-boolean v15, v15, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showFriendPick:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showMobileContactPick:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showOrgRelationPick:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showLabelPick:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$showExtContactPick:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$filter:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$pickedDeptsList:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$disabledDeptsList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$2;->val$requiredDeptsList:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-static/range {v2 .. v26}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;JIJLjava/lang/String;ZLjava/lang/String;IZZZZZZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 478
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 470
    return-void
.end method
