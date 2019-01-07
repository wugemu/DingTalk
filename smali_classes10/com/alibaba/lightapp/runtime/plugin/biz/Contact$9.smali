.class Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;
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

.field final synthetic val$uidMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/HashMap;Ljava/util/List;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;Ljava/util/List;ZJIILjava/util/List;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    .prologue
    .line 692
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$uidMap:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$profileList:Ljava/util/List;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$disabledItem:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$profileDisabledList:Ljava/util/List;

    iput-boolean p6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$multiple:Z

    iput-wide p7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$corpId:J

    iput p9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$maxChooseLimit:I

    iput p10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$departmentId:I

    iput-object p11, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$departmentList:Ljava/util/List;

    iput-object p12, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$title:Ljava/lang/String;

    iput-object p13, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$limitTips:Ljava/lang/String;

    iput-boolean p14, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$isNeedSearch:Z

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$isShowLocal:Z

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$fromSource:Ljava/lang/String;

    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$changeDept:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 692
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->onDataReceived(Ljava/util/List;)V

    return-void
.end method

.method public onDataReceived(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 695
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-eqz p1, :cond_2

    .line 696
    const/4 v0, 0x0

    .line 699
    .local v0, "orgEmployeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 700
    .local v2, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v2, :cond_0

    .line 704
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$uidMap:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    .line 705
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$uidMap:Ljava/util/HashMap;

    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "orgEmployeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 708
    .restart local v0    # "orgEmployeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    :cond_1
    invoke-static {v2, v0}, Lhrk;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    .line 710
    .local v1, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$profileList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 713
    .end local v0    # "orgEmployeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    .end local v1    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v2    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$disabledItem:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;->uidDisabledList:Ljava/util/List;

    new-instance v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9$1;

    invoke-direct {v5, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;Z)V

    .line 748
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
    .line 756
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$multiple:Z

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$corpId:J

    iget v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$maxChooseLimit:I

    iget v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$departmentId:I

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$profileList:Ljava/util/List;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$departmentList:Ljava/util/List;

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$disabledItem:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$title:Ljava/lang/String;

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$limitTips:Ljava/lang/String;

    iget-boolean v11, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$isNeedSearch:Z

    iget-boolean v12, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$isShowLocal:Z

    iget-object v13, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$fromSource:Ljava/lang/String;

    iget-boolean v14, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$9;->val$changeDept:Z

    invoke-static/range {v0 .. v14}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1300(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;ZJIILjava/util/List;Ljava/util/List;Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$DisabledItem;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)V

    .line 757
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 752
    return-void
.end method
