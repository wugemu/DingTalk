.class Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->chooseFriends(ZIJILjava/util/List;Ljava/util/List;Ljava/util/HashMap;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)V
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
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

.field final synthetic val$changeDept:Z

.field final synthetic val$corpId:J

.field final synthetic val$departmentId:I

.field final synthetic val$departmentList:Ljava/util/List;

.field final synthetic val$disabledItem:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;

.field final synthetic val$fromSource:Ljava/lang/String;

.field final synthetic val$isNeedSearch:Z

.field final synthetic val$isShowLocal:Z

.field final synthetic val$limitTips:Ljava/lang/String;

.field final synthetic val$maxChooseLimit:I

.field final synthetic val$multiple:Z

.field final synthetic val$profileDisabledList:Ljava/util/List;

.field final synthetic val$profileList:Ljava/util/List;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;Ljava/util/List;ZJIILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    .prologue
    .line 659
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$disabledItem:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$profileDisabledList:Ljava/util/List;

    iput-boolean p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$multiple:Z

    iput-wide p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$corpId:J

    iput p7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$maxChooseLimit:I

    iput p8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$departmentId:I

    iput-object p9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$profileList:Ljava/util/List;

    iput-object p10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$departmentList:Ljava/util/List;

    iput-object p11, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$title:Ljava/lang/String;

    iput-object p12, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$limitTips:Ljava/lang/String;

    iput-boolean p13, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$isNeedSearch:Z

    iput-boolean p14, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$isShowLocal:Z

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$fromSource:Ljava/lang/String;

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$changeDept:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 659
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->onDataReceived(Ljava/util/List;)V

    return-void
.end method

.method public onDataReceived(Ljava/util/List;)V
    .locals 20
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
    .line 662
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-eqz p1, :cond_3

    .line 663
    const/16 v17, 0x0

    .line 665
    .local v17, "orgEmployeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 666
    .local v19, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v19, :cond_0

    .line 670
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$disabledItem:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$disabledItem:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;->uidDisabledMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 671
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$disabledItem:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;->uidDisabledMap:Ljava/util/HashMap;

    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "orgEmployeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    check-cast v17, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 674
    .restart local v17    # "orgEmployeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    :cond_1
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lhrk;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v18

    .line 675
    .local v18, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$profileDisabledList:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 677
    .end local v18    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v19    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$disabledItem:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$profileDisabledList:Ljava/util/List;

    iput-object v3, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;->profileDisabledList:Ljava/util/List;

    .line 679
    .end local v17    # "orgEmployeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$multiple:Z

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$corpId:J

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$maxChooseLimit:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$departmentId:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$profileList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$departmentList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$disabledItem:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$limitTips:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$isNeedSearch:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$isShowLocal:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$fromSource:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$changeDept:Z

    move/from16 v16, v0

    invoke-static/range {v2 .. v16}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1300(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;ZJIILjava/util/List;Ljava/util/List;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)V

    .line 680
    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 688
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$multiple:Z

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$corpId:J

    iget v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$maxChooseLimit:I

    iget v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$departmentId:I

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$profileList:Ljava/util/List;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$departmentList:Ljava/util/List;

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$disabledItem:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$title:Ljava/lang/String;

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$limitTips:Ljava/lang/String;

    iget-boolean v11, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$isNeedSearch:Z

    iget-boolean v12, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$isShowLocal:Z

    iget-object v13, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$fromSource:Ljava/lang/String;

    iget-boolean v14, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$8;->val$changeDept:Z

    invoke-static/range {v0 .. v14}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1300(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;ZJIILjava/util/List;Ljava/util/List;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)V

    .line 689
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 684
    return-void
.end method
