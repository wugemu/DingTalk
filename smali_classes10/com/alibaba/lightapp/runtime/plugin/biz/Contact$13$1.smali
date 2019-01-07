.class Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->onSuccess(Ljava/util/HashMap;)V
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
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

.field final synthetic val$uidMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    .prologue
    .line 1860
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->val$uidMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1860
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->onDataReceived(Ljava/util/List;)V

    return-void
.end method

.method public onDataReceived(Ljava/util/List;)V
    .locals 27
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
    .line 1863
    .local p1, "userProfileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-eqz p1, :cond_4

    .line 1864
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1865
    .local v16, "pickedUserObjList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1866
    .local v17, "disabledUserObjList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1870
    .local v18, "requiredUserObjList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1871
    .local v26, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v26, :cond_0

    .line 1875
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->val$uidMap:Ljava/util/HashMap;

    move-object/from16 v0, v26

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 1876
    .local v24, "orgEmployeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lhrk;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v25

    .line 1879
    .local v25, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$pickedUsersList:Ljava/util/List;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$pickedUsersList:Ljava/util/List;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1880
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1881
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$disabledUsersList:Ljava/util/List;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$disabledUsersList:Ljava/util/List;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1882
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1883
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$requiredUsersList:Ljava/util/List;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$requiredUsersList:Ljava/util/List;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1884
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1887
    .end local v24    # "orgEmployeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    .end local v25    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v26    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "select_members_limit_optimize_closed"

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v23

    .line 1888
    .local v23, "isLimitOptimizeClosed":Z
    if-nez v23, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$maxUsers:I

    if-gtz v2, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_6

    .line 1889
    const-string/jumbo v2, "select_members_input"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcnf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcnf$a;

    move-result-object v22

    .line 1890
    .local v22, "fdWrapper":Lcnf$a;
    if-eqz v22, :cond_5

    .line 2044
    move-object/from16 v0, v22

    iget v2, v0, Lcnf$a;->a:I

    .line 1890
    if-lez v2, :cond_5

    .line 2048
    move-object/from16 v0, v22

    iget v2, v0, Lcnf$a;->b:I

    .line 1890
    if-lez v2, :cond_5

    .line 1891
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-wide v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$orgId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget v5, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$deptId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-wide v6, v6, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$labelId:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-object v8, v8, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-boolean v9, v9, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$multiple:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-object v10, v10, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$limitTips:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget v11, v11, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$maxUsers:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-boolean v12, v12, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$responseUserOnly:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-boolean v13, v13, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$enableAutoJumpDepart:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-boolean v14, v14, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$enableAutoJumpDepart:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-object v15, v15, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$filter:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    move-object/from16 v19, v0

    .end local v16    # "pickedUserObjList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$pickedDeptsList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$disabledDeptsList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$requiredDeptsList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-static/range {v2 .. v22}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$3900(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;JIJLjava/lang/String;ZLjava/lang/String;IZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcnf$a;)V

    .line 1899
    .end local v17    # "disabledUserObjList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v18    # "requiredUserObjList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v22    # "fdWrapper":Lcnf$a;
    .end local v23    # "isLimitOptimizeClosed":Z
    :cond_4
    :goto_1
    return-void

    .line 1893
    .restart local v16    # "pickedUserObjList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local v17    # "disabledUserObjList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local v18    # "requiredUserObjList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local v22    # "fdWrapper":Lcnf$a;
    .restart local v23    # "isLimitOptimizeClosed":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-wide v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$orgId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget v5, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$deptId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-wide v6, v6, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$labelId:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-object v8, v8, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-boolean v9, v9, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$multiple:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-object v10, v10, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$limitTips:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget v11, v11, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$maxUsers:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-boolean v12, v12, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$responseUserOnly:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-boolean v13, v13, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$enableAutoJumpDepart:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-boolean v14, v14, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$enableAutoJumpDepart:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-object v15, v15, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$filter:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$pickedDeptsList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$disabledDeptsList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$requiredDeptsList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-static/range {v2 .. v21}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$3800(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;JIJLjava/lang/String;ZLjava/lang/String;IZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 1896
    .end local v22    # "fdWrapper":Lcnf$a;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-wide v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$orgId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget v5, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$deptId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-wide v6, v6, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$labelId:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-object v8, v8, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-boolean v9, v9, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$multiple:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-object v10, v10, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$limitTips:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget v11, v11, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$maxUsers:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-boolean v12, v12, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$responseUserOnly:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-boolean v13, v13, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$enableAutoJumpDepart:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-boolean v14, v14, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$enableAutoJumpDepart:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-object v15, v15, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$filter:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$pickedDeptsList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$disabledDeptsList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$requiredDeptsList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-static/range {v2 .. v21}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$3800(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;JIJLjava/lang/String;ZLjava/lang/String;IZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_1
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 1908
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-wide v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$orgId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget v4, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$deptId:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-wide v5, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$labelId:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-object v7, v7, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-boolean v8, v8, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$multiple:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-object v9, v9, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$limitTips:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget v10, v10, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$maxUsers:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-boolean v11, v11, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$responseUserOnly:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-boolean v12, v12, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$enableAutoJumpDepart:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-boolean v13, v13, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$enableAutoJumpDepart:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    iget-object v14, v14, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$filter:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$pickedDeptsList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$disabledDeptsList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$requiredDeptsList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v20}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$3800(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;JIJLjava/lang/String;ZLjava/lang/String;IZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1909
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1904
    return-void
.end method
