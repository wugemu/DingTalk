.class Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Lhqu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->complexPicker(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

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

.field final synthetic val$showRootOrg:Z

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;JIJLjava/lang/String;ZLjava/lang/String;IZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    .prologue
    .line 1847
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    iput-wide p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$orgId:J

    iput p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$deptId:I

    iput-wide p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$labelId:J

    iput-object p7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$title:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$multiple:Z

    iput-object p9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$limitTips:Ljava/lang/String;

    iput p10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$maxUsers:I

    iput-boolean p11, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$responseUserOnly:Z

    iput-boolean p12, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$showRootOrg:Z

    iput-boolean p13, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$enableAutoJumpDepart:Z

    iput-object p14, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$filter:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$pickedDeptsList:Ljava/util/List;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$disabledDeptsList:Ljava/util/List;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$requiredDeptsList:Ljava/util/List;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$pickedUsersList:Ljava/util/List;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$disabledUsersList:Ljava/util/List;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$requiredUsersList:Ljava/util/List;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

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
    .line 1920
    sget-object v0, Lcom/alibaba/lightapp/runtime/Plugin;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x4

    .line 1922
    invoke-static {v3, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 1921
    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$4000(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 1923
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1847
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->onSuccess(Ljava/util/HashMap;)V

    return-void
.end method

.method public onSuccess(Ljava/util/HashMap;)V
    .locals 25
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
    .line 1850
    .local p1, "uidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1852
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$orgId:J

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$deptId:I

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$labelId:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$multiple:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$limitTips:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$maxUsers:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$responseUserOnly:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$showRootOrg:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$enableAutoJumpDepart:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$filter:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$pickedDeptsList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$disabledDeptsList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;->val$requiredDeptsList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-static/range {v3 .. v22}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$3800(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;JIJLjava/lang/String;ZLjava/lang/String;IZZZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1916
    :goto_0
    return-void

    .line 1856
    :cond_1
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1857
    .local v24, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1860
    new-instance v23, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$13;Ljava/util/HashMap;)V

    .line 1911
    .local v23, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v3

    const-string/jumbo v4, "f_user_contact_choose_max_limit"

    invoke-virtual {v3, v4}, Lchx;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1912
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Ljava/util/List;Lcma;Z)V

    goto :goto_0

    .line 1914
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;Z)V

    goto :goto_0
.end method
