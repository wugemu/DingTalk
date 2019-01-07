.class Lcom/alibaba/lightapp/runtime/plugin/runtime/AuthorizeCookie$1;
.super Ljava/lang/Object;
.source "AuthorizeCookie.java"

# interfaces
.implements Lhqz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/runtime/AuthorizeCookie;->refresh(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/runtime/AuthorizeCookie;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/runtime/AuthorizeCookie;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/runtime/AuthorizeCookie;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/runtime/AuthorizeCookie$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/runtime/AuthorizeCookie;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/runtime/AuthorizeCookie$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/runtime/AuthorizeCookie$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/runtime/AuthorizeCookie;

    const-string/jumbo v1, "authorizeCookie.refresh fail"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/runtime/AuthorizeCookie$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/runtime/AuthorizeCookie;->access$100(Lcom/alibaba/lightapp/runtime/plugin/runtime/AuthorizeCookie;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/runtime/AuthorizeCookie$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/runtime/AuthorizeCookie;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/runtime/AuthorizeCookie;->access$200(Lcom/alibaba/lightapp/runtime/plugin/runtime/AuthorizeCookie;)Lhde$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "authorizeCookie.refresh fail"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lhde$a;->b([Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "uidTokenCookie"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/runtime/AuthorizeCookie$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/runtime/AuthorizeCookie;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/runtime/AuthorizeCookie$1;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/runtime/AuthorizeCookie;->access$000(Lcom/alibaba/lightapp/runtime/plugin/runtime/AuthorizeCookie;Ljava/lang/String;)V

    .line 37
    return-void
.end method
