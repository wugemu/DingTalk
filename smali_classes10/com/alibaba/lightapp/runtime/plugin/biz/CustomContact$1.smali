.class Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;
.super Ljava/lang/Object;
.source "CustomContact.java"

# interfaces
.implements Lhqu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->towerChoose(Lcom/alibaba/lightapp/runtime/ActionRequest;Z)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;

.field final synthetic val$allUserList:Ljava/util/List;

.field final synthetic val$chooseLimit:I

.field final synthetic val$disableUserList:Ljava/util/List;

.field final synthetic val$isMultiple:Z

.field final synthetic val$orgId:J

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

.field final synthetic val$selectedUserList:Ljava/util/List;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$userStaffIdNameMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;Lcom/alibaba/lightapp/runtime/ActionRequest;Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$userStaffIdNameMap:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$allUserList:Ljava/util/List;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$selectedUserList:Ljava/util/List;

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$disableUserList:Ljava/util/List;

    iput-boolean p7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$isMultiple:Z

    iput-wide p8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$orgId:J

    iput p10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$chooseLimit:I

    iput-object p11, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$title:Ljava/lang/String;

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
    .line 206
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x4

    .line 207
    invoke-static {v3, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 206
    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->access$500(Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 148
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->onSuccess(Ljava/util/HashMap;)V

    return-void
.end method

.method public onSuccess(Ljava/util/HashMap;)V
    .locals 15
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    .local p1, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v5, 0x3

    const-string/jumbo v6, "Empty employee list"

    .line 153
    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 152
    invoke-static {v0, v1, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 201
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v5, 0x3

    const-string/jumbo v6, "Invalid context"

    .line 159
    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 158
    invoke-static {v0, v1, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_3

    .line 164
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->access$302(Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 167
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 168
    .local v13, "staffNoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 169
    .local v10, "userIdNampMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 170
    .local v12, "orgEmployeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    iget-object v0, v12, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgStaffId:Ljava/lang/String;

    iget-wide v4, v12, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;)Ljava/util/HashMap;

    move-result-object v0

    iget-wide v4, v12, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v12, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgStaffId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$userStaffIdNameMap:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$userStaffIdNameMap:Ljava/util/HashMap;

    iget-object v4, v12, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgStaffId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 174
    iget-wide v4, v12, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$userStaffIdNameMap:Ljava/util/HashMap;

    iget-object v5, v12, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgStaffId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v10, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 177
    .end local v12    # "orgEmployeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    :cond_5
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$allUserList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [J

    .line 178
    .local v3, "allUids":[J
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$allUserList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_7

    .line 179
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$allUserList:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 180
    .local v14, "value":Ljava/lang/Long;
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_3
    aput-wide v0, v3, v11

    .line 178
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 180
    :cond_6
    const-wide/16 v0, 0x0

    goto :goto_3

    .line 182
    .end local v14    # "value":Ljava/lang/Long;
    :cond_7
    const/4 v8, 0x0

    .line 183
    .local v8, "selectedUids":[J
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$selectedUserList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 184
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$selectedUserList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v8, v0, [J

    .line 185
    const/4 v11, 0x0

    :goto_4
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$selectedUserList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_9

    .line 186
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$selectedUserList:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 187
    .restart local v14    # "value":Ljava/lang/Long;
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_5
    aput-wide v0, v8, v11

    .line 185
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 187
    :cond_8
    const-wide/16 v0, 0x0

    goto :goto_5

    .line 190
    .end local v14    # "value":Ljava/lang/Long;
    :cond_9
    const/4 v9, 0x0

    .line 191
    .local v9, "disableUids":[J
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$disableUserList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 192
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$disableUserList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v9, v0, [J

    .line 193
    const/4 v11, 0x0

    :goto_6
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$disableUserList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_b

    .line 194
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$disableUserList:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 195
    .restart local v14    # "value":Ljava/lang/Long;
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_7
    aput-wide v0, v9, v11

    .line 193
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 195
    :cond_a
    const-wide/16 v0, 0x0

    goto :goto_7

    .line 198
    .end local v14    # "value":Ljava/lang/Long;
    :cond_b
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$isMultiple:Z

    if-eqz v0, :cond_c

    const/4 v2, 0x0

    .line 199
    .local v2, "chooseMode":I
    :goto_8
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;

    .line 200
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;->access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$orgId:J

    iget v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$chooseLimit:I

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/CustomContact$1;->val$title:Ljava/lang/String;

    invoke-virtual/range {v0 .. v10}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;I[JJILjava/lang/String;[J[JLjava/util/HashMap;)V

    goto/16 :goto_0

    .line 198
    .end local v2    # "chooseMode":I
    :cond_c
    const/4 v2, 0x1

    goto :goto_8
.end method
