.class Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Lhqu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->complexSelectedPicker(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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

.field final synthetic val$deleteConfirmDesc:Ljava/lang/String;

.field final synthetic val$deleteConfirmTitle:Ljava/lang/String;

.field final synthetic val$deleteNeedConfirm:Z

.field final synthetic val$deptId:I

.field final synthetic val$disabledDeptsList:Ljava/util/List;

.field final synthetic val$disabledUsersList:Ljava/util/List;

.field final synthetic val$filter:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

.field final synthetic val$labelId:J

.field final synthetic val$limitTips:Ljava/lang/String;

.field final synthetic val$maxUsers:I

.field final synthetic val$mode:I

.field final synthetic val$multiple:Z

.field final synthetic val$orgId:J

.field final synthetic val$pickedDeptsList:Ljava/util/List;

.field final synthetic val$pickedUsersList:Ljava/util/List;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

.field final synthetic val$requiredDeptsList:Ljava/util/List;

.field final synthetic val$requiredUsersList:Ljava/util/List;

.field final synthetic val$responseUserOnly:Z

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;IJIJLjava/lang/String;ZLjava/lang/String;IZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    .prologue
    .line 2258
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    iput p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$mode:I

    iput-wide p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$orgId:J

    iput p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$deptId:I

    iput-wide p6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$labelId:J

    iput-object p8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$title:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$multiple:Z

    iput-object p10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$limitTips:Ljava/lang/String;

    iput p11, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$maxUsers:I

    iput-boolean p12, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$responseUserOnly:Z

    iput-object p13, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$filter:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    iput-object p14, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$pickedDeptsList:Ljava/util/List;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$disabledDeptsList:Ljava/util/List;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$requiredDeptsList:Ljava/util/List;

    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$deleteNeedConfirm:Z

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$deleteConfirmTitle:Ljava/lang/String;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$deleteConfirmDesc:Ljava/lang/String;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$pickedUsersList:Ljava/util/List;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$disabledUsersList:Ljava/util/List;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$requiredUsersList:Ljava/util/List;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

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
    .line 2316
    sget-object v0, Lcom/alibaba/lightapp/runtime/Plugin;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x4

    .line 2318
    invoke-static {v3, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 2317
    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$4200(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 2319
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2258
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->onSuccess(Ljava/util/HashMap;)V

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
    .line 2261
    .local p1, "uidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2263
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$mode:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$orgId:J

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$deptId:I

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$labelId:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$multiple:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$limitTips:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$maxUsers:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$responseUserOnly:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$filter:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$pickedDeptsList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$disabledDeptsList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$requiredDeptsList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$deleteNeedConfirm:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$deleteConfirmTitle:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;->val$deleteConfirmDesc:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v2 .. v23}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$4100(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;IJIJLjava/lang/String;ZLjava/lang/String;IZLcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2312
    :goto_0
    return-void

    .line 2267
    :cond_1
    new-instance v24, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2270
    .local v24, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$14;Ljava/util/HashMap;)V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method
