.class Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$7;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->createGroup(JLjava/util/List;)V
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

.field final synthetic val$orgId:J

.field final synthetic val$profileList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$7;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$7;->val$profileList:Ljava/util/List;

    iput-wide p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$7;->val$orgId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 610
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$7;->onDataReceived(Ljava/util/List;)V

    return-void
.end method

.method public onDataReceived(Ljava/util/List;)V
    .locals 5
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

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 613
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 614
    .local v0, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$7;->val$profileList:Ljava/util/List;

    .line 615
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    .line 614
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 617
    .end local v0    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$7;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$7;->val$orgId:J

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$7;->val$profileList:Ljava/util/List;

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;JLjava/util/List;)V

    .line 618
    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 626
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$7;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$7;->val$orgId:J

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$7;->val$profileList:Ljava/util/List;

    invoke-static {v0, v2, v3, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;JLjava/util/List;)V

    .line 627
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 622
    return-void
.end method
