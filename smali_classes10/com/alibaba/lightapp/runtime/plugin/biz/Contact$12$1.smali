.class Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12$1;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->onLoadSuccess(Lhjl;)V
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
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;

.field final synthetic val$deptObjects:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;

    .prologue
    .line 1595
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12$1;->val$deptObjects:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1595
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12$1;->onDataReceived(Ljava/util/List;)V

    return-void
.end method

.method public onDataReceived(Ljava/util/List;)V
    .locals 12
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

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1598
    .local p1, "userProfileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-eqz p1, :cond_2

    .line 1599
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1601
    .local v9, "pickedUserObjList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1602
    .local v11, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    invoke-static {v11}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 1603
    .local v0, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v0, :cond_0

    .line 1607
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1610
    .end local v0    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v11    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;

    iget-wide v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->val$orgId:J

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->val$title:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;

    iget-boolean v5, v5, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->val$multiple:Z

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->val$limitTips:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;

    iget v7, v7, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->val$maxUsers:I

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;

    iget-object v8, v8, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->val$filter:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12$1;->val$deptObjects:Ljava/util/List;

    invoke-static/range {v1 .. v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$3600(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;JLjava/lang/String;ZLjava/lang/String;ILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;)V

    .line 1612
    .end local v9    # "pickedUserObjList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_2
    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;

    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;

    iget-wide v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->val$orgId:J

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;

    iget-object v4, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->val$title:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;

    iget-boolean v5, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->val$multiple:Z

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;

    iget-object v6, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->val$limitTips:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;

    iget v7, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->val$maxUsers:I

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;

    iget-object v8, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->val$filter:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12$1;->val$deptObjects:Ljava/util/List;

    invoke-static/range {v1 .. v10}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$3600(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;JLjava/lang/String;ZLjava/lang/String;ILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Ljava/util/List;Ljava/util/List;)V

    .line 1622
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1617
    return-void
.end method
