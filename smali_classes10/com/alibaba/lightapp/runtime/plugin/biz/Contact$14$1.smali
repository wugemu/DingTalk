.class Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->onSuccess(Ljava/util/HashMap;)V
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
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

.field final synthetic val$uidMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    .prologue
    .line 2270
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->val$uidMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2270
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->onDataReceived(Ljava/util/List;)V

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
    .line 2273
    .local p1, "userProfileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-eqz p1, :cond_4

    .line 2274
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2275
    .local v15, "pickedUserObjList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2276
    .local v16, "disabledUserObjList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 2280
    .local v17, "requiredUserObjList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
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

    .line 2281
    .local v26, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v26, :cond_0

    .line 2285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->val$uidMap:Ljava/util/HashMap;

    move-object/from16 v0, v26

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 2287
    .local v24, "orgEmployeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lhrk;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v25

    .line 2290
    .local v25, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$pickedUsersList:Ljava/util/List;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$pickedUsersList:Ljava/util/List;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2291
    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2292
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$disabledUsersList:Ljava/util/List;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$disabledUsersList:Ljava/util/List;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2293
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2294
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$requiredUsersList:Ljava/util/List;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$requiredUsersList:Ljava/util/List;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2295
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2298
    .end local v24    # "orgEmployeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    .end local v25    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v26    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$mode:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget-wide v4, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$orgId:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget v6, v6, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$deptId:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget-wide v7, v7, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$labelId:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget-object v9, v9, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget-boolean v10, v10, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$multiple:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget-object v11, v11, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$limitTips:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget v12, v12, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$maxUsers:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget-boolean v13, v13, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$responseUserOnly:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget-object v14, v14, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$filter:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$pickedDeptsList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$disabledDeptsList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$requiredDeptsList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$deleteNeedConfirm:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$deleteConfirmTitle:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$deleteConfirmDesc:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v2 .. v23}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$4100(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;IJIJLjava/lang/String;ZLjava/lang/String;IZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2300
    .end local v15    # "pickedUserObjList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v16    # "disabledUserObjList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v17    # "requiredUserObjList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_4
    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 23
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 2309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$mode:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget-wide v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$orgId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget v5, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$deptId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget-wide v6, v6, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$labelId:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget-object v8, v8, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget-boolean v9, v9, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$multiple:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget-object v10, v10, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$limitTips:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget v11, v11, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$maxUsers:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget-boolean v12, v12, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$responseUserOnly:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    iget-object v13, v13, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$filter:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$pickedDeptsList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$disabledDeptsList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$requiredDeptsList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$deleteNeedConfirm:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$deleteConfirmTitle:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$deleteConfirmDesc:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v1 .. v22}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$4100(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;IJIJLjava/lang/String;ZLjava/lang/String;IZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2310
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2305
    return-void
.end method
