.class Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$9;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/Plugin$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->createOrgPublicGroup(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/lightapp/runtime/Plugin$a",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

.field final synthetic val$orgId:J

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;JLcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 758
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    iput-wide p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$9;->val$orgId:J

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$9;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 761
    const-string/jumbo v1, "conversation_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 762
    .local v0, "conversationId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 763
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$9;->val$orgId:J

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$9$1;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$9$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$9;Ljava/lang/String;)V

    const-class v6, Lcma;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .line 797
    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$3900(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 763
    invoke-static {v3, v6, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-virtual {v2, v4, v5, v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(JLjava/lang/String;Lcma;)V

    .line 803
    :goto_0
    return-void

    .line 799
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    const/4 v2, 0x3

    const-string/jumbo v3, "null cid is returned"

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$9;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$4000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 800
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$9;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$3502(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic onReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 758
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$9;->onReceived(Landroid/content/Intent;)V

    return-void
.end method
