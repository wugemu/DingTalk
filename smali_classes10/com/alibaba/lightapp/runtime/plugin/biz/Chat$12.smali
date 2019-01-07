.class Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$12;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/Plugin$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->modifyGroupDesc(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 893
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$12;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$12;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 896
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$12;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$12;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$4900(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$12;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$12;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$12;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$4302(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Ljava/lang/String;)Ljava/lang/String;

    .line 899
    return-void
.end method

.method public bridge synthetic onReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 893
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$12;->onReceived(Landroid/content/Intent;)V

    return-void
.end method
