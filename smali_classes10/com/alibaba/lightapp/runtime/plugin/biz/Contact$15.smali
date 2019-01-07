.class Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Lhqu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->externalComplexPicker(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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

.field final synthetic val$disabledUsersList:Ljava/util/List;

.field final synthetic val$limitTips:Ljava/lang/String;

.field final synthetic val$maxUsers:I

.field final synthetic val$multiple:Z

.field final synthetic val$orgId:J

.field final synthetic val$pickedUsersList:Ljava/util/List;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

.field final synthetic val$requiredUsersList:Ljava/util/List;

.field final synthetic val$showAddButton:Z

.field final synthetic val$showChannelFocusStates:Z

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;JLjava/lang/String;ZLjava/lang/String;IZZLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    .prologue
    .line 2860
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    iput-wide p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;->val$orgId:J

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;->val$title:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;->val$multiple:Z

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;->val$limitTips:Ljava/lang/String;

    iput p7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;->val$maxUsers:I

    iput-boolean p8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;->val$showAddButton:Z

    iput-boolean p9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;->val$showChannelFocusStates:Z

    iput-object p10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;->val$pickedUsersList:Ljava/util/List;

    iput-object p11, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;->val$disabledUsersList:Ljava/util/List;

    iput-object p12, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;->val$requiredUsersList:Ljava/util/List;

    iput-object p13, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

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
    .line 2917
    sget-object v0, Lcom/alibaba/lightapp/runtime/Plugin;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x4

    .line 2919
    invoke-static {v3, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 2918
    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$4400(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 2920
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2860
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;->onSuccess(Ljava/util/HashMap;)V

    return-void
.end method

.method public onSuccess(Ljava/util/HashMap;)V
    .locals 13
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

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "uidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;>;"
    const/4 v8, 0x0

    .line 2863
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2865
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;->val$orgId:J

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;->val$title:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;->val$multiple:Z

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;->val$limitTips:Ljava/lang/String;

    iget v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;->val$maxUsers:I

    iget-boolean v11, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;->val$showAddButton:Z

    iget-boolean v12, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;->val$showChannelFocusStates:Z

    move-object v9, v8

    move-object v10, v8

    invoke-static/range {v1 .. v12}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$4300(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;JLjava/lang/String;ZLjava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;ZZ)V

    .line 2913
    :goto_0
    return-void

    .line 2869
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2870
    .local v0, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2873
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$15;Ljava/util/HashMap;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method
